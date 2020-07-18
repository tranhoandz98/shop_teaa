<?php

namespace App\Http\Controllers\Backend;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\Banner;

class BannerController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $banner=Banner::all();
        return view('backend.banner.index',compact('banner'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        $banner=Banner::all();
        return view('backend.banner.create',compact('banner'));
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $image= trim($request->image,url('/public/uploads/'));
        $request->validate([
            'name' => 'required',
            'image' => 'required',         
        ],[
            'name.required' =>'Tên banner không được bỏ trống',
            'image.required' =>'Hình ảnh không được bỏ trống',
        ]);
        
        $banner= Banner::create([
            'name'=>$request->name,
            'slug'=>$request->slug,
            'image'=>$image,
            'content'=>$request->content,
            'status'=>$request->status
        ]);
        return redirect()->route('banner.index')->with('success','Thêm mới thành công');

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
        $banner=Banner::find($id);
        return view('backend.banner.edit',compact('banner'));
        
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
        $banner=Banner::find($id);
        if ($request->image=='') {
            $image=$banner->image;
        }else{
           $image= trim($request->image,url('/public/uploads/'));
       }
        $request->validate([
            'name' => ['required'],                 
        ],[
            'name.required' =>'Tên banner không được bỏ trống',                   
        ]);
        $banner->update([
            'name'=>$request->name,
            'slug'=>$request->slug,
            'image'=>$image,
            'content'=>$request->content,
            'status'=>$request->status,
            
        ]);
        return redirect()->route('banner.index')->with('success','Cập nhật thành công');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        $banner=Banner::find($id);
        $banner->delete();
        return redirect()->route('banner.index')->with('success','Xóa thành công');
    }
}
