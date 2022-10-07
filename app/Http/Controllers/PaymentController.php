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
    // public function createSession()
    // {
    //     $curl = curl_init();

    //     if (function_exists('random_bytes')) {
    //         $nonce = bin2hex(random_bytes(16));
    //     } elseif (function_exists('openssl_random_pseudo_bytes')) {
    //         $nonce = bin2hex(openssl_random_pseudo_bytes(16));
    //     } else {
    //         $nonce = mt_rand();
    //     }

    //     $seed = date("c");
    //     $login = env('LOGIN');
    //     $secretKey = env('SECRET_KEY');

    //     $nonceBase64 = base64_encode($nonce);

    //     $tranKey = base64_encode(sha1($nonce . $seed . $secretKey, true));

    //     curl_setopt_array($curl, [
    //         CURLOPT_URL => "https://checkout-test.placetopay.com/api/session",
    //         CURLOPT_RETURNTRANSFER => true,
    //         CURLOPT_ENCODING => "",
    //         CURLOPT_MAXREDIRS => 10,
    //         CURLOPT_TIMEOUT => 30,
    //         CURLOPT_HTTP_VERSION => CURL_HTTP_VERSION_1_1,
    //         CURLOPT_CUSTOMREQUEST => "POST",
    //         // CURLOPT_POSTFIELDS => "{\n  \"locale\": \"es_CO\",\n  \"auth\": {\n    \"login\": \"$login\",\n    \"tranKey\": \"$tranKey\",\n    \"nonce\": \"$nonceBase64\",\n    \"seed\": \"$seed\"\n  },\n  \"payment\": {\n    \"reference\": \"1122334455\",\n    \"description\": \"Prueba\",\n    \"amount\": {\n      \"currency\": \"USD\",\n      \"total\": 100\n    }\n  },\n  \"expiration\": \"2021-12-30T00:00:00-05:00\",\n  \"returnUrl\": \"https://dnetix.co/p2p/client\",\n  \"ipAddress\": \"127.0.0.1\",\n  \"userAgent\": \"PlacetoPay Sandbox\"\n}",


    //         CURLOPT_POSTFIELDS => '{
    //             "locale": "es_CO",  
    //             "auth": {
    //                     "login": "'.$login.'",
    //                     "tranKey": "'.$tranKey.'",
    //                     "nonce": "'.$nonce.'",
    //                     "seed": "'.$seed.'"
    //               },
    //               "payment": {
    //                     "reference": "1122334455",
    //                     "description": "Prueba",
    //                     "amount": {
    //                       "currency": "COP",
    //                       "total": 100
    //                 }
    //           },
    //               "expiration": "2021-12-30T00:00:00-05:00",
    //               "returnUrl": "https://dnetix.co/p2p/client",
    //               "ipAddress": "127.0.0.1",
    //               "userAgent": "PlacetoPay Sandbox"
    //         }',
    //         CURLOPT_HTTPHEADER => [
    //             "Content-Type: application/json"
    //         ],
    //     ]);

    //     $response = curl_exec($curl);
    //     $err = curl_error($curl);

    //     curl_close($curl);

    //     if ($err) {
    //     echo "cURL Error #:" . $err;
    //     } else {
    //     echo $response;
    //     }
    // }

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
                
                if($response->status()->status() == 'PENDING'){

                    $responsePlacetopay = ['status' => $response->status()->status()];

                }else{

                    $responsePlacetopay = [
                        'status' => $response->payment[0]->status()->status(),
                        'message' => $response->payment[0]->status()->message(),
                        'date_trans' => $response->payment[0]->status()->date(),
                        'method' => $response->payment[0]->paymentMethodName(),
                        'ref_int' => $response->payment[0]->internalReference(),
                        'bank' => $response->payment[0]->issuerName()
                    ];
                }
    
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
}
