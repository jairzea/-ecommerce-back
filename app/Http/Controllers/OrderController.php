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

            $users = array(
                "_rel"		=> "orders",
                "_embedded" => array(
                    "orders" => $consult
                )
            );

            if(empty($consult))
                throw new Exception("No se encontraron registros");

            return response()->json(["response" => $users], 200);

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

            Order::create($insertData);

            return response()->json(["message" => "Success"], 200);

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
    public function show(Order $order)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Models\Order  $order
     * @return \Illuminate\Http\Response
     */
    public function edit(Order $order)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Models\Order  $order
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, Order $order)
    {
        //
    }

}
