@extends('frontend.master')
@section('title','Wishlist')
@section('main')
<!-- Breadcrumb Area Start -->
<div class="breadcrumb-area bg-12 text-center">
    <div class="container">
        <h1>Sản phẩm yêu thích</h1>
        <nav aria-label="breadcrumb">
            <ul class="breadcrumb">
                <li class="breadcrumb-item"><a href="{{ route('home') }}">Home</a></li>
                <li class="breadcrumb-item active" aria-current="page">Wishlist</li>
            </ul>
        </nav>
    </div>
</div>
<!-- Breadcrumb Area End -->
<!-- Wishlist Area Start -->
        <div class="wishlist-area table-area pt-110 pb-95">
            <div class="container">
                <div class="table-responsive">
                    <table class="table product-table text-center">
                        <thead>
                            <tr>
                                <th class="table-remove">remove</th>
                                <th class="table-image">image</th>
                                <th class="table-p-name">Product Name</th>
                                <th>size</th>
                                <th class="table-p-price">Unit Price</th>
                                <th class="table-stock">Stock Status</th>
                                <th class="table-add-cart">Add</th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <td class="table-remove"><button><i class="fa fa-trash"></i></button></td>
                                <td class="table-image"><a href="product-details.html"><img src="assets/img/product/3.jpg" alt=""></a></td>
                                <td class="table-p-name"><a href="product-details.html">Habitasse dictumst</a></td>
                                <td>100</td>
                                <td class="table-p-price"><p><span class="line-through">$85.00</span> $79.00</p></td>
                                <td class="table-stock"><span>In Stock</span></td>
                                <td class="table-add-cart"><a href="cart.html">Add to cart</a></td>
                            </tr>
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
        <!-- Wishlist Area End -->
@stop