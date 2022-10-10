<?php

namespace App\Http\Controllers;

use App\Models\Order;
use Illuminate\Http\Request;
use Exception;

class OrderController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function index(Request  $request)
    {
        try {

            $limit = $request->get('limit');

            $consult = Order::paginate($limit);

            $orders = array(
                "_rel"		=> "orders",
                "_embedded" => array(
                    "orders" => $consult
                )
            );

            if(empty($consult))
                throw new Exception("No se encontraron registros");

            return response()->json(["response" => $orders], 200);

        } catch (Exception $e) {

            return returnExceptions($e);

        }
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        try {

            $request->validate([
                'name' => 'required|string|max:80',
                'email' => 'required|string|email|max:120',
                'mobile' => 'required|string|max:40',
                'id' => 'required|integer|exists:products'
            ]);

            $insertData = [
                "customer_name" => $request->input("name"), 
                "customer_email" => $request->input("email"), 
                "customer_mobile" => $request->input("mobile"),
                "id_product" => $request->input("id"),
                "status" => "CREATED"
            ];

            $order = Order::create($insertData);

            return response()->json(["message" => "Success", "order" => $order['id']], 200);

        } catch (Exception $e) {

            return returnExceptions($e);

        } 
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\Order  $order
     * @return \Illuminate\Http\Response
     */
    public static function show(Order $order)
    {
        try {
            
            if (empty($order))
                throw new Exception("Error Processing Request", 1);

            return response()->json($order, 200);

        } catch (Exception $e) {

            return returnExceptions($e);

        } 
            
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  $lookupColumn, $lookupValue, $arrayInsert
     * @return message
     */
    public function edit($lookupColumn, $lookupValue, $arrayInsert)
    {
        try {
            
            $order = Order::where($lookupColumn, $lookupValue)->first();

            if(empty($order))
                throw new Exception("No existe la orden" );
            
            $order->update($arrayInsert);

            return response()->json(["message" => "Success"], 200);

        } catch (Exception $e) {

            return returnExceptions($e);

        }
    }

    public static function showOnly()
    {
        try {
            
            $order = Order::all()->first();

            if(empty($order))
                throw new Exception("No hay ordenes");
            
            return response()->json($order, 200);

        } catch (Exception $e) {

            return returnExceptions($e);

        }
    }

}
