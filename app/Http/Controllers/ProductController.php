<?php

namespace App\Http\Controllers;

use App\Models\Product;
use Illuminate\Http\Request;
use Exception;

class ProductController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function index(Request $request)
    {
        try {

            $limit = $request->get('limit');

            $consult = Product::paginate($limit);

            $users = array(
                "_rel"		=> "products",
                "_embedded" => array(
                    "products" => $consult
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
                'name' => 'required|string|unique:products',
                'description' => 'required|string',
                'price' => 'required|string',
                'img' => 'required|string'
            ]);

            $insertData = [
                "name" => $request->input("name"), 
                "description" => $request->input("description"), 
                "price" => $request->input("price"),
                "img" => $request->input("img")
            ];

            Product::create($insertData);

            return response()->json(["message" => "Success"], 200);

        } catch (Exception $e) {

            return returnExceptions($e);

        }
    }

}
