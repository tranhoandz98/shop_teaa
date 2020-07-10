<?php

namespace App\Http\Controllers\Backend;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\Category;
use App\Models\Product;
use App\Models\Attr;
use App\Models\Img_pro;
use App\Models\Product_attr;
use Illuminate\Validation\Rule;
use Illuminate\Support\Facades\Storage;
use Illuminate\Support\Facades\File; 
class ProductController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $product= Product::all();
        $category = Category::all();
        return view('backend.product.index',compact('product','category'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        $category=Category::all();
        return view('backend.product.create',compact('category'));
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        // dd($request->all());
        // $file_name = $request->image->getClientOriginalName();
        // // đẩy file vào thư mục uploads
        // $request->image->move(base_path('public/uploads/'),$file_name);
        
        $image= trim($request->image,url('/public/uploads/'));

        $request->validate([
            'name' => 'required|unique:products|max:255',
            'sku' => 'required|unique:products|max:255',
            'id_cate' => 'required',
            // 'image' => 'required|ends_with:jpg,jpeg,gif,png',
            // 'price' => 'required|numeric',
            // 'discount' => 'required|numeric',
            // 'quantity' => 'required|numeric',
        ],[
            'name.required' =>'Tên sản phẩm không được bỏ trống',
            'name.unique' =>'Tên sản phẩm đã tồn tại',
            'name.max' =>'Tên sản phẩm không vượt quá 255 kí tự',
            'sku.required' =>'Mã sản phẩm không được bỏ trống',
            'sku.unique' =>'Mã sản phẩm đã tồn tại',
            'sku.max' =>'Mã sản phẩm không vượt quá 255 kí tự',
            'id_cate.required' =>'Tên danh mục không được bỏ trống',
            'image.required' =>'Ảnh không được bỏ trống',
            'image.ends_with' =>'Ảnh phải là đuôi jpg,jpeg,gif,png',
            // 'price.required' =>'Giá sản phẩm không được bỏ trống',
            // 'discount.required' =>'Phần trăm giảm giá không được bỏ trống',
            // 'quantity.required' =>'Số lượng sản phẩm không được bỏ trống',
            // 'price.numeric' =>'Giá sản phẩm phải là sô',
            // 'discount.numeric' =>'Phần trăm giảm giá phải là sô',
            // 'quantity.numeric' =>'Số lượng sản phẩm phải là sô',

        ]);
        $product =Product::create([
            'name'=>$request->name,
            'slug'=>$request->slug,
            'sku'=>$request->sku,
            'id_cate'=>$request->id_cate,
            // 'price'=>$request->price,
            // 'discount'=>$request->discount,
            // 'quantity'=>$request->quantity,
            'image'=>$image,
            'description'=>$request->description,
            'meta_title'=>$request->meta_title,
            'meta_keyword'=>$request->meta_keyword,
            'meta_desc'=>$request->meta_desc,
            'status'=>$request->status,
        ]);

        $images=json_decode($request->images);
        if ($images!=''){
           foreach ($images as $key => $value) {
            $anh = trim($value,url('/public/uploads/'));
            Img_pro::create([
                'id_product' => $product->id,
                'image' =>$anh
            ]);
        }
    }

    return redirect()->route('product.index')->with('success','Thêm mới thành công');
}

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        //
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
        $category = Category::all();
        $img_pro= Img_pro::where('id_product',$id)->get();
        
        // dd($img_pro);
        return view('backend.product.edit',compact('category','product','img_pro'));
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
        // dd($request->all());
        $product=Product::find($id);
        if ($request->image=='') {
            $image=$product->image;
        }else{
           $image= trim($request->image,url('/public/uploads/'));
       }
       $request->validate([
        'name' => ['required','max:255',Rule::unique('products')->ignore($id)],
        'sku' => 'required|max:255',
        'id_cate' => 'required',
        // 'price' => 'required|numeric',
        // 'discount' => 'required|numeric',
        // 'quantity' => 'required|numeric',
    ],[
        'name.required' =>'Tên sản phẩm không được bỏ trống',
        'sku.required' =>'Mã sản phẩm không được bỏ trống',
        'name.unique' =>'Tên sản phẩm đã tồn tại',
        'name.max' =>'Tên sản phẩm không vượt quá 255 kí tự',
        'sku.max' =>'Mã sản phẩm không vượt quá 255 kí tự',
        // 'price.required' =>'Giá sản phẩm không được bỏ trống',
        // 'discount.required' =>'Phần trăm giảm giá không được bỏ trống',
        // 'quantity.required' =>'Số lượng sản phẩm không được bỏ trống',
        // 'price.numeric' =>'Giá sản phẩm phải là sô',
        // 'discount.numeric' =>'Phần trăm giảm giá phải là sô',
        // 'quantity.numeric' =>'Số lượng sản phẩm phải là sô',


    ]);
       $product->update([
        'name'=>$request->name,
        'slug'=>$request->slug,
        'sku'=>$request->sku,
        'id_cate'=>$request->id_cate,
        // 'price'=>$request->price,
        // 'discount'=>$request->discount,
        // 'quantity'=>$request->quantity,
        'image'=>$image,
        'description'=>$request->description,
        'meta_title'=>$request->meta_title,
        'meta_keyword'=>$request->meta_keyword,
        'meta_desc'=>$request->meta_desc,
        'status'=>$request->status,
    ]);
       if ($request->images!=''){
        $img_pro=Img_pro::where('id_product',$id)->delete();
        $images=json_decode($request->images);
        foreach ($images as $key => $value) {
            $anh = trim($value,url('/public/uploads/'));
            Img_pro::create([
                'id_product' => $product->id,
                'image' =>$anh
            ]);
        };
    }
    return redirect()->route('product.index')->with('success','Cập nhật thành công');
}

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        $product=Product::find($id);
        $product->delete();
        return redirect()->route('product.index')->with('success','Xóa thành công');
    }
}
