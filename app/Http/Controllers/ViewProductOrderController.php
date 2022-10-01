<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\ViewProductOrder;
use Exception;

class ViewProductOrderController extends Controller
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

            $consult = ViewProductOrder::paginate($limit);

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
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function showUserMail(Request $request)
    {
        try {

            $request->validate([
                'email' => 'required|string|email',
            ]);

            $search = ViewProductOrder::where("email", trim($request->get('email')))->get();

            if(count($search) <= 0)
                throw new Exception("No existe una orden con el email: ".$request->get('email'));

            $limit = $request->get('limit');

            $consult = ViewProductOrder::where("email", trim($request->get('email')))->paginate($limit);

            $users = array(
                "_rel"		=> "userOrders",
                "_embedded" => array(
                    "userOrders" => $consult
                )
            );

            if(empty($consult))
                throw new Exception("No se encontraron registros");

            return response()->json(["response" => $users], 200);

        } catch (Exception $e) {

            return returnExceptions($e);

        }
    }
}
