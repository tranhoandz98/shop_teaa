@extends('frontend.master')
@section('title','Chi tiết sản phẩm')
@section('main')
<!-- Header Area End -->
<!-- Breadcrumb Area Start -->
<div class="breadcrumb-area bg-12 text-center">
    <div class="container">
        <h1>Chi tiết sản phẩm</h1>
        <nav aria-label="breadcrumb">
            <ul class="breadcrumb">
                <li class="breadcrumb-item"><a href="{{ route('home') }}">Home</a></li>
                <li class="breadcrumb-item"><a href="{{ route('shop') }}">Shop</a></li>
                <li class="breadcrumb-item active" aria-current="page">{{ $product->name }}</li>
            </ul>
        </nav>
    </div>
</div>
<!-- Breadcrumb Area End -->
<!-- Product DEtails Area Start -->
<div class="product-detials-area bg-gray pt-110">
    <div class="container">
        <div class="row">
            <div class="col-lg-5 col-md-5">
                <div class="product-image-slider d-flex flex-column">
                    <!--Product Tab Content Start-->
                    <div class="tab-content product-large-image-list">
                        <div class="tab-pane fade show active" id="product-slide1" role="tabpanel" aria-labelledby="product-slide-tab-1">
                            <div class="single-product-img easyzoom img-full">
                                <a href="{{url('public/uploads')}}/{{ $product->image }}"><img src="{{url('public/uploads')}}/{{ $product->image }}" class="img-fluid" alt=""></a>
                            </div>
                        </div>
                        @foreach ($img_pro as $value)
                        <div class="tab-pane fade" id="product-slide{{ $loop->index+1+1 }}" role="tabpanel" aria-labelledby="product-slide-tab-{{ $loop->index+1+1 }}">
                            <div class="single-product-img easyzoom img-full">
                                <a href="{{url('public/uploads')}}/{{ $value->image }}"><img src="{{url('public/uploads')}}/{{ $value->image }}" class="img-fluid" alt=""></a>
                            </div>
                        </div>
                        @endforeach
                    </div>
                    <!--Product Content End-->
                    <!--Product Tab Menu Start-->
                    <div class="product-small-image-list"> 
                        <div class="nav small-image-slider-single-product-tabstyle-3" role="tablist">
                            <div class="single-small-image img-full">
                                <a data-toggle="tab" id="product-slide-tab-1" href="#product-slide1"><img src="{{url('public/uploads')}}/{{ $product->image }}" class="img-fluid" alt=""></a>
                            </div>
                            @foreach ($img_pro as $value)
                            <div class="single-small-image img-full">
                                <a data-toggle="tab" id="product-slide-tab-{{ $loop->index+1+1 }}" href="#product-slide{{ $loop->index+1+1 }}"><img src="{{url('public/uploads')}}/{{ $value->image }}" class="img-fluid" alt=""></a>
                            </div>
                            @endforeach
                        </div>
                    </div>
                    <!--Product Tab Menu End-->


                </div>
            </div>
            <div class="col-lg-7 col-md-7">
                <div class="product-details-text">
                    <h3>{{$product->name}}</h3>
                    <div class="p-rating-review">
                        <div class="product-rating">
                            <i class="fa fa-star-o color"></i>
                            <i class="fa fa-star-o color"></i>
                            <i class="fa fa-star-o color"></i>
                            <i class="fa fa-star-o"></i>
                            <i class="fa fa-star-o"></i>
                        </div>
                    </div>
                    @if($product_detail_id->discount>0)
                    <div class="pro-detail-discount text-center">-{{$product_detail_id->discount}}%</div>
                    <h4>
                        {{number_format($product_detail_id->price-($product_detail_id->price*$product_detail_id->discount/100))}}đ 
                        <span class="old-price">{{number_format($product_detail_id->price)}}đ</span>
                    </h4>
                    @else
                    <h4>
                        {{number_format($product_detail_id->price)}}đ
                    </h4>
                    @endif

                    <p>{{$product->meta_desc}}</p>
                    <h5><i class="fa fa-check"></i>{{$product_detail_id->quantity}} in stock</h5>
                    <strong>Size:</strong>
                    <div class="mt-2 mb-2">
                        @foreach ($product_detail as $value)
                        @if ($product_detail_id->attrs->name=='size')
                        <a class="btn text-white mr-2 {{ $value->id==$product_detail_id->id?'btn-success':'btn-green' }}" href="{{ route('product_detail',['slug'=>$product->slug,'id_detail'=>$value->id]) }}">{{$value->attrs->value}}</a>
                        @else
                        <a class="btn text-white mr-2 {{ $value->id==$product_detail_id->id?'btn-success':'btn-green' }}" href="{{ route('product_detail',['slug'=>$product->slug,'id_detail'=>$value->id]) }}">{{$value->attrs->value}}g</a>
                        @endif
                        @endforeach
                    </div>

                    <form action="#" method="post">
                        <div class="add-cart-product">
                            <input type="number" placeholder="1">
                            <button type="button" class="default-btn">Add to cart</button>
                            <button type="button"><i class="icon icon-Heart"></i></button>
                            <button type="button"><i class="icon icon-Restart"></i></button>
                        </div>
                        <div class="product-tag-cat">
                            <div class="single-tag-cat">
                                <span class="p-d-title">Categories:</span>  
                                <a href="#">{{$product->categories->name}}</a>,
                            </div>
                        </div>
                        <div class="product-share">
                            <span class="p-d-title">Share this product</span>
                            <ul class="p-social-links">
                                <li><a href="#"><i class="fa fa-facebook"></i></a></li>
                                <li><a href="#"><i class="fa fa-twitter"></i></a></li>
                                <li><a href="#"><i class="fa fa-pinterest"></i></a></li>
                                <li><a href="#"><i class="fa fa-google"></i></a></li>
                                <li><a href="#"><i class="fa fa-linkedin"></i></a></li>
                            </ul>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- Product DEtails Area End -->
<!-- Product Review Tab Area Start -->
<div class="product-review-tab-area bg-gray pt-90 pb-105">
    <div class="container scroll-area">
        <div class="p-d-tab-container">
            <div class="p-tab-btn">
                <div class="nav" role="tablist">
                    <a class="active" href="#tab1" data-toggle="tab" role="tab" aria-selected="true" aria-controls="tab1">Mô tả sản phẩm</a>
                    <a href="#tab2" data-toggle="tab" role="tab" aria-selected="false" aria-controls="tab2">Đánh giá (2)</a>
                </div>
            </div>
            <div class="p-d-tab tab-content">
                <div class="tab-pane active show fade" id="tab1" role="tabpanel">
                    <div class="tab-items">
                        <div class="product-desc-text">
                            {!!$product->description!!}
                        </div>
                    </div>
                </div>
                <div class="tab-pane fade scroll-area" id="tab2" role="tabpanel">
                    <div class="tab-items">
                        <div class="p-review-wrapper">
                            <h3></h3>
                            <div class="style__RatingInfo-sc-103p4dk-1 escmEg"><div class="rating"><h4 class="title">Đánh giá trung bình</h4><p class="score">4/5</p><p class="Stars__Wrapper-sc-1t6kjxa-0 iQZcjJ" style="font-size: 20px;"><i class="icomoon icomoon-star"></i><i class="icomoon icomoon-star"></i><i class="icomoon icomoon-star"></i><i class="icomoon icomoon-star"></i><i class="icomoon icomoon-star disable"></i></p><a href="/combo-5-chai-thuy-tinh-nap-day-300ml-p25932632/nhan-xet" class="number">(21 nhận xét)</a></div><div><div class="star-progress-bar"><p class="star-number"><span>5</span> <i class="icomoon icomoon-star"></i></p><div class="progress-bar"><div class="progress progress-5" style="width: 58%;"></div></div><p class="percent">58%</p></div><div class="star-progress-bar"><p class="star-number"><span>4</span> <i class="icomoon icomoon-star"></i></p><div class="progress-bar"><div class="progress progress-4" style="width: 20%;"></div></div><p class="percent">20%</p></div><div class="star-progress-bar"><p class="star-number"><span>3</span> <i class="icomoon icomoon-star"></i></p><div class="progress-bar"><div class="progress progress-3" style="width: 4%;"></div></div><p class="percent">4%</p></div><div class="star-progress-bar"><p class="star-number"><span>2</span> <i class="icomoon icomoon-star"></i></p><div class="progress-bar"><div class="progress progress-2" style="width: 9%;"></div></div><p class="percent">9%</p></div><div class="star-progress-bar"><p class="star-number"><span>1</span> <i class="icomoon icomoon-star"></i></p><div class="progress-bar"><div class="progress progress-1" style="width: 9%;"></div></div><p class="percent">9%</p></div></div><div><h4 class="title">Chia sẻ nhận xét về sản phẩm</h4><button>Viết nhận xét của bạn</button></div></div>
                            <div class="single-review-item">
                                <div class="review-logo">
                                    <img src="{{url('public')}}/frontend/img/icon/logo.jpg" alt="">
                                </div>
                                <div class="p-review-text">
                                    <div class="rating-number">
                                        <i class="fa fa-star color"></i>
                                        <i class="fa fa-star color"></i>
                                        <i class="fa fa-star color"></i>
                                        <i class="fa fa-star color"></i>
                                        <i class="fa fa-star color"></i>
                                    </div>
                                    <span class="p-review-info"><span>admin</span> – March 23, 2018</span>
                                    <p>Lorem et placerat vestibulum, metus nisi posuere nisl, in accumsan elit odio quis mi.</p>
                                </div>
                            </div>
                            <div class="single-review-item">
                                <div class="review-logo">
                                    <img src="{{url('public')}}/frontend/img/icon/logo.jpg" alt="">
                                </div>
                                <div class="p-review-text">
                                    <div class="rating-number">
                                        <i class="fa fa-star color"></i>
                                        <i class="fa fa-star color"></i>
                                        <i class="fa fa-star color"></i>
                                        <i class="fa fa-star color"></i>
                                        <i class="fa fa-star"></i>
                                    </div>
                                    <span class="p-review-info"><span>admin</span> – March 23, 2018</span>
                                    <p>Lorem et placerat vestibulum, metus nisi posuere nisl, in accumsan elit odio quis mi.</p>
                                </div>
                            </div>
                        </div>
                        <form action="#" method="post" class="rating-form">
                            <h5>Add your rating</h5>
                            <div class="submit-rating">
                                <i class="fa fa-star-o"></i>
                                <i class="fa fa-star-o"></i>
                                <i class="fa fa-star-o"></i>
                                <i class="fa fa-star-o"></i>
                                <i class="fa fa-star-o"></i>
                            </div>
                            <label for="r-textarea">Your Review</label>
                            <textarea name="review" id="r-textarea" cols="30" rows="10"></textarea>
                            <label for="r-name">Name *</label>
                            <input type="text" placeholder="" id="r-name">
                            <label for="r-email">Email *</label>
                            <input type="email" placeholder="" id="r-email">
                            <button type="button" class="default-btn">Submit</button>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- Product Review Tab Area End -->
<!-- Protuct Area Start -->
<div class="product-area bg-gray pb-80 mb-95 related-product">
    <div class="container">
        <div class="section-title text-center">
            <div class="section-img d-flex justify-content-center">
                <img src="{{url('public')}}/frontend/img/icon/title.png" alt="">
            </div>
            <h2><span>Organic </span>Related products</h2>
        </div>
    </div>
    <div class="container text-center">
        <div class="product-carousel">
            <div class="custom-col">
                <div class="single-product-item">
                    <div class="product-image">
                        <a href="shop.html">
                            <img src="{{url('public')}}/frontend/img/product/20.jpg" alt="">
                        </a>  
                        <div class="product-hover">
                            <ul class="hover-icon-list">
                                <li>
                                    <a href="wishlist.html"><i class="icon icon-Heart"></i></a>
                                </li>
                                <li>
                                    <a href="#"><i class="icon icon-Restart"></i></a>
                                </li>
                                <li><a href="{{url('public')}}/frontend/img/product/20.jpg" data-toggle="modal" data-target="#productModal"><i class="icon icon-Search"></i></a></li>
                            </ul>
                            <button type="button" class="p-cart-btn">Add to cart</button>
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
                        <h5><a href="shop.html">Juicy Grapes</a></h5>
                        <div class="pro-price">
                            <span class="new-price">$86.00</span> 
                            <span class="old-price">$92.00</span>
                        </div>
                    </div>
                </div>
            </div>
            <div class="custom-col">
                <div class="single-product-item">
                    <div class="product-image">
                        <a href="shop.html">
                            <img src="{{url('public')}}/frontend/img/product/2.jpg" alt="">
                        </a>  
                        <div class="product-hover">
                            <ul class="hover-icon-list">
                                <li>
                                    <a href="wishlist.html"><i class="icon icon-Heart"></i></a>
                                </li>
                                <li>
                                    <a href="#"><i class="icon icon-Restart"></i></a>
                                </li>
                                <li><a href="{{url('public')}}/frontend/img/product/2.jpg" data-toggle="modal" data-target="#productModal"><i class="icon icon-Search"></i></a></li>
                            </ul>
                            <button type="button" class="p-cart-btn">Add to cart</button>
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
                        <h5><a href="shop.html">Fresh Banana</a></h5>
                        <div class="pro-price">
                            <span class="new-price">$40.00</span> 
                            <span class="old-price">$43.00</span>
                        </div>
                    </div>
                </div>
            </div>
            <div class="custom-col">
                <div class="single-product-item">
                    <div class="product-image">
                        <a href="shop.html">
                            <img src="{{url('public')}}/frontend/img/product/3.jpg" alt="">
                        </a>  
                        <div class="product-hover">
                            <ul class="hover-icon-list">
                                <li>
                                    <a href="wishlist.html"><i class="icon icon-Heart"></i></a>
                                </li>
                                <li>
                                    <a href="#"><i class="icon icon-Restart"></i></a>
                                </li>
                                <li><a href="{{url('public')}}/frontend/img/product/3.jpg" data-toggle="modal" data-target="#productModal"><i class="icon icon-Search"></i></a></li>
                            </ul>
                            <button type="button" class="p-cart-btn">Add to cart</button>
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
                        <h5><a href="shop.html">Red Capsicum</a></h5>
                        <div class="pro-price">
                            <span class="new-price">$34.00</span> 
                            <span class="old-price">$37.00</span>
                        </div>
                    </div>
                </div>
            </div>
            <div class="custom-col">
                <div class="single-product-item">
                    <div class="product-image">
                        <a href="shop.html">
                            <img src="{{url('public')}}/frontend/img/product/4.jpg" alt="">
                        </a>  
                        <div class="product-hover">
                            <ul class="hover-icon-list">
                                <li>
                                    <a href="wishlist.html"><i class="icon icon-Heart"></i></a>
                                </li>
                                <li>
                                    <a href="#"><i class="icon icon-Restart"></i></a>
                                </li>
                                <li><a href="{{url('public')}}/frontend/img/product/4.jpg" data-toggle="modal" data-target="#productModal"><i class="icon icon-Search"></i></a></li>
                            </ul>
                            <button type="button" class="p-cart-btn">Add to cart</button>
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
                        <h5><a href="shop.html">Rippen Mango</a></h5>
                        <div class="pro-price">
                            <span class="new-price">$20.00</span> 
                            <span class="old-price">$28.00</span>
                        </div>
                    </div>
                </div>
            </div>
            <div class="custom-col">
                <div class="single-product-item">
                    <div class="product-image">
                        <a href="shop.html">
                            <img src="{{url('public')}}/frontend/img/product/5.jpg" alt="">
                        </a>  
                        <div class="product-hover">
                            <ul class="hover-icon-list">
                                <li>
                                    <a href="wishlist.html"><i class="icon icon-Heart"></i></a>
                                </li>
                                <li>
                                    <a href="#"><i class="icon icon-Restart"></i></a>
                                </li>
                                <li><a href="{{url('public')}}/frontend/img/product/5.jpg" data-toggle="modal" data-target="#productModal"><i class="icon icon-Search"></i></a></li>
                            </ul>
                            <button type="button" class="p-cart-btn">Add to cart</button>
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
                        <h5><a href="shop.html">Farm's Onion</a></h5>
                        <div class="pro-price">
                            <span class="new-price">$40.00</span> 
                            <span class="old-price">$50.00</span>
                        </div>
                    </div>
                </div>
            </div>
            <div class="custom-col">
                <div class="single-product-item">
                    <div class="product-image">
                        <a href="shop.html">
                            <img src="{{url('public')}}/frontend/img/product/6.jpg" alt="">
                        </a>  
                        <div class="product-hover">
                            <ul class="hover-icon-list">
                                <li>
                                    <a href="wishlist.html"><i class="icon icon-Heart"></i></a>
                                </li>
                                <li>
                                    <a href="#"><i class="icon icon-Restart"></i></a>
                                </li>
                                <li><a href="{{url('public')}}/frontend/img/product/6.jpg" data-toggle="modal" data-target="#productModal"><i class="icon icon-Search"></i></a></li>
                            </ul>
                            <button type="button" class="p-cart-btn">Add to cart</button>
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
                        <h5><a href="shop.html">Fresh Coconut</a></h5>
                        <div class="pro-price">
                            <span class="new-price">$50.00</span> 
                            <span class="old-price">$80.00</span>
                        </div>
                    </div>
                </div>
            </div>
            <div class="custom-col">
                <div class="single-product-item">
                    <div class="product-image">
                        <a href="shop.html">
                            <img src="{{url('public')}}/frontend/img/product/7.jpg" alt="">
                        </a>  
                        <div class="product-hover">
                            <ul class="hover-icon-list">
                                <li>
                                    <a href="wishlist.html"><i class="icon icon-Heart"></i></a>
                                </li>
                                <li>
                                    <a href="#"><i class="icon icon-Restart"></i></a>
                                </li>
                                <li><a href="{{url('public')}}/frontend/img/product/7.jpg" data-toggle="modal" data-target="#productModal"><i class="icon icon-Search"></i></a></li>
                            </ul>
                            <button type="button" class="p-cart-btn">Add to cart</button>
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
                        <h5><a href="shop.html">Tangerin Juice</a></h5>
                        <div class="pro-price">
                            <span class="new-price">$44.00</span> 
                            <span class="old-price">$47.00</span>
                        </div>
                    </div>
                </div>
            </div>
            <div class="custom-col">
                <div class="single-product-item">
                    <div class="product-image">
                        <a href="shop.html">
                            <img src="{{url('public')}}/frontend/img/product/8.jpg" alt="">
                        </a>  
                        <div class="product-hover">
                            <ul class="hover-icon-list">
                                <li>
                                    <a href="wishlist.html"><i class="icon icon-Heart"></i></a>
                                </li>
                                <li>
                                    <a href="#"><i class="icon icon-Restart"></i></a>
                                </li>
                                <li><a href="{{url('public')}}/frontend/img/product/8.jpg" data-toggle="modal" data-target="#productModal"><i class="icon icon-Search"></i></a></li>
                            </ul>
                            <button type="button" class="p-cart-btn">Add to cart</button>
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
                        <h5><a href="shop.html">Pine Apple</a></h5>
                        <div class="pro-price">
                            <span class="new-price">$33.00</span> 
                            <span class="old-price">$37.00</span>
                        </div>
                    </div>
                </div>
            </div>
            <div class="custom-col">
                <div class="single-product-item">
                    <div class="product-image">
                        <a href="shop.html">
                            <img src="{{url('public')}}/frontend/img/product/9.jpg" alt="">
                        </a>  
                        <div class="product-hover">
                            <ul class="hover-icon-list">
                                <li>
                                    <a href="wishlist.html"><i class="icon icon-Heart"></i></a>
                                </li>
                                <li>
                                    <a href="#"><i class="icon icon-Restart"></i></a>
                                </li>
                                <li><a href="{{url('public')}}/frontend/img/product/9.jpg" data-toggle="modal" data-target="#productModal"><i class="icon icon-Search"></i></a></li>
                            </ul>
                            <button type="button" class="p-cart-btn">Add to cart</button>
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
                        <h5><a href="shop.html">Fresh Cucumber</a></h5>
                        <div class="pro-price">
                            <span class="new-price">$86.00</span> 
                            <span class="old-price">$92.00</span>
                        </div>
                    </div>
                </div>
            </div>
            <div class="custom-col">
                <div class="single-product-item">
                    <div class="product-image">
                        <a href="shop.html">
                            <img src="{{url('public')}}/frontend/img/product/10.jpg" alt="">
                        </a>  
                        <div class="product-hover">
                            <ul class="hover-icon-list">
                                <li>
                                    <a href="wishlist.html"><i class="icon icon-Heart"></i></a>
                                </li>
                                <li>
                                    <a href="#"><i class="icon icon-Restart"></i></a>
                                </li>
                                <li><a href="{{url('public')}}/frontend/img/product/10.jpg" data-toggle="modal" data-target="#productModal"><i class="icon icon-Search"></i></a></li>
                            </ul>
                            <button type="button" class="p-cart-btn">Add to cart</button>
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
                        <h5><a href="shop.html">Fresh Grape</a></h5>
                        <div class="pro-price">
                            <span class="new-price">$40.00</span> 
                            <span class="old-price">$43.00</span>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- Protuct Area End -->
<!-- Footer Area Start -->

@stop