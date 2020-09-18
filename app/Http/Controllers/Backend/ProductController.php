<?php

namespace App\Http\Controllers\Backend;

use App\Http\Controllers\Controller;
use App\Models\Attr;
use App\Models\Category;
use App\Models\Img_pro;
use App\Models\Product;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\File;
use Illuminate\Support\Facades\Storage;
use Illuminate\Validation\Rule;

class ProductController extends Controller {
	/**
	 * Display a listing of the resource.
	 *
	 * @return \Illuminate\Http\Response
	 */
	public function index() {
		$product = Product::orderby('created_at', 'desc')->get();
		$category = Category::all();
		return view('backend.product.index', compact('product', 'category'));
	}

	/**
	 * Show the form for creating a new resource.
	 *
	 * @return \Illuminate\Http\Response
	 */
	public function create() {
		$category = Category::all();
		$attr = Attr::all();
		return view('backend.product.create', compact('category', 'attr'));
	}

	/**
	 * Store a newly created resource in storage.
	 *
	 * @param  \Illuminate\Http\Request  $request
	 * @return \Illuminate\Http\Response
	 */
	public function store(Request $request) {
		// dd($request->all());
		// $file_name = $request->image->getClientOriginalName();
		// // đẩy file vào thư mục uploads
		// $request->image->move(base_path('public/uploads/'),$file_name);
		$image = trim($request->image, url('/public/uploads/'));

		$request->validate([
			'name' => 'required|unique:products|max:255',
			'slug' => 'required|unique:products|max:255',
			'sku' => 'required|unique:products|max:255',
			'id_cate' => 'required',
			'image' => 'required',

		], [
			'name.required' => 'Tên sản phẩm không được bỏ trống',
			'name.unique' => 'Tên sản phẩm đã tồn tại',
			'name.max' => 'Tên sản phẩm không vượt quá 255 kí tự',
			'slug.required' => 'Slug không được bỏ trống',
			'slug.unique' => 'Slug đã tồn tại',
			'slug.max' => 'Slug không vượt quá 255 kí tự',
			'sku.required' => 'Mã sản phẩm không được bỏ trống',
			'sku.unique' => 'Mã sản phẩm đã tồn tại',
			'sku.max' => 'Mã sản phẩm không vượt quá 255 kí tự',
			'id_cate.required' => 'Tên danh mục không được bỏ trống',
			'image.required' => 'Ảnh không được bỏ trống',

		]);
		$product = Product::create([
			'name' => $request->name,
			'slug' => $request->slug,
			'sku' => $request->sku,
			'id_cate' => $request->id_cate,
			'image' => $image,
			'description' => $request->description,
			'meta_title' => $request->meta_title,
			'meta_keyword' => $request->meta_keyword,
			'meta_desc' => $request->meta_desc,
			'status' => $request->status,
			'featured' => $request->featured,
		]);
		$images = json_decode($request->images);
		if ($images != '') {
			foreach ($images as $key => $value) {
				$anh = trim($value, url('/public/uploads/'));
				Img_pro::create([
					'id_product' => $product->id,
					'image' => $anh,
				]);
			}
		}
		return redirect()->route('product_detail_backend', $product->id)->with('success', 'Thêm mới thành công');
	}

	/**
	 * Display the specified resource.
	 *
	 * @param  int  $id
	 * @return \Illuminate\Http\Response
	 */
	public function show($id) {
		//
	}

	/**
	 * Show the form for editing the specified resource.
	 *
	 * @param  int  $id
	 * @return \Illuminate\Http\Response
	 */
	public function edit($id) {
		$product = Product::find($id);
		$category = Category::all();
		$attr = Attr::all();
		$img_pro = Img_pro::where('id_product', $id)->get();

		// dd($img_pro);
		return view('backend.product.edit', compact('category', 'product', 'img_pro', 'attr'));
	}

	/**
	 * Update the specified resource in storage.
	 *
	 * @param  \Illuminate\Http\Request  $request
	 * @param  int  $id
	 * @return \Illuminate\Http\Response
	 */
	public function update(Request $request, $id) {

		$product = Product::find($id);
		if ($request->image == '') {
			$image = $product->image;
		} else {
			$image = trim($request->image, url('/public/uploads/'));
		}
		$request->validate([
			'name' => ['required', 'max:255', Rule::unique('products')->ignore($id)],
			'slug' => ['required', 'max:255', Rule::unique('products')->ignore($id)],
			'sku' => ['required', 'max:255', Rule::unique('products')->ignore($id)],

		], [
			'name.required' => 'Tên sản phẩm không được bỏ trống',
			'name.unique' => 'Tên sản phẩm đã tồn tại',
			'name.max' => 'Tên sản phẩm không vượt quá 255 kí tự',
			'slug.required' => 'Slug không được bỏ trống',
			'slug.unique' => 'Slug đã tồn tại',
			'slug.max' => 'Slug không vượt quá 255 kí tự',
			'sku.required' => 'Mã sản phẩm không được bỏ trống',
			'sku.unique' => 'Tên sản phẩm đã tồn tại',
			'sku.max' => 'Mã sản phẩm không vượt quá 255 kí tự',
		]);
		$product->update([
			'name' => $request->name,
			'slug' => $request->slug,
			'sku' => $request->sku,
			'id_cate' => $request->id_cate,
			'image' => $image,
			'description' => $request->description,
			'meta_title' => $request->meta_title,
			'meta_keyword' => $request->meta_keyword,
			'meta_desc' => $request->meta_desc,
			'status' => $request->status,
			'featured' => $request->featured,
		]);
		if ($request->images != '') {
			$img_pro = Img_pro::where('id_product', $id)->delete();
			$images = json_decode($request->images);
			foreach ($images as $key => $value) {
				$anh = trim($value, url('/public/uploads/'));
				Img_pro::create([
					'id_product' => $product->id,
					'image' => $anh,
				]);
			};
		}
		return redirect()->route('product_detail_backend', $product->id)->with('success', 'Cập nhật thành công');
	}

	/**
	 * Remove the specified resource from storage.
	 *
	 * @param  int  $id
	 * @return \Illuminate\Http\Response
	 */
	public function destroy($id) {
		$product = Product::findOrFail($id);
		$img_pro = Img_pro::where('id_product', $id)->get();
		foreach ($img_pro as $value) {
			$img_path = app_path("public/uploads/{$value->image}");
			if (File::exists($img_path)) {
				unlink($img_path);
				// File::delete($img_path);
			}
		}
		$image_path = app_path("public/uploads/{$product->image}");
		if (File::exists($image_path)) {
			File::delete($image_path);
		}
		$product->delete();
		return redirect()->route('product.index')->with('success', 'Xóa thành công');
	}
}
