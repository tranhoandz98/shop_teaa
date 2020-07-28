@extends('frontend.master')
@section('title','Danh sách sản phẩm')
@section('main')
<!-- Breadcrumb Area Start -->
<div class="breadcrumb-area bg-12 text-center headingt">
    <div class="container">
        <h1>Shop</h1>
        <nav aria-label="breadcrumb">
            <ul class="breadcrumb">
                <li class="breadcrumb-item"><a href="{{ route('home') }}">Home</a></li>
                <li class="breadcrumb-item active" aria-current="page">Shop</li>
            </ul>
        </nav>
    </div>
</div>
<!-- Breadcrumb Area End -->
<!-- Shop Area Start -->
<div class="shop-area pt-110 pb-100 bg-gray mb-95">
    <div class="container">
        <div class="row">
            <div class="col-xl-3 col-lg-4">
                <div class="sidebar-wrapper">
                    {{-- <h3>Layered Navigation</h3> --}}
                    <form action="{{ route('shop') }}" method="post">
                        @csrf
                        <div class="sidebar-widget">
                            <h3>Danh mục</h3>
                            <div class="sidebar-widget-option-wrapper">
                                @foreach($category_pro as $value)
                                @if($value->parent_id==0)
                                <ul>
                                    <li ><a href="{{ route('danh-muc', ['slug'=>$value->slug]) }}" class="font-weight-bold">
                                        - {{$value->name}} <span>(5)</span>
                                    </a>
                                    @foreach($category_pa as $valu)
                                    @if($valu->parent_id==$value->id)
                                    <ul>
                                        <li class="parent_cate"> <a href="{{ route('danh-muc', ['slug'=>$valu->slug]) }}">
                                            + {{$valu->name}} <span>(5)</span></a>
                                        </li>
                                    </ul>
                                    @endif
                                    @endforeach
                                </li>
                                
                            </ul>
                            
                            @endif
                            @endforeach
                        </div>
                    </div>
                    <div class="sidebar-widget price-widget">
                        <h3>Lọc theo giá</h3>
                        <div class="price-slider-container">
                            <div id="slider-range"></div>
                            <div class="price_slider_amount">
                                <div class="slider-values">
                                    <input type="text" id="amount" name="price"  placeholder="Add Your Price" /> 
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="sidebar-widget">
                        <h3>Size</h3>
                        <div class="sidebar-widget-option-wrapper">
                            @foreach($attr as $value)
                            <div class="sidebar-widget-option">
                                <input type="checkbox" id="{{$value->value}}{{$value->id}}" name="attr" value="{{$value->id}}">
                                <label for="{{$value->value}}{{$value->id}}">{{$value->value}} <span>(4)</span></label>
                            </div>
                            @endforeach
                        </div>
                    </div>
                    <button type="submit" id="submit" class="btn bg-green text-white">Gửi</button>
                    {{-- <input type="submit" id="submit"> --}}
                </div>
                <div class="sidebar-banner-img">
                    <a href="#"><img src="{{url('public')}}/frontend/img/banner/6.png" alt=""></a>
                </div>
            </div>
            <div class="col-xl-9 col-lg-8">
                <div class="ht-product-tab">
                    <div class="ht-tab-content">
                        <div class="nav" role="tablist">
                            <a class="active grid" href="#grid" data-toggle="tab" role="tab" aria-selected="true" aria-controls="grid"><i class="fa fa-th"></i></a>
                            <a class="list" href="#list" data-toggle="tab" role="tab" aria-selected="false" aria-controls="list"><i class="fa fa-list"></i></a>
                        </div>
                        <div class="shop-items">
                            <span>Showing {{ $products->firstItem() }} to {{ $products->lastItem() }} of {{ $products->total() }} ({{ $products->lastPage() }} Pages)
                            </span>
                        </div>
                    </div>
                    <div class="shop-results-wrapper">
                        <div class="shop-results"><span>Show:</span>
                            <div class="shop-select">
                                <select name="number" id="number">
                                    <option value="6">6</option>
                                    <option value="9">9</option>
                                    <option value="15">15</option>
                                    <option value="30">30</option>
                                </select>
                            </div>
                        </div>
                        <div class="shop-results"><span>Sắp xếp:</span>
                            <div class="shop-select sort-sx">
                                <select name="sort" id="sort">
                                    <option value="position">Sắp xếp mặc định</option>
                                    <option value="p-name">Sắp xếp theo mới nhất</option>
                                    <option value="p-price">Sắp xếp theo giá tăng dần</option>
                                    <option value="p-price">Sắp xếp theo giá giảm dần</option>
                                </select>
                            </div>
                        </div>
                    </div>
                </form>
            </div>
            <div class="ht-product-shop tab-content text-center">
                <div class="tab-pane active show fade" id="grid" role="tabpanel">
                    <div class="custom-row">
                        @foreach($products as $value)
                        @if ($value->id_detail!=0)
                        <div class="custom-col">
                            <div class="single-product-item">
                                <div class="product-image image-cus">
                                    <a href="{{ route('product_detail',['slug'=>$value->slug,'id_detail'=>$value->id_detail]) }}">
                                        <img src="{{url('public/uploads')}}/{{$value->image}}" alt="">
                                        @if($value->discount>0)
                                        <div class="pro-discount text-center">-{{$value->discount}}%</div>
                                        @endif
                                    </a>  
                                    <div class="product-hover">
                                        <ul class="hover-icon-list">
                                            <li>
                                                <a href="wishlist.html"><i class="icon icon-Heart"></i></a>
                                            </li>
                                            <li>
                                                <a href="{{ route('shop') }}"><i class="icon icon-Restart"></i></a>
                                            </li>
                                            <li><a href="{{url('public')}}/frontend/img/product/1.jpg" data-toggle="modal" data-target="#productModal"><i class="icon icon-Search"></i></a></li>
                                        </ul>
                                        <button type="button" class="p-cart-btn">Thêm vào giỏ hàng</button>
                                    </div>
                                </div>
                                <div class="product-text">
                                    <div class="product-rating">
                                        <i class="fa fa-star-o color"></i>
                                        <i class="fa fa-star-o color"></i>
                                        <i class="fa fa-star-o color"></i>
                                        <i class="fa fa-star-o"></i>
                                        <i class="fa fa-star-o"></i>
                                    </div>
                                    <h5><a href="{{ route('product_detail',['slug'=>$value->slug,'id_detail'=>$value->id_detail]) }}">{{$value->name}}</a></h5>
                                    @if($value->discount>0)
                                    <div class="pro-price">
                                        <span class="new-price">{{number_format($value->price-($value->price*$value->discount/100))}}đ</span> 
                                        <span class="old-price">{{number_format($value->price)}}đ</span>
                                    </div>
                                    @else
                                    <div class="pro-price">
                                        <span class="new-price">{{number_format($value->price)}}đ</span>
                                    </div>
                                    @endif
                                </div>
                            </div>
                        </div>
                        @endif
                        @endforeach
                    </div>
                </div>
                <div class="tab-pane fade text-left" id="list" role="tabpanel">
                    @foreach($products as $value)
                    @if ($value->id_detail!=0)
                    <div class="single-product-item">
                        <div class="product-image image-cus">
                            <a href="product-details.html">
                                <img src="{{url('public/uploads')}}/{{$value->image}}" alt="">
                                @if($value->discount>0)
                                <div class="pro-discount text-center hide">-{{$value->discount}}%</div>
                                @endif
                            </a>  
                            <div class="product-hover">
                                <ul class="hover-icon-list">
                                    <li>
                                        <a href="wishlist.html"><i class="icon icon-Heart"></i></a>
                                    </li>
                                    <li>
                                        <a href="{{ route('shop') }}"><i class="icon icon-Restart"></i></a>
                                    </li>
                                    <li><a href="{{url('public')}}/frontend/img/product/1.jpg" data-toggle="modal" data-target="#productModal"><i class="icon icon-Search"></i></a></li>
                                </ul>
                                <button type="button" class="p-cart-btn">Thêm vào giỏ hàng</button>
                            </div>
                        </div>
                        <div class="product-text">
                            <div class="product-rating">
                                <i class="fa fa-star-o color"></i>
                                <i class="fa fa-star-o color"></i>
                                <i class="fa fa-star-o color"></i>
                                <i class="fa fa-star-o"></i>
                                <i class="fa fa-star-o"></i>
                            </div>
                            <h5><a href="{{ route('product_detail',['slug'=>$value->slug,'id_detail'=>$value->id_detail]) }}">{{$value->name}}</a></h5>
                            @if($value->discount>0)
                            <div class="pro-price">
                                <span class="new-price">{{number_format($value->price-($value->price*$value->discount/100))}}đ</span> 
                                <span class="old-price">{{number_format($value->price)}}đ</span>
                            </div>
                            @else
                            <div class="pro-price">
                                <span class="new-price">{{number_format($value->price)}}đ</span>
                            </div>
                            @endif
                            <div class="text-desc">
                                <p>{{$value->meta_desc}}</p>
                            </div>
                            <div class="pro-btn">
                                <button type="button" class="p-cart-btn default-btn">Add to cart</button>
                            </div>
                        </div>
                    </div>
                    @endif
                    @endforeach
                </div>
            </div>
            {{-- {{ $products->links() }} --}}
            @if ($products->hasPages())
            <div class="pagination-wrapper">
                <p>Showing {{ $products->firstItem() }} to {{ $products->lastItem() }} of {{ $products->total() }} ({{ $products->lastPage() }} Pages)</p>
                <nav aria-label="navigation">
                    <ul class="pagination">
                        @if ($products->currentPage()>1)
                        <li class="page-item"><a class="page-link" href="{{ $products->previousPageUrl() }}"><</a></li>
                        @endif
                        @for ($i = 1; $i <= $products->lastPage(); $i++)
                        
                        <li class="page-item active"><a class="page-link" href="{{ $products->url($i) }}">{{ $i }}</a></li>
                        @endfor
                        @if ($products->currentPage()<$products->lastPage())
                        <li class="page-item"><a class="page-link" href="{{ $products->nextPageUrl() }}">></a></li>
                        <li class="page-item"><a class="page-link" href="{{ $products->url($products->lastPage())}}">>|</a></li>
                        @endif
                    </ul>
                </nav>
            </div>
            @endif
        </div>
    </div>
</div>
</div>
<!-- Shop Area End -->
@stop