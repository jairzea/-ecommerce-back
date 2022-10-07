<?php

namespace App\Http\Controllers;

use App\Models\Order;
use Illuminate\Support\Facades\DB;
use Illuminate\Http\Request;
use Dotenv\Dotenv;
use Dnetix\Redirection\PlacetoPay;
use Exception;

define('REFERENCE_INTERFIX', env('REFERENCE_INTERFIX'));
define('LOGIN', env('LOGIN'));
define('SECRET_KEY', env('SECRET_KEY'));
define('URL_REDIRECT', env('URL_REDIRECT'));
define('REST_TIMEOUT', env('REST_TIMEOUT'));
define('REST_CONNECT_TIMEOUT', env('REST_CONNECT_TIMEOUT'));
define('CURRENCY', env('CURRENCY'));

class PaymentController extends Controller
{

    private $placetopay;
     
    public function __construct(){

        $this->placetopay = new PlacetoPay([
            'login'   => LOGIN,
            'tranKey' => SECRET_KEY,
            'url'     => URL_REDIRECT,
            'rest'    => [
                'timeout' => REST_TIMEOUT,
                'connect_timeout' => REST_CONNECT_TIMEOUT,
            ]
            ]);
    }

    private static function createPaymentArray($orderId, $description = '')
    {

        try {
            
            $order = DB::table('order_summary_views')->where('id_orden', $orderId)->first();

            if (empty($order))
                throw new Exception("No existe orden con el id " . $orderId);

            $reference = $orderId . REFERENCE_INTERFIX . time();

            $paymentRequest = [
                'payment' => [
                    'reference' => $reference,
                    'description' => $description,
                    'amount' => [
                        'currency' => CURRENCY,
                        'total' => $order->precio_producto,
                    ],
                ],
                'expiration'=> date('c', strtotime('+2 days')),
                'returnUrl' => 'https://dev.placetopay.com/redirection/ProcesarPagoAjax.php?reference=' . $reference,
                'ipAddress' => '127.0.0.1',
                'userAgent' => 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/52.0.2743.116 Safari/537.36',
            ];

            return $paymentRequest;

        } catch (Exception $e) {
            
            return returnExceptions($e);

        }
    }

    public function createPaymentSession(Request $request)
    {

        try {

            $request->validate([
                'order' => 'required|integer'
            ]);
            
            $paymentRequest = self::createPaymentArray($request->input('order'), $request->input('description'));

            $response = $this->placetopay->request($paymentRequest);

            if ($response->isSuccessful()) {

                $sessionPlacetopay = array(
                    'requestId' => $response->requestId,
                    'processUrl' => $response->processUrl,
                    'reference' => $paymentRequest['payment']['reference'],
                );
    
                $updateOrder = new OrderController();
                $updateOrder->edit('id', $request->input('order'), $sessionPlacetopay);

                return response()->json(["message" => 'success', 'processUrl' => $response->processUrl], 200);
                    
            } else {
    
                return response()->json($response->status()->message(), 500);
    
            }

        } catch (Exception $e) {
            
            return returnExceptions($e);

        }

    }

    /**
     * Procesar respuesta de pasarela de pago
     */
    public function responseHandlingPlaceToPay(Request $request)
    {
        
        try {

            $request->validate([
                'reference' => 'required|exists:orders'
            ]);
            
            $referencia = $request->get("reference");

            $order = Order::where("reference", $referencia)->first();

            $response = $this->placetopay->query($order->requestId);

            if ($response->isSuccessful()) {

                $responsePlacetopay = self::paymentResponseArray($response);
                
                $updateOrder = new OrderController();
                $updateOrder->edit('id', $order->id, $responsePlacetopay);

                return response()->json(["message" => 'success'], 200);
        
            } else {

                return response()->json($response->status()->message(), 500);

            }
        } catch (Exception $e) {
            
            return returnExceptions($e);

        }
        
    }
    
    public static function paymentResponseArray($response)
    {
        switch ($response->status()->status()) {

            case 'APPROVED':
                
                $data = [
                          'status'     => $response->payment[0]->status()->status(),
                          'message'    => $response->payment[0]->status()->message(),
                          'date_trans' => $response->payment[0]->status()->date(),
                          'method'     => $response->payment[0]->paymentMethodName(),
                          'ref_int'    => $response->payment[0]->internalReference(),
                          'bank'       => $response->payment[0]->issuerName()
                        ];

                break;

            default:
                
                $data = [
                          'status'     => $response->status()->status(),
                          'message'    => $response->status()->message(),
                          'date_trans' => $response->status()->date(),
                          'method'     => '',
                          'ref_int'    => '',
                          'bank'       => ''
                        ];
                    
                break;
        }

        return $data;
    }
}
