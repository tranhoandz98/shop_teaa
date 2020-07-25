@extends('frontend.master')
@section('title','Danh sách sản phẩm')
@section('main')
<!-- Breadcrumb Area Start -->
<div class="breadcrumb-area bg-12 text-center headingt">
    <div class="container">
        <h1>Shop</h1>
        <nav aria-label="breadcrumb">
            <ul class="breadcrumb">
                <li class="breadcrumb-item"><a href="index.html">Home</a></li>
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
                    <div class="sidebar-widget">
                        <h3>Danh mục</h3>
                        <div class="sidebar-widget-option-wrapper">
                            @foreach ($category as $item)
                            <div class="sidebar-widget-option">
                                <input type="checkbox" id="{{$item->name}}{{$item->id}}">
                                <label for="{{$item->name}}{{$item->id}}">{{$item->name}} <span>(5)</span></label>
                            </div>
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
                                <input type="checkbox" id="{{$value->value}}{{$value->id}}">
                                <label for="{{$value->value}}{{$value->id}}">{{$value->value}} <span>(4)</span></label>
                            </div>
                            @endforeach
                        </div>
                    </div>
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
                            <span>Showing 1 to 9 of 11 (2 Pages) </span>
                        </div>
                    </div>
                    <div class="shop-results-wrapper">
                        <div class="shop-results"><span>Show:</span>
                            <div class="shop-select">
                                <select name="number" id="number">
                                    <option value="9">9</option>
                                    <option value="25">25</option>
                                    <option value="50">50</option>
                                    <option value="75">75</option>
                                    <option value="100">100</option>
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
                </div>
                <div class="ht-product-shop tab-content text-center">
                    <div class="tab-pane active show fade" id="grid" role="tabpanel">
                        <div class="custom-row">
                            @foreach($products as $value)
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
                                                    <a href="#"><i class="icon icon-Restart"></i></a>
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
                                        <h5><a href="product-details.html">{{$value->name}}</a></h5>
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
                            @endforeach

                            
                        </div>
                    </div>
                    <div class="tab-pane fade text-left" id="list" role="tabpanel">
                        @foreach($products as $value)
                        <div class="single-product-item">
                            <div class="product-image image-cus">
                                <a href="product-details.html">
                                    <img src="{{url('public/uploads')}}/{{$value->image}}" alt="">
                                    @if($value->discount>0)
                                    <div class="pro-percent text-center hide">-{{$value->discount}}%</div>
                                    @endif
                                </a>  
                                <div class="product-hover">
                                    <ul class="hover-icon-list">
                                        <li>
                                            <a href="wishlist.html"><i class="icon icon-Heart"></i></a>
                                        </li>
                                        <li>
                                            <a href="#"><i class="icon icon-Restart"></i></a>
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
                                <h5><a href="product-details.html">{{$value->name}}</a></h5>
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
                        @endforeach
                        <div class="single-product-item">
                            <div class="product-image">
                                <a href="product-details.html">
                                    <img src="{{url('public')}}/frontend/img/product/1.jpg" alt="">
                                </a>  
                                <div class="product-hover">
                                    <ul class="hover-icon-list">
                                        <li>
                                            <a href="wishlist.html"><i class="icon icon-Heart"></i></a>
                                        </li>
                                        <li>
                                            <a href="#"><i class="icon icon-Restart"></i></a>
                                        </li>
                                        <li><a href="{{url('public')}}/frontend/img/product/1.jpg" data-toggle="modal" data-target="#productModal"><i class="icon icon-Search"></i></a></li>
                                    </ul>
                                </div>
                            </div>
                            <div class="product-text">
                                <h5><a href="product-details.html">Farm Fresh Black Grape</a></h5>
                                <div class="product-rating">
                                    <i class="fa fa-star-o color"></i>
                                    <i class="fa fa-star-o color"></i>
                                    <i class="fa fa-star-o color"></i>
                                    <i class="fa fa-star-o"></i>
                                    <i class="fa fa-star-o"></i>
                                </div>
                                <div class="pro-price">
                                    <span class="new-price">$110.00</span> 
                                    <span class="old-price">$122.00</span>
                                </div>
                                <p>Go for bananas with very small patches of black and used to make banana bread or served with single cream and sugar.</p>
                                <button type="button" class="p-cart-btn default-btn">Add to cart</button>
                            </div>
                        </div>

                    </div>
                </div>
                {{ $products->links() }}
                {{-- <div class="pagination-wrapper">
                    <p>Showing 1 to 9 of {{ $paginator->total() }} ({{ $paginator->lastPage() }} Pages)</p>
                    <nav aria-label="navigation">
                        <ul class="pagination">
                            <li class="page-item active"><a class="page-link" href="#">1</a></li>
                            <li class="page-item"><a class="page-link" href="#">2</a></li>
                            <li class="page-item"><a class="page-link" href="#">></a></li>
                            <li class="page-item"><a class="page-link" href="#">>|</a></li>
                        </ul>
                    </nav>
                </div> --}}
            </div>

        </div>
    </div>
</div>
<!-- Shop Area End -->

@stop