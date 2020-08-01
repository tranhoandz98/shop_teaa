@extends('frontend.master')
@section('title','Trang chủ')
@section('main')
	        <!-- Hero Area Start -->
            <div class="ht-hero-section fix">
                <div class="ht-hero-slider">
                    @foreach ($banner as $value)
                        <!-- Single Slide Start -->
                    <div class="ht-single-slide" style="background-image: url({{url('public/uploads')}}/{{$value->image}})">
                        <div class="ht-hero-content-one container">
                            {{-- <h3>For Get Me Not</h3> --}}
                            <h1 class="cssanimation leDoorCloseLeft sequence title-logo">{{$value->name}}</h1>
                         <p>{{$value->content}}</p>
                            <a href="{{route('shop')}}" class="default-btn large circle blue hover-blue uppercase">Shop now</a>
                        </div>
                    </div>
                    <!-- Single Slide End -->
                    @endforeach
                    
                </div>
            </div>
            <!-- Hero Area End -->
        <!-- Shop Banner Area Start -->
        <div class="shop-banner-area pt-60 pb-60">
            <div class="container">
                <div class="row">
                    <div class="col-md-6">
                        <div class="shop-banner-img">
                            <a href="shop.html"><img src="{{url('public')}}/frontend/img/banner/2.jpg" alt=""></a>
                        </div>
                    </div>
                    <div class="col-md-6">
                        <div class="shop-banner-img">
                            <a href="shop.html"><img src="{{url('public')}}/frontend/img/banner/3.jpg" alt=""></a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- Shop Banner Area End -->
        <!-- Protuct Area Start -->
        <div class="product-area bg-1 pt-110 pb-80 product-two-area">
            <div class="container">
                <div class="section-title text-center">
                    <div class="section-img d-flex justify-content-center">
                        <img src="{{url('public')}}/frontend/img/icon/title.png" alt="">
                    </div>
                    <h2><span>Organic </span>featured products</h2>
                </div>
            </div>
            <div class="container">
                <div class="product-tab-list nav fix" role="tablist">
                    <a class="active" href="#tab1" data-toggle="tab" role="tab" aria-selected="true" aria-controls="tab1">vegetables</a>
                    <a href="#tab2" data-toggle="tab" role="tab" aria-selected="false" aria-controls="tab2">fruits</a>
                    <a href="#tab3" data-toggle="tab" role="tab" aria-selected="false" aria-controls="tab3">juices</a>
                    <a href="#tab4" data-toggle="tab" role="tab" aria-selected="false" aria-controls="tab4">bread</a>
                </div>
                <div class="tab-content text-center">
                    <div class="tab-pane active show fade" id="tab1" role="tabpanel">
                        <div class="product-carousel">
                            <div class="custom-col">
                                <div class="single-product-item">
                                    <div class="product-image">
                                        <a href="shop.html">
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
                                <div class="single-product-item">
                                    <div class="product-image">
                                        <a href="shop.html">
                                            <img src="{{url('public')}}/frontend/img/product/12.jpg" alt="">
                                        </a>  
                                        <div class="product-hover">
                                            <ul class="hover-icon-list">
                                                <li>
                                                    <a href="wishlist.html"><i class="icon icon-Heart"></i></a>
                                                </li>
                                                <li>
                                                    <a href="#"><i class="icon icon-Restart"></i></a>
                                                </li>
                                                <li><a href="{{url('public')}}/frontend/img/product/12.jpg" data-toggle="modal" data-target="#productModal"><i class="icon icon-Search"></i></a></li>
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
                        </div>
                    </div>
                    <div class="tab-pane fade" id="tab2" role="tabpanel">
                        <div class="product-carousel">
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
                            <div class="custom-col">
                                <div class="single-product-item">
                                    <div class="product-image">
                                        <a href="shop.html">
                                            <img src="{{url('public')}}/frontend/img/product/11.jpg" alt="">
                                        </a>  
                                        <div class="product-hover">
                                            <ul class="hover-icon-list">
                                                <li>
                                                    <a href="wishlist.html"><i class="icon icon-Heart"></i></a>
                                                </li>
                                                <li>
                                                    <a href="#"><i class="icon icon-Restart"></i></a>
                                                </li>
                                                <li><a href="{{url('public')}}/frontend/img/product/11.jpg" data-toggle="modal" data-target="#productModal"><i class="icon icon-Search"></i></a></li>
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
                                        <h5><a href="shop.html">Farm's Cucumber</a></h5>
                                        <div class="pro-price">
                                            <span class="new-price">$34.00</span> 
                                            <span class="old-price">$37.00</span>
                                        </div>
                                    </div>
                                </div>
                                <div class="single-product-item">
                                    <div class="product-image">
                                        <a href="shop.html">
                                            <img src="{{url('public')}}/frontend/img/product/12.jpg" alt="">
                                        </a>  
                                        <div class="product-hover">
                                            <ul class="hover-icon-list">
                                                <li>
                                                    <a href="wishlist.html"><i class="icon icon-Heart"></i></a>
                                                </li>
                                                <li>
                                                    <a href="#"><i class="icon icon-Restart"></i></a>
                                                </li>
                                                <li><a href="{{url('public')}}/frontend/img/product/12.jpg" data-toggle="modal" data-target="#productModal"><i class="icon icon-Search"></i></a></li>
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
                                        <h5><a href="shop.html">Strawberry Juice</a></h5>
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
                                            <img src="{{url('public')}}/frontend/img/product/13.jpg" alt="">
                                        </a>  
                                        <div class="product-hover">
                                            <ul class="hover-icon-list">
                                                <li>
                                                    <a href="wishlist.html"><i class="icon icon-Heart"></i></a>
                                                </li>
                                                <li>
                                                    <a href="#"><i class="icon icon-Restart"></i></a>
                                                </li>
                                                <li><a href="{{url('public')}}/frontend/img/product/13.jpg" data-toggle="modal" data-target="#productModal"><i class="icon icon-Search"></i></a></li>
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
                                        <h5><a href="shop.html">Green Pee's</a></h5>
                                        <div class="pro-price">
                                            <span class="new-price">$40.00</span> 
                                            <span class="old-price">$50.00</span>
                                        </div>
                                    </div>
                                </div>
                                <div class="single-product-item">
                                    <div class="product-image">
                                        <a href="shop.html">
                                            <img src="{{url('public')}}/frontend/img/product/14.jpg" alt="">
                                        </a>  
                                        <div class="product-hover">
                                            <ul class="hover-icon-list">
                                                <li>
                                                    <a href="wishlist.html"><i class="icon icon-Heart"></i></a>
                                                </li>
                                                <li>
                                                    <a href="#"><i class="icon icon-Restart"></i></a>
                                                </li>
                                                <li><a href="{{url('public')}}/frontend/img/product/14.jpg" data-toggle="modal" data-target="#productModal"><i class="icon icon-Search"></i></a></li>
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
                                        <h5><a href="shop.html">Fresh Onion</a></h5>
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
                                            <img src="{{url('public')}}/frontend/img/product/15.jpg" alt="">
                                        </a>  
                                        <div class="product-hover">
                                            <ul class="hover-icon-list">
                                                <li>
                                                    <a href="wishlist.html"><i class="icon icon-Heart"></i></a>
                                                </li>
                                                <li>
                                                    <a href="#"><i class="icon icon-Restart"></i></a>
                                                </li>
                                                <li><a href="{{url('public')}}/frontend/img/product/15.jpg" data-toggle="modal" data-target="#productModal"><i class="icon icon-Search"></i></a></li>
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
                                        <h5><a href="shop.html">Juicy Orange</a></h5>
                                        <div class="pro-price">
                                            <span class="new-price">$44.00</span> 
                                            <span class="old-price">$47.00</span>
                                        </div>
                                    </div>
                                </div>
                                <div class="single-product-item">
                                    <div class="product-image">
                                        <a href="shop.html">
                                            <img src="{{url('public')}}/frontend/img/product/16.jpg" alt="">
                                        </a>  
                                        <div class="product-hover">
                                            <ul class="hover-icon-list">
                                                <li>
                                                    <a href="wishlist.html"><i class="icon icon-Heart"></i></a>
                                                </li>
                                                <li>
                                                    <a href="#"><i class="icon icon-Restart"></i></a>
                                                </li>
                                                <li><a href="{{url('public')}}/frontend/img/product/16.jpg" data-toggle="modal" data-target="#productModal"><i class="icon icon-Search"></i></a></li>
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
                                        <h5><a href="shop.html">Kiwi Juice</a></h5>
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
                                            <img src="{{url('public')}}/frontend/img/product/12.jpg" alt="">
                                        </a>  
                                        <div class="product-hover">
                                            <ul class="hover-icon-list">
                                                <li>
                                                    <a href="wishlist.html"><i class="icon icon-Heart"></i></a>
                                                </li>
                                                <li>
                                                    <a href="#"><i class="icon icon-Restart"></i></a>
                                                </li>
                                                <li><a href="{{url('public')}}/frontend/img/product/12.jpg" data-toggle="modal" data-target="#productModal"><i class="icon icon-Search"></i></a></li>
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
                                        <h5><a href="shop.html">Strawberry Juice</a></h5>
                                        <div class="pro-price">
                                            <span class="new-price">$20.00</span> 
                                            <span class="old-price">$28.00</span>
                                        </div>
                                    </div>
                                </div>
                                <div class="single-product-item">
                                    <div class="product-image">
                                        <a href="shop.html">
                                            <img src="{{url('public')}}/frontend/img/product/13.jpg" alt="">
                                        </a>  
                                        <div class="product-hover">
                                            <ul class="hover-icon-list">
                                                <li>
                                                    <a href="wishlist.html"><i class="icon icon-Heart"></i></a>
                                                </li>
                                                <li>
                                                    <a href="#"><i class="icon icon-Restart"></i></a>
                                                </li>
                                                <li><a href="{{url('public')}}/frontend/img/product/13.jpg" data-toggle="modal" data-target="#productModal"><i class="icon icon-Search"></i></a></li>
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
                                        <h5><a href="shop.html">Green Pee's</a></h5>
                                        <div class="pro-price">
                                            <span class="new-price">$40.00</span> 
                                            <span class="old-price">$50.00</span>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="tab-pane fade" id="tab3" role="tabpanel">
                        <div class="product-carousel">
                            <div class="custom-col">
                                <div class="single-product-item">
                                    <div class="product-image">
                                        <a href="shop.html">
                                            <img src="{{url('public')}}/frontend/img/product/17.jpg" alt="">
                                        </a>  
                                        <div class="product-hover">
                                            <ul class="hover-icon-list">
                                                <li>
                                                    <a href="wishlist.html"><i class="icon icon-Heart"></i></a>
                                                </li>
                                                <li>
                                                    <a href="#"><i class="icon icon-Restart"></i></a>
                                                </li>
                                                <li><a href="{{url('public')}}/frontend/img/product/17.jpg" data-toggle="modal" data-target="#productModal"><i class="icon icon-Search"></i></a></li>
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
                                        <h5><a href="shop.html">Red Beet</a></h5>
                                        <div class="pro-price">
                                            <span class="new-price">$34.00</span> 
                                            <span class="old-price">$37.00</span>
                                        </div>
                                    </div>
                                </div>
                                <div class="single-product-item">
                                    <div class="product-image">
                                        <a href="shop.html">
                                            <img src="{{url('public')}}/frontend/img/product/18.jpg" alt="">
                                        </a>  
                                        <div class="product-hover">
                                            <ul class="hover-icon-list">
                                                <li>
                                                    <a href="wishlist.html"><i class="icon icon-Heart"></i></a>
                                                </li>
                                                <li>
                                                    <a href="#"><i class="icon icon-Restart"></i></a>
                                                </li>
                                                <li><a href="{{url('public')}}/frontend/img/product/18.jpg" data-toggle="modal" data-target="#productModal"><i class="icon icon-Search"></i></a></li>
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
                                        <h5><a href="shop.html">Spring Onion</a></h5>
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
                                            <img src="{{url('public')}}/frontend/img/product/19.jpg" alt="">
                                        </a>  
                                        <div class="product-hover">
                                            <ul class="hover-icon-list">
                                                <li>
                                                    <a href="wishlist.html"><i class="icon icon-Heart"></i></a>
                                                </li>
                                                <li>
                                                    <a href="#"><i class="icon icon-Restart"></i></a>
                                                </li>
                                                <li><a href="{{url('public')}}/frontend/img/product/19.jpg" data-toggle="modal" data-target="#productModal"><i class="icon icon-Search"></i></a></li>
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
                                        <h5><a href="shop.html">Fresh Tomato</a></h5>
                                        <div class="pro-price">
                                            <span class="new-price">$40.00</span> 
                                            <span class="old-price">$50.00</span>
                                        </div>
                                    </div>
                                </div>
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
                                        <h5><a href="shop.html">Juicy Watermelon</a></h5>
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
                        </div>
                    </div>
                    <div class="tab-pane fade" id="tab4" role="tabpanel">
                        <div class="product-carousel">
                            <div class="custom-col">
                                <div class="single-product-item">
                                    <div class="product-image">
                                        <a href="shop.html">
                                            <img src="{{url('public')}}/frontend/img/product/12.jpg" alt="">
                                        </a>  
                                        <div class="product-hover">
                                            <ul class="hover-icon-list">
                                                <li>
                                                    <a href="wishlist.html"><i class="icon icon-Heart"></i></a>
                                                </li>
                                                <li>
                                                    <a href="#"><i class="icon icon-Restart"></i></a>
                                                </li>
                                                <li><a href="{{url('public')}}/frontend/img/product/12.jpg" data-toggle="modal" data-target="#productModal"><i class="icon icon-Search"></i></a></li>
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
                                        <h5><a href="shop.html">Strawberry Juice</a></h5>
                                        <div class="pro-price">
                                            <span class="new-price">$20.00</span> 
                                            <span class="old-price">$28.00</span>
                                        </div>
                                    </div>
                                </div>
                                <div class="single-product-item">
                                    <div class="product-image">
                                        <a href="shop.html">
                                            <img src="{{url('public')}}/frontend/img/product/13.jpg" alt="">
                                        </a>  
                                        <div class="product-hover">
                                            <ul class="hover-icon-list">
                                                <li>
                                                    <a href="wishlist.html"><i class="icon icon-Heart"></i></a>
                                                </li>
                                                <li>
                                                    <a href="#"><i class="icon icon-Restart"></i></a>
                                                </li>
                                                <li><a href="{{url('public')}}/frontend/img/product/13.jpg" data-toggle="modal" data-target="#productModal"><i class="icon icon-Search"></i></a></li>
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
                                        <h5><a href="shop.html">Green Pee's</a></h5>
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
                                            <img src="{{url('public')}}/frontend/img/product/14.jpg" alt="">
                                        </a>  
                                        <div class="product-hover">
                                            <ul class="hover-icon-list">
                                                <li>
                                                    <a href="wishlist.html"><i class="icon icon-Heart"></i></a>
                                                </li>
                                                <li>
                                                    <a href="#"><i class="icon icon-Restart"></i></a>
                                                </li>
                                                <li><a href="{{url('public')}}/frontend/img/product/14.jpg" data-toggle="modal" data-target="#productModal"><i class="icon icon-Search"></i></a></li>
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
                                        <h5><a href="shop.html">Fresh Onion</a></h5>
                                        <div class="pro-price">
                                            <span class="new-price">$50.00</span> 
                                            <span class="old-price">$80.00</span>
                                        </div>
                                    </div>
                                </div>
                                <div class="single-product-item">
                                    <div class="product-image">
                                        <a href="shop.html">
                                            <img src="{{url('public')}}/frontend/img/product/15.jpg" alt="">
                                        </a>  
                                        <div class="product-hover">
                                            <ul class="hover-icon-list">
                                                <li>
                                                    <a href="wishlist.html"><i class="icon icon-Heart"></i></a>
                                                </li>
                                                <li>
                                                    <a href="#"><i class="icon icon-Restart"></i></a>
                                                </li>
                                                <li><a href="{{url('public')}}/frontend/img/product/15.jpg" data-toggle="modal" data-target="#productModal"><i class="icon icon-Search"></i></a></li>
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
                                        <h5><a href="shop.html">Juicy Orange</a></h5>
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
                                <div class="single-product-item">
                                    <div class="product-image">
                                        <a href="shop.html">
                                            <img src="{{url('public')}}/frontend/img/product/12.jpg" alt="">
                                        </a>  
                                        <div class="product-hover">
                                            <ul class="hover-icon-list">
                                                <li>
                                                    <a href="wishlist.html"><i class="icon icon-Heart"></i></a>
                                                </li>
                                                <li>
                                                    <a href="#"><i class="icon icon-Restart"></i></a>
                                                </li>
                                                <li><a href="{{url('public')}}/frontend/img/product/12.jpg" data-toggle="modal" data-target="#productModal"><i class="icon icon-Search"></i></a></li>
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
                                        <h5><a href="shop.html">Strawberry Juice</a></h5>
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
                                            <img src="{{url('public')}}/frontend/img/product/13.jpg" alt="">
                                        </a>  
                                        <div class="product-hover">
                                            <ul class="hover-icon-list">
                                                <li>
                                                    <a href="wishlist.html"><i class="icon icon-Heart"></i></a>
                                                </li>
                                                <li>
                                                    <a href="#"><i class="icon icon-Restart"></i></a>
                                                </li>
                                                <li><a href="{{url('public')}}/frontend/img/product/13.jpg" data-toggle="modal" data-target="#productModal"><i class="icon icon-Search"></i></a></li>
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
                                        <h5><a href="shop.html">Green Pee's</a></h5>
                                        <div class="pro-price">
                                            <span class="new-price">$40.00</span> 
                                            <span class="old-price">$50.00</span>
                                        </div>
                                    </div>
                                </div>
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
                            <div class="custom-col">
                                <div class="single-product-item">
                                    <div class="product-image">
                                        <a href="shop.html">
                                            <img src="{{url('public')}}/frontend/img/product/11.jpg" alt="">
                                        </a>  
                                        <div class="product-hover">
                                            <ul class="hover-icon-list">
                                                <li>
                                                    <a href="wishlist.html"><i class="icon icon-Heart"></i></a>
                                                </li>
                                                <li>
                                                    <a href="#"><i class="icon icon-Restart"></i></a>
                                                </li>
                                                <li><a href="{{url('public')}}/frontend/img/product/11.jpg" data-toggle="modal" data-target="#productModal"><i class="icon icon-Search"></i></a></li>
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
                                        <h5><a href="shop.html">Farm's Cucumber</a></h5>
                                        <div class="pro-price">
                                            <span class="new-price">$34.00</span> 
                                            <span class="old-price">$37.00</span>
                                        </div>
                                    </div>
                                </div>
                                <div class="single-product-item">
                                    <div class="product-image">
                                        <a href="shop.html">
                                            <img src="{{url('public')}}/frontend/img/product/16.jpg" alt="">
                                        </a>  
                                        <div class="product-hover">
                                            <ul class="hover-icon-list">
                                                <li>
                                                    <a href="wishlist.html"><i class="icon icon-Heart"></i></a>
                                                </li>
                                                <li>
                                                    <a href="#"><i class="icon icon-Restart"></i></a>
                                                </li>
                                                <li><a href="{{url('public')}}/frontend/img/product/16.jpg" data-toggle="modal" data-target="#productModal"><i class="icon icon-Search"></i></a></li>
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
                                        <h5><a href="shop.html">Kiwi Juice</a></h5>
                                        <div class="pro-price">
                                            <span class="new-price">$33.00</span> 
                                            <span class="old-price">$37.00</span>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- Protuct Area End -->
        <!-- Banner Area Start -->
        {{-- <div class="banner-area bg-5 fix pt-70 pb-190 banner-two-area">
            <div class="container">
                <div class="row">
                    <div class="col-lg-6 col-md-8">
                        <div class="banner-text pt-130">
                            <h3>Cold Process <span>Organic</span></h3>
                            <h1>Strawberry</h1>
                            <h2>
                                <img src="{{url('public')}}/frontend/img/icon/mark.png" alt="">
                                <span>Buy 1 get 1 free</span>
                            </h2>
                            <p>Typi non habent claritatem insitam, est usus legentis in iis qui facit eorum claritatem. Investigationes demonstraverunt lectores legere me lius quod ii legunt saepius.</p>
                            <a href="shop.html" class="default-btn">shop now</a>
                        </div>
                    </div>
                </div>
            </div>
        </div> --}}
        <!-- Banner Area End -->
        <!-- Timer Product Area Start -->
       {{--  <div class="timer-product-area bg-3 pt-110 pb-80">
            <div class="container">
                <div class="section-title text-center mb-50">
                    <div class="section-img d-flex justify-content-center">
                        <img src="{{url('public')}}/frontend/img/icon/title.png" alt="">
                    </div>
                    <h2><span>Organic </span>deal of the days</h2>
                </div>
            </div>
            <div class="container">
                <div class="custom-row">
                    <div class="timer-carousel">
                        <div class="custom-col text-center">
                            <div class="single-product-item">
                                <div class="product-image">
                                    <a href="shop.html">
                                        <img src="{{url('public')}}/frontend/img/product/1.jpg" alt="">
                                    </a>  
                                    <div class="timer">
                                        <div data-countdown="2020/05/08" class="timer-grid"></div>
                                    </div>
                                    <div class="product-hover">
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
                                        <span class="new-price">$204.00</span> 
                                        <span class="old-price">$280.00</span>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="custom-col text-center">
                            <div class="single-product-item">
                                <div class="product-image">
                                    <a href="shop.html">
                                        <img src="{{url('public')}}/frontend/img/product/2.jpg" alt="">
                                    </a>  
                                    <div class="timer">
                                        <div data-countdown="2019/05/12" class="timer-grid"></div>
                                    </div>
                                    <div class="product-hover">
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
                                    <h5><a href="shop.html">Farm's Banana</a></h5>
                                    <div class="pro-price">
                                        <span class="new-price">$33.00</span> 
                                        <span class="old-price">$37.00</span>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="custom-col text-center">
                            <div class="single-product-item">
                                <div class="product-image">
                                    <a href="shop.html">
                                        <img src="{{url('public')}}/frontend/img/product/3.jpg" alt="">
                                    </a>  
                                    <div class="timer">
                                        <div data-countdown="2018/12/12" class="timer-grid"></div>
                                    </div>
                                    <div class="product-hover">
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
                                        <span class="new-price">$120.00</span> 
                                        <span class="old-price">$160.00</span>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="custom-col text-center">
                            <div class="single-product-item">
                                <div class="product-image">
                                    <a href="shop.html">
                                        <img src="{{url('public')}}/frontend/img/product/4.jpg" alt="">
                                    </a>  
                                    <div class="timer">
                                        <div data-countdown="2018/12/1" class="timer-grid"></div>
                                    </div>
                                    <div class="product-hover">
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
                                    <h5><a href="shop.html">Juicy Mango</a></h5>
                                    <div class="pro-price">
                                        <span class="new-price">$90.00</span> 
                                        <span class="old-price">$100.00</span>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div> --}}
        <!-- Timer Product Area End -->
    {{--     <!-- Testimonial Area Start -->
        <div class="testimonial-area pt-110 pb-95">
            <div class="container">
                <div class="testimonial-slider-wrapper">
                    <div class="text-carousel text-center">
                        <div class="slider-text">
                            <span class="testi-quote">
                                <img src="{{url('public')}}/frontend/img/icon/quote.png" alt="">
                            </span>
                            <p>This is Photoshops version  of Lorem Ipsum. Proin gravida nibh vel velit.Lorem ipsum dolor sit amet, consectetur adipiscing elit. In molestie augue magna. Pellentesque felis lorem, pulvinar sed ero..</p>
                        </div>
                        <div class="slider-text">
                            <span class="testi-quote">
                                <img src="{{url('public')}}/frontend/img/icon/quote.png" alt="">
                            </span>
                            <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Reprehenderit tenetur rerum maiores eos fugit dolores neque eius ex eum quo, quis aspernatur odio accusantium architecto, amet repellat.</p>
                        </div>
                        <div class="slider-text">
                            <span class="testi-quote">
                                <img src="{{url('public')}}/frontend/img/icon/quote.png" alt="">
                            </span>
                            <p>Reprehenderit tenetur rerum maiores eos fugit dolores neque eius ex eum quo, quis aspernatur odio accusantium architecto, amet repellat Lorem ipsum dolor sit amet, consectetur adipisicing elit.</p>
                        </div>
                        <div class="slider-text">
                            <span class="testi-quote">
                                <img src="{{url('public')}}/frontend/img/icon/quote.png" alt="">
                            </span>
                            <p>This is Photoshops version  of Lorem Ipsum. Proin gravida nibh vel velit.Lorem ipsum dolor sit amet, consectetur adipiscing elit. In molestie augue magna. Pellentesque felis lorem, pulvinar sed ero..</p>
                        </div>
                        <div class="slider-text">
                            <span class="testi-quote">
                                <img src="{{url('public')}}/frontend/img/icon/quote.png" alt="">
                            </span>
                            <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Reprehenderit tenetur rerum maiores eos fugit dolores neque eius ex eum quo, quis aspernatur odio accusantium architecto, amet repellat.</p>
                        </div>
                        <div class="slider-text">
                            <span class="testi-quote">
                                <img src="{{url('public')}}/frontend/img/icon/quote.png" alt="">
                            </span>
                            <p>Reprehenderit tenetur rerum maiores eos fugit dolores neque eius ex eum quo, quis aspernatur odio accusantium architecto, amet repellat Lorem ipsum dolor sit amet, consectetur adipisicing elit.</p>
                        </div>
                    </div>
                    <div class="image-carousel">
                        <div class="testi-img">
                            <img src="{{url('public')}}/frontend/img/testimonial/1.png" alt="">
                            <h4>Dewey Tetzlaff</h4>
                        </div>
                        <div class="testi-img">
                            <img src="{{url('public')}}/frontend/img/testimonial/2.png" alt="">
                            <h4>Rebecka Filson</h4>
                        </div>
                        <div class="testi-img">
                            <img src="{{url('public')}}/frontend/img/testimonial/3.png" alt="">
                            <h4>Alva Ono</h4>
                        </div>
                        <div class="testi-img">
                            <img src="{{url('public')}}/frontend/img/testimonial/1.png" alt="">
                            <h4>Dewey Tetzlaff</h4>
                        </div>
                        <div class="testi-img">
                            <img src="{{url('public')}}/frontend/img/testimonial/2.png" alt="">
                            <h4>Rebecka Filson</h4>
                        </div>
                        <div class="testi-img">
                            <img src="{{url('public')}}/frontend/img/testimonial/3.png" alt="">
                            <h4>Alva Ono</h4>
                        </div>
                    </div>
                </div> 
            </div>
        </div> --}}
        <!-- Testimonial Area End -->
        <!-- Blog Area Start -->
        <div class="blog-area pb-95">
            <div class="container">
                <div class="section-title text-center mb-50">
                    <div class="section-img d-flex justify-content-center">
                        <img src="{{url('public')}}/frontend/img/icon/title.png" alt="">
                    </div>
                    <h2><span>Organic </span>from our blog</h2>
                </div>
            </div>
            <div class="container">
                <div class="custom-row">
                    <div class="blog-carousel">
                        <div class="custom-col text-center">
                            <div class="single-blog">
                                <div class="blog-image">
                                    <a href="blog-details.html"><img src="{{url('public')}}/frontend/img/blog/1.jpg" alt=""></a>
                                </div>
                                <div class="blog-text">
                                    <h4><a href="blog-details.html">Coconut improve heart and immunity.</a></h4>
                                    <div class="post-meta">
                                        <span class="author-name">post by: <span>Naturecircle Themes</span></span>
                                        <span class="post-date"> - Oct 30,2018</span>
                                    </div>
                                    <p>Coconut milk is one of the healthiest foods on world, health benefits of coconut milk make it quite popular.</p>
                                    <a href="blog-details.html" class="default-btn">Read more</a>
                                </div>
                            </div>
                        </div>
                        <div class="custom-col text-center">
                            <div class="single-blog">
                                <div class="blog-image">
                                    <a href="blog-details.html"><img src="{{url('public')}}/frontend/img/blog/2.jpg" alt=""></a>
                                </div>
                                <div class="blog-text">
                                    <h4><a href="blog-details.html">The most healthful food you can eat.</a></h4>
                                    <div class="post-meta">
                                        <span class="author-name">post by: <span>Naturecircle Themes</span></span>
                                        <span class="post-date"> - Sep 11,2018</span>
                                    </div>
                                    <p>Health benefits of apple include improved digestion, prevention of stomach disorders, gallstones.</p>
                                    <a href="blog-details.html" class="default-btn">Read more</a>
                                </div>
                            </div>
                        </div>
                        <div class="custom-col text-center">
                            <div class="single-blog">
                                <div class="blog-image">
                                    <a href="blog-details.html"><img src="{{url('public')}}/frontend/img/blog/3.jpg" alt=""></a>
                                </div>
                                <div class="blog-text">
                                    <h4><a href="blog-details.html">Delicious and nutritious vegetable.</a></h4>
                                    <div class="post-meta">
                                        <span class="author-name">post by: <span>Naturecircle Themes</span></span>
                                        <span class="post-date"> - Apr 22,2018</span>
                                    </div>
                                    <p>Research shows drinking beetroot juice benefit digestion, boost athletic performance. They are a good source.</p>
                                    <a href="blog-details.html" class="default-btn">Read more</a>
                                </div>
                            </div>
                        </div>
                        <div class="custom-col text-center">
                            <div class="single-blog">
                                <div class="blog-image">
                                    <a href="blog-details.html"><img src="{{url('public')}}/frontend/img/blog/1.jpg" alt=""></a>
                                </div>
                                <div class="blog-text">
                                    <h4><a href="blog-details.html">Coconut improve heart and immunity.</a></h4>
                                    <div class="post-meta">
                                        <span class="author-name">post by: <span>Naturecircle Themes</span></span>
                                        <span class="post-date"> - Oct 30,2018</span>
                                    </div>
                                    <p>Coconut milk is one of the healthiest foods on world, health benefits of coconut milk make it quite popular.</p>
                                    <a href="blog-details.html" class="default-btn">Read more</a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- Blog Area End -->
@stop