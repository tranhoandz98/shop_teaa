<?php

namespace App\Http\Controllers\Backend;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\Config;

class ConfigController extends Controller
{
    /**
    * Display a listing of the resource.
    *
    * @return \Illuminate\Http\Response
    */
   public function index()
   {
       $config=Config::all();
       return view('backend.config.index',compact('config'));
   }

   /**
    * Show the form for creating a new resource.
    *
    * @return \Illuminate\Http\Response
    */
   public function create()
   {
       $config=Config::all();
       return view('backend.config.create',compact('config'));
   }

   /**
    * Store a newly created resource in storage.
    *
    * @param  \Illuminate\Http\Request  $request
    * @return \Illuminate\Http\Response
    */
   public function store(Request $request)
   {

       $request->validate([
           'name' => 'required',
           'value' => 'required',
                  
       ],[
           'name.required' =>'Tên config không được bỏ trống',
           'value.required' =>'Giá trị không được bỏ trống',
           
       ]);
       
       $config= Config::create([
           'name'=>$request->name,
           'slug'=>$request->slug,
           'value'=>$request->value,
           'status'=>$request->status
       ]);
       return redirect()->route('config.index')->with('success','Thêm mới thành công');

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
       $config=Config::find($id);
       return view('backend.config.edit',compact('config'));
       
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
    $config=Config::find($id);
       $request->validate([
           'name' => ['required'],                 
       ],[
           'name.required' =>'Tên config không được bỏ trống',                   
       ]);
       $config->update([
           'name'=>$request->name,
           'slug'=>$request->slug,
           'value'=>$request->value,
           'status'=>$request->status,
           
       ]);
       return redirect()->route('config.index')->with('success','Cập nhật thành công');
   }

   /**
    * Remove the specified resource from storage.
    *
    * @param  int  $id
    * @return \Illuminate\Http\Response
    */
   public function destroy($id)
   {
       $config=Config::find($id);
       $config->delete();
       return redirect()->route('config.index')->with('success','Xóa thành công');
   }
}
