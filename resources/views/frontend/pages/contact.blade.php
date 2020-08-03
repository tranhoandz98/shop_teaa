@extends('frontend.master')
@section('title','Giới thiệu')
@section('main')
<!-- Breadcrumb Area Start -->
<div class="breadcrumb-area bg-12 text-center">
    <div class="container">
        <h1>Giới thiệu</h1>
        <nav aria-label="breadcrumb">
            <ul class="breadcrumb">
                <li class="breadcrumb-item"><a href="{{ route('home') }}">Home</a></li>
                <li class="breadcrumb-item active" aria-current="page">Giới thiệu</li>
            </ul>
        </nav>
    </div>
</div>
<!-- Breadcrumb Area End -->
 <!-- Google Map Area Start -->
 <div class="google-map-area">
    <div id="contacts" class="map-area">
        {{-- <div id="googleMap" style="width:100%;height:400px;"></div> --}}
    {!! $gmap->value !!}
    </div>
</div>
<!-- Google Map Area End -->
<!-- Contact Area Start -->
<div class="contact-area fix mb-95">
    <div class="contact-form pt-110">
        <h1 class="contact-title">TELL US YOUR PROJECT</h1>
        <form id="contact-form" action="https://demo.hasthemes.com/naturecircle-preview/naturecircle/mail.php" method="post">
            <div class="row">
                <div class="col-md-6">
                    <input type="text" name="name" id="name" placeholder="First Name *">
                </div>
                <div class="col-md-6">
                    <input type="text" name="l_name" id="l_name" placeholder="Last Name *">
                </div>
                <div class="col-md-6">
                    <input type="text" name="email" id="email" placeholder="Email *">
                </div>
                <div class="col-md-6">
                    <input type="text" name="subject" id="subject" placeholder="Subject *">
                </div>
            </div>
            <textarea name="message" id="message" placeholder="Message *"></textarea>
            <button type="submit" class="submit-btn default-btn">
                <span>Send Email</span>
            </button>
            <p class="form-messege"></p>
        </form>
    </div>
    <div class="contact-address pt-110 pb-100">
        <h1 class="contact-title">CONTACT US</h1>
        <div class="contact-info">
            <p>Claritas est etiam processus dynamicus, qui sequitur mutationem consuetudium lectorum. Mirum est notare quam littera gothica, quam nunc putamus parum claram anteposuerit litterarum formas human.</p>
            <div class="contact-list-wrapper">
                <div class="contact-list">
                    <i class="fa fa-fax"></i>
                    <span>Address : 40 Baria Sreet 133/2 NewYork City</span>
                </div>
                <div class="contact-list">
                    <i class="fa fa-phone"></i>
                    <span>Info@naturecircle.com</span>
                </div>
                <div class="contact-list">
                    <i class="fa fa-envelope-o"></i>
                    <span>0(1234) 567 890</span>
                </div>
            </div>
        </div>
        <div class="working-time">
            <h2>Working hours</h2>
            <span><span>Monday – Saturday:</span>  08AM – 22PM</span>
        </div>
    </div>
</div>
<!-- Contact Area End -->
    @stop