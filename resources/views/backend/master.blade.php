<!DOCTYPE html>
<html lang="en">


<!-- Mirrored from themesbrand.com/skote/layouts/vertical/index.html by HTTrack Website Copier/3.x [XR&CO'2014], Tue, 30 Jun 2020 08:04:17 GMT -->
<head>

    <meta charset="utf-8" />
    <title>@yield('title')</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta content="Premium Multipurpose Admin & Dashboard Template" name="description" />
    <meta content="Themesbrand" name="author" />
    <!-- App favicon -->
    <link rel="shortcut icon" href="{{url('public')}}/backend/images/favicon.ico">
    <!-- Bootstrap Css -->
    <!-- admin lte -->
    <link href="{{url('public')}}/backend/css/AdminLTE.css" id="app-style" rel="stylesheet" type="text/css" />
    <link href="{{url('public')}}/backend/css/bootstrap.min.css" id="bootstrap-style" rel="stylesheet" type="text/css" />
    <!-- Icons Css -->
    <link href="{{url('public')}}/backend/css/icons.min.css" rel="stylesheet" type="text/css" />
    <!-- App Css-->
    <link href="{{url('public')}}/backend/css/app.min.css" id="app-style" rel="stylesheet" type="text/css" />

    <!-- DataTables -->
    <link href="{{url('public')}}/backend/libs/datatables.net-bs4/css/dataTables.bootstrap4.min.css" rel="stylesheet" type="text/css" />
    <link href="{{url('public')}}/backend/libs/datatables.net-buttons-bs4/css/buttons.bootstrap4.min.css" rel="stylesheet" type="text/css" />
    <!-- Responsive datatable examples -->
    <link href="{{url('public')}}/backend/libs/datatables.net-responsive-bs4/css/responsive.bootstrap4.min.css" rel="stylesheet" type="text/css" />
    <!-- select2 css -->
    <link href="{{url('public')}}/backend/libs/select2/css/select2.min.css" rel="stylesheet" type="text/css" />

    <!-- dropzone css -->
    <link href="{{url('public')}}/backend/libs/dropzone/min/dropzone.min.css" rel="stylesheet" type="text/css" />  
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
                        <a href="index.html" class="logo logo-dark">
                            <span class="logo-sm">
                                <img src="{{url('public')}}/backend/images/logo.svg" alt="" height="22">
                            </span>
                            <span class="logo-lg">
                                <img src="{{url('public')}}/backend/images/logo-dark.png" alt="" height="17">
                            </span>
                        </a>

                        <a href="index.html" class="logo logo-light">
                            <span class="logo-sm">
                                <img src="{{url('public')}}/backend/images/logo-light.svg" alt="" height="22">
                            </span>
                            <span class="logo-lg">
                                <img src="{{url('public')}}/backend/images/logo-light.png" alt="" height="19">
                            </span>
                        </a>
                    </div>

                    <button type="button" class="btn btn-sm px-3 font-size-16 header-item waves-effect" id="vertical-menu-btn">
                        <i class="fa fa-fw fa-bars"></i>
                    </button>

                    <!-- App Search-->
                    <form class="app-search d-none d-lg-block">
                        <div class="position-relative">
                            <input type="text" class="form-control" placeholder="Search...">
                            <span class="bx bx-search-alt"></span>
                        </div>
                    </form>


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
                <button type="button" class="btn header-item noti-icon waves-effect"
                data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                <i class="bx bx-customize"></i>
            </button>
            <div class="dropdown-menu dropdown-menu-lg dropdown-menu-right">
                <div class="px-lg-2">
                    <div class="row no-gutters">
                        <div class="col">
                            <a class="dropdown-icon-item" href="#">
                                <img src="{{url('public')}}/backend/images/brands/github.png" alt="Github">
                                <span>GitHub</span>
                            </a>
                        </div>
                        <div class="col">
                            <a class="dropdown-icon-item" href="#">
                                <img src="{{url('public')}}/backend/images/brands/bitbucket.png" alt="bitbucket">
                                <span>Bitbucket</span>
                            </a>
                        </div>
                        <div class="col">
                            <a class="dropdown-icon-item" href="#">
                                <img src="{{url('public')}}/backend/images/brands/dribbble.png" alt="dribbble">
                                <span>Dribbble</span>
                            </a>
                        </div>
                    </div>

                    <div class="row no-gutters">
                        <div class="col">
                            <a class="dropdown-icon-item" href="#">
                                <img src="{{url('public')}}/backend/images/brands/dropbox.png" alt="dropbox">
                                <span>Dropbox</span>
                            </a>
                        </div>
                        <div class="col">
                            <a class="dropdown-icon-item" href="#">
                                <img src="{{url('public')}}/backend/images/brands/mail_chimp.png" alt="mail_chimp">
                                <span>Mail Chimp</span>
                            </a>
                        </div>
                        <div class="col">
                            <a class="dropdown-icon-item" href="#">
                                <img src="{{url('public')}}/backend/images/brands/slack.png" alt="slack">
                                <span>Slack</span>
                            </a>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <div class="dropdown d-none d-lg-inline-block ml-1">
            <button type="button" class="btn header-item noti-icon waves-effect" data-toggle="fullscreen">
                <i class="bx bx-fullscreen"></i>
            </button>
        </div>

        <div class="dropdown d-inline-block">
            <button type="button" class="btn header-item noti-icon waves-effect" id="page-header-notifications-dropdown"
            data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
            <i class="bx bx-bell bx-tada"></i>
            <span class="badge badge-danger badge-pill">3</span>
        </button>
        <div class="dropdown-menu dropdown-menu-lg dropdown-menu-right p-0"
        aria-labelledby="page-header-notifications-dropdown">
        <div class="p-3">
            <div class="row align-items-center">
                <div class="col">
                    <h6 class="m-0"> Notifications </h6>
                </div>
                <div class="col-auto">
                    <a href="#!" class="small"> View All</a>
                </div>
            </div>
        </div>
        <div data-simplebar style="max-height: 230px;">
            <a href="#" class="text-reset notification-item">
                <div class="media">
                    <div class="avatar-xs mr-3">
                        <span class="avatar-title bg-primary rounded-circle font-size-16">
                            <i class="bx bx-cart"></i>
                        </span>
                    </div>
                    <div class="media-body">
                        <h6 class="mt-0 mb-1">Your order is placed</h6>
                        <div class="font-size-12 text-muted">
                            <p class="mb-1">If several languages coalesce the grammar</p>
                            <p class="mb-0"><i class="mdi mdi-clock-outline"></i> 3 min ago</p>
                        </div>
                    </div>
                </div>
            </a>
            <a href="#" class="text-reset notification-item">
                <div class="media">
                    <img src="{{url('public')}}/backend/images/users/avatar-3.jpg"
                    class="mr-3 rounded-circle avatar-xs" alt="user-pic">
                    <div class="media-body">
                        <h6 class="mt-0 mb-1">James Lemire</h6>
                        <div class="font-size-12 text-muted">
                            <p class="mb-1">It will seem like simplified English.</p>
                            <p class="mb-0"><i class="mdi mdi-clock-outline"></i> 1 hours ago</p>
                        </div>
                    </div>
                </div>
            </a>
            <a href="#" class="text-reset notification-item">
                <div class="media">
                    <div class="avatar-xs mr-3">
                        <span class="avatar-title bg-success rounded-circle font-size-16">
                            <i class="bx bx-badge-check"></i>
                        </span>
                    </div>
                    <div class="media-body">
                        <h6 class="mt-0 mb-1">Your item is shipped</h6>
                        <div class="font-size-12 text-muted">
                            <p class="mb-1">If several languages coalesce the grammar</p>
                            <p class="mb-0"><i class="mdi mdi-clock-outline"></i> 3 min ago</p>
                        </div>
                    </div>
                </div>
            </a>

            <a href="#" class="text-reset notification-item">
                <div class="media">
                    <img src="{{url('public')}}/backend/images/users/avatar-4.jpg"
                    class="mr-3 rounded-circle avatar-xs" alt="user-pic">
                    <div class="media-body">
                        <h6 class="mt-0 mb-1">Salena Layfield</h6>
                        <div class="font-size-12 text-muted">
                            <p class="mb-1">As a skeptical Cambridge friend of mine occidental.</p>
                            <p class="mb-0"><i class="mdi mdi-clock-outline"></i> 1 hours ago</p>
                        </div>
                    </div>
                </div>
            </a>
        </div>
        <div class="p-2 border-top">
            <a class="btn btn-sm btn-link font-size-14 btn-block text-center" href="javascript:void(0)">
                <i class="mdi mdi-arrow-right-circle mr-1"></i> View More..
            </a>
        </div>
    </div>
</div>

<div class="dropdown d-inline-block">
    <button type="button" class="btn header-item waves-effect" id="page-header-user-dropdown"
    data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
    <img class="rounded-circle header-profile-user" src="{{url('public')}}/backend/images/users/avatar-1.jpg"
    alt="Header Avatar">
    <span class="d-none d-xl-inline-block ml-1">Henry</span>
    <i class="mdi mdi-chevron-down d-none d-xl-inline-block"></i>
</button>
<div class="dropdown-menu dropdown-menu-right">
    <!-- item-->
    <a class="dropdown-item" href="#"><i class="bx bx-user font-size-16 align-middle mr-1"></i> Profile</a>
    <a class="dropdown-item" href="#"><i class="bx bx-wallet font-size-16 align-middle mr-1"></i> My Wallet</a>
    <a class="dropdown-item d-block" href="#"><span class="badge badge-success float-right">11</span><i class="bx bx-wrench font-size-16 align-middle mr-1"></i> Settings</a>
    <a class="dropdown-item" href="#"><i class="bx bx-lock-open font-size-16 align-middle mr-1"></i> Lock screen</a>
    <div class="dropdown-divider"></div>
    <a class="dropdown-item text-danger" href="#"><i class="bx bx-power-off font-size-16 align-middle mr-1 text-danger"></i> Logout</a>
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
                <li class="menu-title">Menu</li>

                <li>
                    <a href="{{route('backend')}}" class="waves-effect">
                        <i class="bx bx-home-circle"></i><span class="badge badge-pill badge-info float-right">03</span>
                        <span>Dashboards</span>
                    </a>
                </li>
                <li class="menu-title">Apps</li>
              <!--   <li>
                    <a href="javascript: void(0);" class="has-arrow waves-effect">
                        <i class="dripicons-blog"></i>
                        <span>Quản lý bán hàng</span>
                    </a>
                    <ul class="sub-menu" aria-expanded="false">
                        <li><a href="{{route('category.index')}}"><i class="dripicons-dot"></i>Danh mục</a></li>
                        <li><a href="{{route('product.index')}}"><i class="dripicons-dot"></i>Sản phẩm</a></li>
                    </ul>

                </li> -->
                <li class="">
                    <a href="javascript: void(0);" class="has-arrow waves-effect" aria-expanded="true">
                        <i class="bx bx-store"></i>
                        <span>Quản lý bán hàng</span>
                    </a>
                    <ul class="sub-menu mm-collapse" aria-expanded="true" style="">
                        <li class=""><a href="{{route('category.index')}}" aria-expanded="false"><i class="bx bx-list-ul"></i>Danh mục</a></li>

                        <li class=""><a href="javascript: void(0);" class="has-arrow" aria-expanded="true"><i class="bx bx-store"></i>Sản phẩm</a>
                            <ul class="sub-menu mm-collapse" aria-expanded="true" style="">
                                <li class=""><a href="{{route('product.index')}}" aria-expanded="false"><i class="dripicons-dot"></i>Danh sách</a></li>
                                <li><a href="{{route('product.create')}}" aria-expanded="false"><i class="dripicons-dot"></i>Thêm mới</a></li>
                            </ul>
                        </li>
                    </ul>
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
                        <h4 class="mb-0 font-size-18">Dashboard</h4>

                        <div class="page-title-right">
                            <ol class="breadcrumb m-0">
                                <li class="breadcrumb-item"><a href="javascript: void(0);">Dashboards</a></li>
                                <li class="breadcrumb-item active">Dashboard</li>
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
<!-- ck editor -->
<script type="text/javascript" src="{{url('public')}}/backend/ckeditor/ckeditor.js"></script>

<!-- slug -->
<script src="{{url('public')}}/backend/js/slug.js"></script>
<!-- ckedittor -->
<script>
CKEDITOR.replace( 'description' ,{
    filebrowserBrowseUrl : '../../filemanager/dialog.php?type=2&editor=ckeditor&fldr=',
    filebrowserUploadUrl : '../../filemanager/dialog.php?type=2&editor=ckeditor&fldr=',
    filebrowserImageBrowseUrl : '../../filemanager/dialog.php?type=1&editor=ckeditor&fldr='
});
</script>
<!-- Get value Image product -->
<script>
    // 1 image
    $('#modalImage').on('hide.bs.modal',function(){
      // Lấy value của input có id = image
      var image = $('#image').val();
     $('#img').attr('src',image);
    });
    // Many image
     $('#modalImages').on('hide.bs.modal',function(){
      // Lấy value của input có id = images
      var images = $('#images').val();
      var imgList= $.parseJSON(images);
        console.log(imgList);
        var _html='';
      imgList.forEach( function(element, index) {
        _html+='<div class="col-md-3"><div class="card text-center">';
        _html+='<img class="card-img-top imgs" src='+element+'>';
        _html+='</div></div>';
      });
       $('.anh-nhieu').html(_html);
    });
</script>
</body>

</html>