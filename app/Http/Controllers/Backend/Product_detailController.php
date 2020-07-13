<?php

namespace App\Http\Controllers\Backend;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\Attr;
use App\Models\Product;
use App\Models\Product_detail;
use App\Models\Product_attr;
class Product_detailController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
 }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        //
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        $product=Product::find($id);
        dd($product);
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        $product=Product::find($id);
        $attr= Attr::all();
        $product_detail=Product_detail::all();
        return view('backend.product_detail.edit',compact('attr','product','product_detail'));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        $product=Product::find($id);
        // dd($request);
     //    foreach ($request->sku as $key => $value) {
     //     Product_detail::create([
     //        'id_product' =>$id,
     //        'sku' =>$value,
     //        'size' =>$request->size[$key],
     //        'price' =>$request->price[$key],
     //        'discount' =>$request->discount[$key],
     //        'quantity' =>$request->quantity[$key],
     //    ]);

     // }
      $request->validate([
            'sku' => 'required|unique:products|max:255',
            'size' => 'required',
            'price' => 'required',
            'discount' => 'required',
            'quantity' => 'required',
        ],[
            'sku.required' =>'Mã sản phẩm không được bỏ trống',
            'sku.unique' =>'Mã sản phẩm đã tồn tại',
            'sku.max' =>'Mã sản phẩm không vượt quá 255 kí tự',
            'size.required' =>'Size không được bỏ trống',
            'price.required' =>'Giá sản phẩm không được bỏ trống',
            'discount.required' =>'Phần trăm giảm giá không được bỏ trống',
            'quantity.required' =>'Số lượng sản phẩm không được bỏ trống',
        ]);
      $product_detail =Product_detail::create([
            'id_product' =>$id,
            'sku' =>$request->sku,
            'id_attr' =>$request->size,
            'price' =>$request->price,
            'discount' =>$request->discount,
            'quantity' =>$request->quantity,
            'status' =>$request->status,
        ]);
     return redirect()->back()->with('success','Thêm mới thành công');
 }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        $product_detail= Product_detail::find($id);
        $product_detail->delete();
        return redirect()->back()->with('success','Xóa thành công');
    }
}
