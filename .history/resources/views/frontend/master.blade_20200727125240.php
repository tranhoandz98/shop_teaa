<!doctype html>
<html class="no-js" lang="en">
<head>
    <meta charset="utf-8">
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <title>@yield('title')</title>
    <meta name="description" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- Favicon -->
    <link rel="shortcut icon" type="image/x-icon" href="{{url('public')}}/frontend/img/favicon.png">
    <!-- All css here -->
    <link rel="stylesheet" href="{{url('public')}}/frontend/css/bootstrap.min.css">
    <link rel="stylesheet" href="{{url('public')}}/frontend/css/font-awesome.min.css">
    <link rel="stylesheet" href="{{url('public')}}/frontend/css/ie7.css">
    <link rel="stylesheet" href="{{url('public')}}/frontend/css/plugins.css">
    <link rel="stylesheet" href="{{url('public')}}/frontend/css/style.css">
    <link rel="stylesheet" href="{{url('public')}}/frontend/css/style1.css">
    <script src="{{url('public')}}/frontend/js/vendor/modernizr-3.5.0.min.js"></script>
</head>
<body>
    <!-- Header Area Start -->
    <header class="header-area header-two header-sticky">
        <div class="header-container">
            <div class="row">
                <div class="col-lg-2 col-sm-4">
                    <div class="logo text-center logo-img">
                        <a href="{{route('home')}}"><img src="{{url('public/uploads')}}/logo_03.png" alt="NatureCircle" class="w-25"></a>
                    </div>
                </div>
                {{-- menu --}}
                <div class="col-lg-8 display-none-md display-none-xs">
                    <div class="ht-main-menu">
                        <nav class="d-flex justify-content-center">
                            <ul>
                                <li class="active"><a href="{{route('home')}}">Trang chủ</a></li>
                                <li ><a href="#">Hàng mới về</a></li>
                                <li><a href="#">Trà<i class="fa fa-angle-down"></i></a>
                                    <ul class="ht-mega-menu menu-con">
                                        @foreach($category_pro as $value)
                                        <li>
                                            <ul>
                                                @if($value->parent_id==0)
                                                <li class="mega-menu-title">{{$value->name}}</li>
                                                @foreach($category_pa as $valu)
                                                @if($valu->parent_id==$value->id)
                                                <li><a href="shop.html">{{$valu->name}}</a></li>
                                                @endif
                                                @endforeach
                                                @endif
                                            </ul>
                                        </li>
                                        @endforeach
                                    </ul> -->
                                </li>
                                <li><a href="shop.html">demo2 <i class="fa fa-angle-down"></i></a>
                                    <ul class="ht-mega-menu menu-con">
                                        @foreach($category_pro as $value)
                                        <li>
                                            <ul> 
                                                <li class="mega-menu-title">{{$value->name}}</li>
                                                @if($value->parent_id==0)
                                                <li class="mega-menu-title">{{$value->name}}</li>
                                                @foreach($category_pa as $valu)
                                                @if($valu->parent_id==$value->id)
                                                <li><a href="shop.html">{{$valu->name}}</a></li>
                                                @endif
                                                @endforeach
                                                @endif
                                            </ul>
                                        </li>
                                        @endforeach
                                        @foreach($category_pro as $value)
                                        <li>
                                            <ul>
                                                <li class="mega-menu-title">Bags</li>
                                                <li><a href="shop.html">Crochet</a></li>
                                                <li><a href="shop.html">Sleeveles</a></li>
                                                <li><a href="shop.html">Stripes</a></li>
                                                <li><a href="shop.html">Sweaters</a></li>
                                                <li><a href="shop.html"><img src="assets/img/banner/menu-1.jpg" alt=""></a></li>
                                            </ul>
                                        </li>
                                        @endforeach
                                        
                                        {{-- <li>
                                            <ul>
                                                <li class="mega-menu-title">Bottoms</li>
                                                <li><a href="shop.html">Flat sandals</a></li>
                                                <li><a href="shop.html">Heeled sandals</a></li>
                                                <li><a href="shop.html">Polo Short Sleeve</a></li>
                                                <li><a href="shop.html">Short Sleeve</a></li>
                                                <li><a href="shop.html"><img src="assets/img/banner/menu-2.jpg" alt=""></a></li>
                                            </ul>
                                        </li>
                                        <li>
                                            <ul>
                                                <li class="mega-menu-title">Shirts</li>
                                                <li><a href="shop.html">Flat sandals</a></li>
                                                <li><a href="shop.html">Heeled sandals</a></li>
                                                <li><a href="shop.html">Polo Short Sleeve</a></li>
                                                <li><a href="shop.html">Short Sleeve</a></li>
                                                <li><a href="shop.html"><img src="assets/img/banner/menu-3.jpg" alt=""></a></li>
                                            </ul>
                                        </li> --}}
                                    </ul>
                                </li>
                                <li><a href="{{route('shop')}}">Shop</a>
                                </li>
                                <li><a href="blog.html">Tin tức</a></li>
                                <li><a href="contact.html">Liên hệ</a></li>
                            </ul>
                        </nav>
                    </div>
                </div>
                {{-- end menu --}}
                <div class="col-lg-2 col-sm-8">
                    <div class="header-content d-flex justify-content-end">
                        <div class="search-wrapper">
                            <a href="#"><span class="icon icon-Search"></span></a>
                            <form action="#" class="search-form">
                                <input type="text" placeholder="Search entire store here ...">
                                <button type="button">Search</button>
                            </form>
                        </div>
                        <div class="settings-wrapper">
                            <a href="#"><i class="icon icon-Settings"></i></a>
                            <div class="settings-content">
                                <h4>
                                    @if(Auth::check())
                                    {{Auth::user()->email}}
                                    <i class="fa fa-angle-down"></i>
                                </h4>
                                <ul>
                                    <li><a href="{{route('dang-ky')}}">Tài khoản của tôi</a></li>
                                    <li><a href="{{route('dang-xuat')}}">Đăng xuất</a></li>
                                </ul>
                                <h4>
                                    @else
                                    My Account
                                    <i class="fa fa-angle-down"></i>
                                </h4>
                                <ul>
                                    <li><a href="{{route('dang-ky')}}">Đăng ký</a></li>
                                    <li><a href="{{route('dang-nhap')}}">Đăng nhập</a></li>
                                </ul>
                                @endif
                            </div>
                        </div>
                        <div class="cart-wrapper">
                            <a href="#">
                                <i class="icon icon-FullShoppingCart"></i>
                                <span>2</span>
                            </a>
                            <div class="cart-item-wrapper">
                                <div class="single-cart-item">
                                    <div class="cart-img">
                                        <a href="cart.html"><img src="{{url('public')}}/frontend/img/cart/1.jpg" alt=""></a>
                                    </div>
                                    <div class="cart-text-btn">
                                        <div class="cart-text">
                                            <h5><a href="cart.html">Fresh Fruit Juice</a></h5>
                                            <span class="cart-qty">×1</span>
                                            <span class="cart-price">$68.00</span>
                                        </div>
                                        <button type="button"><i class="fa fa-close"></i></button>
                                    </div>
                                </div>
                                <div class="single-cart-item">
                                    <div class="cart-img">
                                        <a href="cart.html"><img src="{{url('public')}}/frontend/img/cart/2.jpg" alt=""></a>
                                    </div>
                                    <div class="cart-text-btn">
                                        <div class="cart-text">
                                            <h5><a href="cart.html">Fresh Vegetables</a></h5>
                                            <span class="cart-qty">×1</span>
                                            <span class="cart-price">$98.00</span>
                                        </div>
                                        <button type="button"><i class="fa fa-close"></i></button>
                                    </div>
                                </div>
                                <div class="cart-price-total">
                                    <div class="cart-price-info d-flex justify-content-between">
                                        <span>Sub-Total :</span>
                                        <span>$135.00</span>
                                    </div>
                                    <div class="cart-price-info d-flex justify-content-between">
                                        <span>Eco Tax (-2.00) :</span>
                                        <span>$4.00</span>
                                    </div>
                                    <div class="cart-price-info d-flex justify-content-between">
                                        <span>VAT (20%) :</span>
                                        <span>$27.00</span>
                                    </div>
                                    <div class="cart-price-info d-flex justify-content-between">
                                        <span>Total :</span>
                                        <span>$166.00</span>
                                    </div>
                                </div>
                                <div class="cart-links">
                                    <a href="cart.html">View cart</a>
                                    <a href="checkout.html">Checkout</a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- Header Area End -->
        <!-- Mobile Menu Area Start -->
        <div class="mobile-menu-area">
            <div class="mobile-menu container">
                <nav id="mobile-menu-active">
                    <ul class="menu-overflow">
                        <li class="active"><a href="{{route('home')}}">Trang chủ</a></li>
                        <li ><a href="#">Hàng mới về</a></li>
                        <li><a href="{{route('shop')}}">Shop</a>
                        </li>
                        <li><a href="blog.html">Tin tức</a></li>
                        <li><a href="contact.html">Liên hệ</a></li>
                    </ul>
                </nav>
            </div>
        </div>
        <!-- Mobile Menu Area End -->
    </header>
    <!-- Header Area End -->
    @yield('main');
    <!-- Footer Area Start -->
    <footer class="footer-area">
        <!-- Footer Top Area Start -->
        <div class="footer-top bg-4 pb-120">
            <!-- Service Area Start -->
            <div class="service-area">
                <div class="container">
                    <div class="service-container">
                        <div class="service-content">
                            <div class="row">
                                <div class="col-lg-4 col-md-4">
                                    <div class="single-service">
                                        <div class="service-image">
                                            <img src="{{url('public')}}/frontend/img/icon/rocket.png" alt="">
                                        </div>
                                        <div class="service-text">
                                            <h3>Free delivery</h3>
                                            <p>Nam liber tempor cum soluta nobis eleifend option congue.</p>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-lg-4 col-md-4">
                                    <div class="single-service">
                                        <div class="service-image">
                                            <img src="{{url('public')}}/frontend/img/icon/money.png" alt="">
                                        </div>
                                        <div class="service-text">
                                            <h3>Money guarantee</h3>
                                            <p>Nam liber tempor cum soluta nobis eleifend option congue.</p>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-lg-4 col-md-4">
                                    <div class="single-service">
                                        <div class="service-image">
                                            <img src="{{url('public')}}/frontend/img/icon/support.png" alt="">
                                        </div>
                                        <div class="service-text">
                                            <h3>Online support</h3>
                                            <p>Nam liber tempor cum soluta nobis eleifend option congue.</p>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- Service Area End -->
            <!-- Footer Widget Area Start -->
            <div class="footer-widget-area">
                <div class="container">
                    <div class="row">
                        <div class="col-lg-4 col-md-6">
                            <div class="single-footer-widget">
                                <div class="footer-logo">
                                    <a href="#"><img src="{{url('public')}}/frontend/img/logo/logo.png" alt=""></a>
                                </div>
                                <p>Claritas est etiam processus dynamicus, qui sequitur mutationem consuetudium lectorum.</p>
                                <div class="footer-text">
                                    <span><i class="icon icon-Pointer"></i>Address : No 40 Baria Sreet 133/2, NewYork, USA.</span>
                                    <span><i class="icon icon-Phone"></i>Phone : +(1234) 567 890</span>
                                    <span><i class="icon icon-Mail"></i>Email : demo@naturecircle.com</span>
                                    <div class="social-icon">
                                        <a href="#"><i class="fa fa-twitter"></i></a>
                                        <a href="#"><i class="fa fa-google-plus"></i></a>
                                        <a href="#"><i class="fa fa-facebook"></i></a>
                                        <a href="#"><i class="fa fa-youtube"></i></a>
                                        <a href="#"><i class="fa fa-flickr"></i></a>
                                    </div>
                                </div>

                            </div>
                        </div>
                        <div class="col-lg-2 col-md-3">
                            <div class="single-footer-widget">
                                <h3>Products</h3>
                                <ul class="footer-widget-list">
                                    <li><a href="shop.html">Prices drop</a></li>
                                    <li><a href="shop.html">New products</a></li>
                                    <li><a href="shop.html">Best sales</a></li>
                                    <li><a href="shop.html">Stores</a></li>
                                    <li><a href="#">Login</a></li>
                                    <li><a href="#">My Account</a></li>
                                </ul>
                            </div>
                        </div>
                        <div class="col-lg-2 col-md-3">
                            <div class="single-footer-widget">
                                <h3>Our company</h3>
                                <ul class="footer-widget-list">
                                    <li><a href="#">Delivery</a></li>
                                    <li><a href="#">Legal Notice</a></li>
                                    <li><a href="#">Documentation</a></li>
                                    <li><a href="#">Secure payment</a></li>
                                    <li><a href="contact.html">Contact us</a></li>
                                    <li><a href="shop.html">Stores</a></li>
                                </ul>
                            </div>
                        </div>
                        <div class="col-lg-4">
                            <div class="single-footer-widget">
                                <h3>Instagram</h3>
                                <div class="instagram-image">
                                    <div class="single-insta-img">
                                        <a href="#"><img src="{{url('public')}}/frontend/img/instagram/1.jpg" alt=""></a>
                                    </div>
                                    <div class="single-insta-img">
                                        <a href="#"><img src="{{url('public')}}/frontend/img/instagram/2.jpg" alt=""></a>
                                    </div>
                                    <div class="single-insta-img">
                                        <a href="#"><img src="{{url('public')}}/frontend/img/instagram/3.jpg" alt=""></a>
                                    </div>
                                    <div class="single-insta-img">
                                        <a href="#"><img src="{{url('public')}}/frontend/img/instagram/4.jpg" alt=""></a>
                                    </div>
                                    <div class="single-insta-img">
                                        <a href="#"><img src="{{url('public')}}/frontend/img/instagram/5.jpg" alt=""></a>
                                    </div>
                                    <div class="single-insta-img">
                                        <a href="#"><img src="{{url('public')}}/frontend/img/instagram/6.jpg" alt=""></a>
                                    </div>
                                    <div class="single-insta-img">
                                        <a href="#"><img src="{{url('public')}}/frontend/img/instagram/7.jpg" alt=""></a>
                                    </div>
                                    <div class="single-insta-img">
                                        <a href="#"><img src="{{url('public')}}/frontend/img/instagram/8.jpg" alt=""></a>
                                    </div>
                                </div>
                                <a href="#">Follow our instagram <i class="fa fa-angle-double-right"></i></a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- Footer Widget Area End -->
        </div>
        <!-- Footer Top Area End -->
        <!-- Footer Bottom Area Start -->
        <div class="footer-bottom-area pt-15 pb-30">
            <div class="container">
                <div class="row">
                    <div class="col-lg-6 d-flex col-md-6">
                        <div class="footer-text-bottom">
                            <p>Copyright &copy; <a href="#">Naturecircle</a>. All Rights Reserved</p>
                        </div>
                    </div>
                    <div class="col-lg-6 col-md-6">
                        <div class="payment-img d-flex justify-content-end">
                            <img src="{{url('public')}}/frontend/img/payment.png" alt="">
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- Footer Bottom Area End -->
    </footer>
    <!-- Footer Area End -->
    <!-- QUICKVIEW PRODUCT -->
    <div class="modal fade" id="productModal" tabindex="-1" role="dialog">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true"><i class="fa fa-times"></i></span></button>
                <div class="quick-view-container">
                    <div class="column-left">
                        <div class="tab-content product-details-large" id="myTabContent">
                            <div class="tab-pane fade show active" id="single-slide1" role="tabpanel" aria-labelledby="single-slide-tab-1">
                                <div class="single-product-img">
                                    <img src="{{url('public')}}/frontend/img/product/1.jpg" alt="">
                                </div>
                            </div>
                            <div class="tab-pane fade" id="single-slide2" role="tabpanel" aria-labelledby="single-slide-tab-2">
                                <div class="single-product-img">
                                    <img src="{{url('public')}}/frontend/img/product/2.jpg" alt="">
                                </div>
                            </div>
                            <div class="tab-pane fade" id="single-slide3" role="tabpanel" aria-labelledby="single-slide-tab-3">
                                <div class="single-product-img">
                                    <img src="{{url('public')}}/frontend/img/product/3.jpg" alt="">
                                </div>
                            </div>
                            <div class="tab-pane fade" id="single-slide4" role="tabpanel" aria-labelledby="single-slide-tab-4">
                                <div class="single-product-img">
                                    <img src="{{url('public')}}/frontend/img/product/4.jpg" alt="">
                                </div>
                            </div>
                            <div class="tab-pane fade" id="single-slide5" role="tabpanel" aria-labelledby="single-slide-tab-5">
                                <div class="single-product-img">
                                    <img src="{{url('public')}}/frontend/img/product/5.jpg" alt="">
                                </div>
                            </div>
                            <div class="tab-pane fade" id="single-slide6" role="tabpanel" aria-labelledby="single-slide-tab-6">
                                <div class="single-product-img">
                                    <img src="{{url('public')}}/frontend/img/product/6.jpg" alt="">
                                </div>
                            </div>
                        </div>
                        <div class="single-product-menu">
                            <div class="nav single-slide-menu" role="tablist">
                                <div class="single-tab-menu">
                                    <a class="active" data-toggle="tab" id="single-slide-tab-1" href="#single-slide1"><img src="{{url('public')}}/frontend/img/product/1.jpg" alt=""></a>
                                </div>
                                <div class="single-tab-menu">
                                    <a data-toggle="tab" id="single-slide-tab-2" href="#single-slide2"><img src="{{url('public')}}/frontend/img/product/2.jpg" alt=""></a>
                                </div>
                                <div class="single-tab-menu">
                                    <a data-toggle="tab" id="single-slide-tab-3" href="#single-slide3"><img src="{{url('public')}}/frontend/img/product/3.jpg" alt=""></a>
                                </div>
                                <div class="single-tab-menu">
                                    <a data-toggle="tab" id="single-slide-tab-4" href="#single-slide4"><img src="{{url('public')}}/frontend/img/product/4.jpg" alt=""></a>
                                </div>
                                <div class="single-tab-menu">
                                    <a data-toggle="tab" id="single-slide-tab-5" href="#single-slide5"><img src="{{url('public')}}/frontend/img/product/5.jpg" alt=""></a>
                                </div>
                                <div class="single-tab-menu">
                                    <a data-toggle="tab" id="single-slide-tab-6" href="#single-slide6"><img src="{{url('public')}}/frontend/img/product/6.jpg" alt=""></a>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="column-right">
                        <div class="quick-view-text">
                            <h2>Curabitur a purus</h2>
                            <h3 class="q-product-price">$34.00<span class="old-price">$37.00</span></h3>
                            <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco,Proin lectus ipsum, gravida et mattis vulputate, tristique ut lectus</p>
                            <div class="input-cart">
                                <input value="1" type="number">
                                <button class="default-btn">Add to cart</button>
                            </div>
                            <div class="share-product">
                                <h4>Share this product</h4>
                                <div class="social-link">
                                    <a href="#" target="_blank" class="facebook">
                                        <i class="fa fa-facebook"></i>
                                    </a>
                                    <a href="#" target="_blank" class="twitter">
                                        <i class="fa fa-twitter"></i>
                                    </a>
                                    <a href="#" target="_blank" class="pinterest">
                                        <i class="fa fa-pinterest"></i>
                                    </a>
                                    <a href="#" target="_blank" class="google">
                                        <i class="fa fa-google-plus"></i>
                                    </a>
                                    <a href="#" target="_blank" class="linkedin">
                                        <i class="fa fa-linkedin"></i>
                                    </a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- END QUICKVIEW PRODUCT -->
    <!-- All js here -->
    <script src="{{url('public')}}/frontend/js/vendor/jquery-3.2.1.min.js"></script>
    <script src="{{url('public')}}/frontend/js/popper.min.js"></script>
    <script src="{{url('public')}}/frontend/js/bootstrap.min.js"></script>
    <script src="{{url('public')}}/frontend/js/plugins.js"></script>
    <script src="{{url('public')}}/frontend/js/ajax-mail.js"></script>
    <script src="{{url('public')}}/frontend/js/main.js"></script>
    <script>
        $('#id_attr').select(function(event) {
            var id =$('id_attr').val();
        });
    </script>
    <script>
        $('#number').change(function(event) {
            $('#submit').click();
        });
        $('#sort').change(function(event) {
            $('#submit').click();
        });
    </script>
</body>
</html>