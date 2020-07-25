<!DOCTYPE html>
<html lang="en">

<head>

    <meta charset="utf-8" />
    <title>@yield('title')</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta content="Premium Multipurpose Admin & Dashboard Template" name="description" />
    <meta content="Themesbrand" name="author" />
    <!-- App favicon -->
    <link rel="shortcut icon" href="{{url('public')}}/backend/images/favicon.ico">
    <!-- admin lte -->
    <link href="{{url('public')}}/backend/css/AdminLTE.css" id="app-style" rel="stylesheet" type="text/css" />
    <!-- Bootstrap Css -->
    <link href="{{url('public')}}/backend/css/bootstrap.min.css" id="bootstrap-style" rel="stylesheet" type="text/css" />
    <!-- Icons Css -->
    <link href="{{url('public')}}/backend/css/icons.min.css" rel="stylesheet" type="text/css" />
    <!-- App Css-->
    <link href="{{url('public')}}/backend/css/app.min.css" id="app-style" rel="stylesheet" type="text/css" />
    <!-- Bootrstrap touchspin -->
    <link href="{{url('public')}}/backend/libs/bootstrap-touchspin/jquery.bootstrap-touchspin.min.css" rel="stylesheet" />
    <!-- Pick -->
    <link href="{{url('public')}}/backend/libs/bootstrap-datepicker/css/bootstrap-datepicker.min.css" rel="stylesheet" type="text/css">
    <link href="{{url('public')}}/backend/libs/bootstrap-colorpicker/css/bootstrap-colorpicker.min.css" rel="stylesheet" type="text/css">
    <link href="{{url('public')}}/backend/libs/bootstrap-timepicker/css/bootstrap-timepicker.min.css" rel="stylesheet" type="text/css">
    <link href="{{url('public')}}/backend/libs/bootstrap-touchspin/jquery.bootstrap-touchspin.min.css" rel="stylesheet" type="text/css" />
    <link rel="stylesheet" href="{{url('public')}}/backend/libs/@chenfengyuan/datepicker/datepicker.min.css">
    
    <!-- DataTables -->
    <link href="{{url('public')}}/backend/libs/datatables.net-bs4/css/dataTables.bootstrap4.min.css" rel="stylesheet" type="text/css" />
    <link href="{{url('public')}}/backend/libs/datatables.net-buttons-bs4/css/buttons.bootstrap4.min.css" rel="stylesheet" type="text/css" />
    <!-- Responsive datatable examples -->
    <link href="{{url('public')}}/backend/libs/datatables.net-responsive-bs4/css/responsive.bootstrap4.min.css" rel="stylesheet" type="text/css" />
    <!-- select2 css -->
    <link href="{{url('public')}}/backend/libs/select2/css/select2.min.css" rel="stylesheet" type="text/css" />

    <!-- dropzone css -->
    <link href="{{url('public')}}/backend/libs/dropzone/min/dropzone.min.css" rel="stylesheet" type="text/css" />
    <!-- css custom -->
    <link href="{{url('public')}}/backend/css/style.css" rel="stylesheet" type="text/css" />  

    
</head>

<body data-sidebar="dark">

    <!-- Begin page -->
    <div id="layout-wrapper">

        <header id="page-topbar">
            <div class="navbar-header">
                <div class="d-flex">
                    <!-- LOGO -->
                    <div class="navbar-brand-box">
                        

                        <a href="{{route('backend')}}" class="logo logo-light">
                            <h2 class="text-white mt-3">Trang chủ</h2>
                        </a>
                    </div>

                    <button type="button" class="btn btn-sm px-3 font-size-16 header-item waves-effect" id="vertical-menu-btn">
                        <i class="fa fa-fw fa-bars"></i>
                    </button>
                
                </div>

                <div class="d-flex">

                    <div class="dropdown d-inline-block d-lg-none ml-2">
                        <button type="button" class="btn header-item noti-icon waves-effect" id="page-header-search-dropdown"
                        data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                        <i class="mdi mdi-magnify"></i>
                    </button>
                    <div class="dropdown-menu dropdown-menu-lg dropdown-menu-right p-0"
                    aria-labelledby="page-header-search-dropdown">
                    
                    <form class="p-3">
                        <div class="form-group m-0">
                            <div class="input-group">
                                <input type="text" class="form-control" placeholder="Search ..." aria-label="Recipient's username">
                                <div class="input-group-append">
                                    <button class="btn btn-primary" type="submit"><i class="mdi mdi-magnify"></i></button>
                                </div>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
            <div class="dropdown d-none d-lg-inline-block ml-1">
                <button type="button" class="btn header-item noti-icon waves-effect" data-toggle="fullscreen">
                    <i class="bx bx-fullscreen"></i>
                </button>
            </div>
            <div class="dropdown d-inline-block">
                <button type="button" class="btn header-item waves-effect" id="page-header-user-dropdown"
                data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                <img class="rounded-circle header-profile-user" src="{{url('public')}}/backend/images/users/avatar-1.jpg"
                alt="Header Avatar">
                <span class="d-none d-xl-inline-block ml-1">Admin</span>
                <i class="mdi mdi-chevron-down d-none d-xl-inline-block"></i>
            </button>
            <div class="dropdown-menu dropdown-menu-right">
                <!-- item-->
                <a class="dropdown-item text-danger" href="{{ route('logout') }}"><i class="bx bx-power-off font-size-16 align-middle mr-1 text-danger"></i> Logout</a>
            </div>
        </div>



    </div>
</div>
</header> <!-- ========== Left Sidebar Start ========== -->
<div class="vertical-menu">

    <div data-simplebar class="h-100">

        <!--- Sidemenu -->
        <div id="sidebar-menu">
            <!-- Left Menu Start -->
            <ul class="metismenu list-unstyled" id="side-menu">
                {{-- <li class="menu-title">Menu</li> --}}

               {{--  <li>
                    <a href="{{route('backend')}}" class="waves-effect">
                        <i class="bx bx-home-circle"></i><span class="badge badge-pill badge-info float-right">03</span>
                        <span>Trang chủ</span>
                    </a>
                </li> --}}
                <li class="menu-title">Apps</li>
                <li>
                    <li class=""><a href="{{route('category.index')}}" aria-expanded="false"><i class="bx bx-data"></i>Quản lý danh mục</a></li>
                </li>
                <li>
                    <a href="javascript: void(0);" class="has-arrow waves-effect" aria-expanded="true">
                        <i class="bx bx-store"></i>
                        <span>Quản lý sản phẩm</span>
                    </a>
                    <ul class="sub-menu mm-collapse" aria-expanded="true" style="">
                         <li class=""><a href="{{route('product.index')}}" aria-expanded="true"><i class="bx bx-package"></i>Sản phẩm</a>
                        </li>
                        <li class=""><a href="{{route('attr.index')}}" aria-expanded="false"><i class="bx bx-purchase-tag-alt"></i>Thuộc tính sản phẩm</a>
                        </li>

                        <li>
                            <li class=""><a href="{{route('config.index')}}" aria-expanded="false"><i class="bx bx-message"></i>Feedback</a></li>
                        </li>

                    </ul>
                    
                </li>
                <li>
                    <li class=""><a href="{{route('config.index')}}" aria-expanded="false"><i class="bx bx-cart"></i>Quản lý Đơn hàng</a></li>
                </li>
                <li>
                    <li class=""><a href="{{route('config.index')}}" aria-expanded="false"><i class="bx bx-terminal"></i>Thống kê</a></li>
                </li>

                <li>
                    <li class=""><a href="{{route('blog.index')}}" aria-expanded="false"><i class="bx bx-news"></i>Quản lý tin tức</a></li>
                </li>
                <li>
                    <li class=""><a href="{{route('banner.index')}}" aria-expanded="false"><i class="bx bx-images"></i>Quản lý banner</a></li>
                </li>
                <li>
                    <li class=""><a href="{{route('config.index')}}" aria-expanded="false"><i class="bx bx-user"></i>Quản lý tài khoản</a></li>
                </li>
                <li>
                    <li class=""><a href="{{route('config.index')}}" aria-expanded="false"><i class="bx bx-cog"></i>Quản lý cấu hình</a></li>
                </li>
                
            </ul>
        </div>
        <!-- Sidebar -->
    </div>
</div>
<!-- Left Sidebar End -->
<!-- ============================================================== -->
<!-- Start right Content here -->
<!-- ============================================================== -->
<div class="main-content">

    <div class="page-content">
        <div class="container-fluid">

            <!-- start page title -->
            <div class="row">
                <div class="col-12">
                    <div class="page-title-box d-flex align-items-center justify-content-between">
                        <h4 class="mb-0 font-size-18">@yield('title')</h4>

                        <div class="page-title-right">
                            <ol class="breadcrumb m-0">
                                <li class="breadcrumb-item"><a href="javascript: void(0);">@yield('namepage')</a></li>
                                <li class="breadcrumb-item active">@yield('title')</li>
                            </ol>
                        </div>

                    </div>
                </div>
            </div>
            <!-- end page title -->
            @yield('main')
        </div>
        <!-- container-fluid -->
    </div>
    <!-- End Page-content -->

    <!-- Modal -->
    <div class="modal fade exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
        <div class="modal-dialog modal-dialog-centered" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="exampleModalLabel">Order Details</h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="modal-body">
                    <p class="mb-2">Product id: <span class="text-primary">#SK2540</span></p>
                    <p class="mb-4">Billing Name: <span class="text-primary">Neal Matthews</span></p>

                    <div class="table-responsive">
                        <table class="table table-centered table-nowrap">
                            <thead>
                                <tr>
                                    <th scope="col">Product</th>
                                    <th scope="col">Product Name</th>
                                    <th scope="col">Price</th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <th scope="row">
                                        <div>
                                            <img src="{{url('public')}}/backend/images/product/img-7.png" alt="" class="avatar-sm">
                                        </div>
                                    </th>
                                    <td>
                                        <div>
                                            <h5 class="text-truncate font-size-14">Wireless Headphone (Black)</h5>
                                            <p class="text-muted mb-0">$ 225 x 1</p>
                                        </div>
                                    </td>
                                    <td>$ 255</td>
                                </tr>
                                <tr>
                                    <th scope="row">
                                        <div>
                                            <img src="{{url('public')}}/backend/images/product/img-4.png" alt="" class="avatar-sm">
                                        </div>
                                    </th>
                                    <td>
                                        <div>
                                            <h5 class="text-truncate font-size-14">Phone patterned cases</h5>
                                            <p class="text-muted mb-0">$ 145 x 1</p>
                                        </div>
                                    </td>
                                    <td>$ 145</td>
                                </tr>
                                <tr>
                                    <td colspan="2">
                                        <h6 class="m-0 text-right">Sub Total:</h6>
                                    </td>
                                    <td>
                                        $ 400
                                    </td>
                                </tr>
                                <tr>
                                    <td colspan="2">
                                        <h6 class="m-0 text-right">Shipping:</h6>
                                    </td>
                                    <td>
                                        Free
                                    </td>
                                </tr>
                                <tr>
                                    <td colspan="2">
                                        <h6 class="m-0 text-right">Total:</h6>
                                    </td>
                                    <td>
                                        $ 400
                                    </td>
                                </tr>
                            </tbody>
                        </table>
                    </div>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                </div>
            </div>
        </div>
    </div>
    <!-- end modal -->

    <footer class="footer">
        <div class="container-fluid">
            <div class="row">
                <div class="col-sm-6">
                    <script>document.write(new Date().getFullYear())</script> © Skote.
                </div>
                <div class="col-sm-6">
                    <div class="text-sm-right d-none d-sm-block">
                        Design & Develop by Themesbrand
                    </div>
                </div>
            </div>
        </div>
    </footer>
</div>
<!-- end main content-->

</div>
<!-- END layout-wrapper -->
<!-- Right Sidebar -->

<!-- /Right-bar -->
<!-- Right bar overlay-->
<div class="rightbar-overlay"></div>


<!-- JAVASCRIPT -->
<script src="{{url('public')}}/backend/libs/jquery/jquery.min.js"></script>
<script src="{{url('public')}}/backend/libs/bootstrap/js/bootstrap.bundle.min.js"></script>
<script src="{{url('public')}}/backend/libs/metismenu/metisMenu.min.js"></script>
<script src="{{url('public')}}/backend/libs/simplebar/simplebar.min.js"></script>
<script src="{{url('public')}}/backend/libs/node-waves/waves.min.js"></script>
<!-- App js -->
<script src="{{url('public')}}/backend/js/app.js"></script>

<!-- Required datatable js -->
<script src="{{url('public')}}/backend/libs/datatables.net/js/jquery.dataTables.min.js"></script>
<script src="{{url('public')}}/backend/libs/datatables.net-bs4/js/dataTables.bootstrap4.min.js"></script>
<!-- Buttons examples -->
<script src="{{url('public')}}/backend/libs/datatables.net-buttons/js/dataTables.buttons.min.js"></script>
<script src="{{url('public')}}/backend/libs/datatables.net-buttons-bs4/js/buttons.bootstrap4.min.js"></script>
<script src="{{url('public')}}/backend/libs/jszip/jszip.min.js"></script>
<script src="{{url('public')}}/backend/libs/pdfmake/build/pdfmake.min.js"></script>
<script src="{{url('public')}}/backend/libs/pdfmake/build/vfs_fonts.js"></script>
<script src="{{url('public')}}/backend/libs/datatables.net-buttons/js/buttons.html5.min.js"></script>
<script src="{{url('public')}}/backend/libs/datatables.net-buttons/js/buttons.print.min.js"></script>
<script src="{{url('public')}}/backend/libs/datatables.net-buttons/js/buttons.colVis.min.js"></script>
<!-- Responsive examples -->
<script src="{{url('public')}}/backend/libs/datatables.net-responsive/js/dataTables.responsive.min.js"></script>
<script src="{{url('public')}}/backend/libs/datatables.net-responsive-bs4/js/responsive.bootstrap4.min.js"></script>
<!-- Datatable init js -->
<script src="{{url('public')}}/backend/js/pages/datatables.init.js"></script> 

<!-- select 2 plugin -->
<script src="{{url('public')}}/backend/libs/select2/js/select2.min.js"></script>
<!-- dropzone plugin -->
<script src="{{url('public')}}/backend/libs/dropzone/min/dropzone.min.js"></script>
<!-- init js -->
<script src="{{url('public')}}/backend/js/pages/ecommerce-select2.init.js"></script>


<!-- Ion Range Slider-->
<script src="{{url('public')}}/backend/libs/ion-rangeslider/js/ion.rangeSlider.min.js"></script>
</script>

<script src="{{url('public')}}/backend/libs/bootstrap-datepicker/js/bootstrap-datepicker.min.js"></script>
<script src="{{url('public')}}/backend/libs/bootstrap-colorpicker/js/bootstrap-colorpicker.min.js"></script>
<script src="{{url('public')}}/backend/libs/bootstrap-timepicker/js/bootstrap-timepicker.min.js"></script>
<script src="{{url('public')}}/backend/libs/bootstrap-touchspin/jquery.bootstrap-touchspin.min.js"></script>
<script src="{{url('public')}}/backend/libs/bootstrap-maxlength/bootstrap-maxlength.min.js"></script>
<script src="{{url('public')}}/backend/libs/@chenfengyuan/datepicker/datepicker.min.js"></script>
<!-- Bootrstrap touchspin -->
<script src="{{url('public')}}/backend/libs/bootstrap-touchspin/jquery.bootstrap-touchspin.min.js"></script>

<script src="{{url('public')}}/backend/js/pages/ecommerce-cart.init.js"></script>
<!-- apexcharts -->
{{-- <script src="{{url('public')}}/backend/libs/apexcharts/apexcharts.min.js"></script>

<script src="{{url('public')}}/backend/js/pages/dashboard.init.js"></script> --}}
<!-- form advanced init -->
<script src="{{url('public')}}/backend/js/pages/form-advanced.init.js"></script>

<!-- ck editor -->
<script type="text/javascript" src="{{url('public')}}/backend/ckeditor/ckeditor.js"></script>

<!-- slug -->
<script src="{{url('public')}}/backend/js/slug.js"></script>
<!-- ckedittor custom url image-->
<script>
    CKEDITOR.replace( 'description' ,{
        filebrowserBrowseUrl : '../../filemanager/dialog.php?type=2&editor=ckeditor&fldr=',
        filebrowserUploadUrl : '../../filemanager/dialog.php?type=2&editor=ckeditor&fldr=',
        filebrowserImageBrowseUrl : '../../filemanager/dialog.php?type=1&editor=ckeditor&fldr=',
    });
    // CKEDITOR.replace( 'meta_desc' ,{
    //     filebrowserBrowseUrl : '../../filemanager/dialog.php?type=2&editor=ckeditor&fldr=',
    //     filebrowserUploadUrl : '../../filemanager/dialog.php?type=2&editor=ckeditor&fldr=',
    //     filebrowserImageBrowseUrl : '../../filemanager/dialog.php?type=1&editor=ckeditor&fldr=',
    // });
</script>
{{-- lấy ảnh từ reponsive filemanager --}}
<script src="{{url('public')}}/backend/js/getImage.js"></script>
{{--  use jquery to build a dynamic add/ remove form  --}}
<script src="{{url('public')}}/backend/js/dynamic.js"></script>
<script>
    $("#name").keyup(function(event) {
       var name=$("#name").val();
       //Đổi ký tự có dấu thành không dấu
       name = name.replace(/á|à|ả|ạ|ã|ă|ắ|ằ|ẳ|ẵ|ặ|â|ấ|ầ|ẩ|ẫ|ậ/gi, 'a');
       name = name.replace(/é|è|ẻ|ẽ|ẹ|ê|ế|ề|ể|ễ|ệ/gi, 'e');
       name = name.replace(/i|í|ì|ỉ|ĩ|ị/gi, 'i');
       name = name.replace(/ó|ò|ỏ|õ|ọ|ô|ố|ồ|ổ|ỗ|ộ|ơ|ớ|ờ|ở|ỡ|ợ/gi, 'o');
       name = name.replace(/ú|ù|ủ|ũ|ụ|ư|ứ|ừ|ử|ữ|ự/gi, 'u');
       name = name.replace(/ý|ỳ|ỷ|ỹ|ỵ/gi, 'y');
       name = name.replace(/đ/gi, 'd');
     //Xóa các ký tự đặt biệt
     name = name.replace(/\`|\~|\!|\@|\#|\||\$|\%|\^|\&|\*|\(|\)|\+|\=|\,|\.|\/|\?|\>|\<|\'|\"|\:|\;|_/gi, '');
     var arr=name.split(" ");
     var sku=[];
     for ( i = 0; i < arr.length; i++) {
       sku+=arr[i].charAt(0);
   }
   sku=sku.toUpperCase();
        // console.log(arr);
        // console.log(sku);
        var d= new Date().getMilliseconds();
        $('#sku').val(sku+d);
    });
    $("#id_attr").change(function(event) {
       var sku_detail= $('#sku').text();
       var id_attr= $('#id_attr option:selected').text();
       var sku_done=sku_detail+id_attr;
       console.log(sku_detail,id_attr);
       $('#sku_detail').val(sku_done);
   });
</script>
</body>
</html>