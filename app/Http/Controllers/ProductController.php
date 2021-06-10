<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Product;
use Illuminate\Support\Facades\Validator;

class ProductController extends Controller
{
    public function index(Request $request)
    {
        $random = $request->random;
        if($random){
            $products = Product::inRandomOrder()->paginate(5);
            return response()->json($products);
        }
        $products = Product::orderBy('id', 'desc')->paginate(5);
        return response()->json($products);
    }
  
    // add product
    public function add(Request $request)
    {
        Validator::make($request->all(), [
            'title' => 'required|unique:products|max:20',
            'description' => 'required|min:3|max:30',
            'quantity' => 'required|numeric|min:0|max:99',
            'price' => 'required|numeric|min:0|max:99'
        ])->validate();
       
        $product = new Product([
            'title' => $request->input('title'),
            'description' => $request->input('description'),
            'quantity' => $request->input('quantity'),
            'price' => $request->input('price'),
        ]);
        $product->save();
  
        return response()->json('product successfully added');
    }
  
    // edit product
    public function edit($id)
    {
        $product = Product::find($id);
        return response()->json($product);
    }
  
    // update product
    public function update($id, Request $request)
    {
        Validator::make($request->all(), [
            'title' => 'required|unique:products|max:24',
            'description' => 'required|min:3|max:24',
            'quantity' => 'required|numeric|min:0|max:99',
            'price' => 'required|numeric|min:0|max:99'
        ])->validate();
        
        $product = Product::find($id);
        $product->update($request->all());
  
        return response()->json('product successfully updated');
    }
  
    // delete product
    public function delete($id)
    {
        $product = Product::find($id);
        $product->delete();
  
        return response()->json('product successfully deleted');
    }
}
