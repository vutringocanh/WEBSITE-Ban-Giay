<!DOCTYPE html>
<html lang="zxx" class="no-js">
<head>
    <!-- Mobile Specific Meta -->
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <!-- Favicon-->
    <link rel="shortcut icon" href="img/fav.png">
    <!-- Author Meta -->
    <meta name="author" content="CodePixar">
    <!-- Meta Description -->
    <meta name="description" content="">
    <!-- Meta Keyword -->
    <meta name="keywords" content="">
    <!-- meta character set -->
    <meta charset="UTF-8">
    <!-- Site Title -->
    <title>Shop bán giày dép</title>
    <!--
        CSS
        ============================================= -->
    <link rel="stylesheet" href="css/linearicons.css">
    <link rel="stylesheet" href="css/font-awesome.min.css">
    <link rel="stylesheet" href="css/themify-icons.css">
    <link rel="stylesheet" href="css/bootstrap.css">
    <link rel="stylesheet" href="css/owl.carousel.css">
    <link rel="stylesheet" href="css/nice-select.css">
    <link rel="stylesheet" href="css/nouislider.min.css">
    <link rel="stylesheet" href="css/ion.rangeSlider.css"/>
    <link rel="stylesheet" href="css/ion.rangeSlider.skinFlat.css"/>
    <link rel="stylesheet" href="css/magnific-popup.css">
    <link rel="stylesheet" href="css/main.css">
    <link rel="stylesheet" href="css/jquerysctipttop.css">
    <link rel="stylesheet" href="css/availability-calendar.css">
</head>
<body>
<!-- Start Header Area -->
<header class="header_area sticky-header">
    <div class="main_menu">
        <nav class="navbar navbar-expand-lg navbar-light main_box">
            <div class="container">
                <!-- Brand and toggle get grouped for better mobile display -->
                <a class="navbar-brand logo_h" href="index.php"><img src="img/logo12.png" alt="" width="270px"  ></a>
                <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent"
                        aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <!-- Collect the nav links, forms, and other content for toggling -->
                <div class="collapse navbar-collapse offset" id="navbarSupportedContent">
                    <ul class="nav navbar-nav menu_nav ml-auto">
                        <li class="nav-item"><a class="nav-link" href="index.php">Trang chủ</a></li>
                        <li class="nav-item submenu dropdown">
                            <a href="#" class="nav-link dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true"
                               aria-expanded="false">Nam</a>
                            <!-- <ul class="dropdown-menu">
                                <li class="nav-item"><a class="nav-link" href="category.html">Boots</a></li>
                                <li class="nav-item"><a class="nav-link" href="category.html">Sandal</a></li>
                                <li class="nav-item"><a class="nav-link" href="category.html">Giày thể thao</a></li>
                                <li class="nav-item"><a class="nav-link" href="category.html">Giày chạy bộ</a></li>
                                <li class="nav-item"><a class="nav-link" href="category.html">Giày đá banh</a></li>
                            </ul> -->
                        </li>
                        <li class="nav-item submenu dropdown active">
                            <a href="#" class="nav-link dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true"
                               aria-expanded="false">Nữ</a>
                            <!-- <ul class="dropdown-menu">
                                <li class="nav-item "><a class="nav-link" href="category.html">Boots</a></li>
                                <li class="nav-item"><a class="nav-link" href="category.html">Sandal</a></li>
                                <li class="nav-item"><a class="nav-link" href="category.html">Giày thể thao nữ</a></li>
                                <li class="nav-item"><a class="nav-link" href="category.html">Giày chạy bộ - đi bộ</a></li>
                                <li class="nav-item"><a class="nav-link" href="category.html">Giày búp bê</a></li>
                            </ul> -->
                        </li>

                        <li class="nav-item"><a class="nav-link" href="index.php?act=contact">Liên hệ</a></li>
                    </ul>
                    <ul class="nav navbar-nav navbar-right">
                        <!--            <li class="nav-item"><a href="login.html" class="cart" id="cart"><span class="ti-bag"></span></a></li>-->
                        <li><a class="nav-link" href="index.php?act=cart" id="cart"><i class="ti-bag"></i><span class="badge"><p>3</p></span></a></li>
                    
                    
                    
                    
                    <?php
                    if(isset($_SESSION['username'])){
                    extract($_SESSION['username']);
                   ?>
                   <?php
                        if($role=='1'){
                        ?>
                        <li>
                        <li class="nav-item"><a class="nav-link" href="admin/index.php"> Đăng nhập admin</a></li>
                        </li>
                        <?php }?>
                    <li class="nav-item"><a class="nav-link" href="index.php?act=edit_user"> Cập Nhật Tài Khoản</a></li>
                    <li class="nav-item"><a class="nav-link" href="index.php?act=forgot_password"> Quên Mật Khẩu</a></li>
                    <li class="nav-item"><a class="nav-link" href="index.php?act=logout"> Đăng Xuất </a> </li>
                 
                   <?php
                    }else{
                       
                    }
                   ?>
                        <li class="nav-item"><a href="index.php?act=login" class="cart"><span class="ti-user"></span></a></li>
                        <li class="nav-item">
                            <button class="search"><span class="lnr lnr-magnifier" id="search"></span></button>
                        </li>
                        
                    </ul>
                </div>
            </div>
        </nav>
    </div>


    <!--            open shopping cart-->

    <!-- <div class="shopping-cart">
        <div class="shopping-cart-header">
            <i class="ti-bag"></i><span class="badge">3</span>
            <div class="shopping-cart-total">
                <span class="lighter-text">Tổng:</span>
                <span class="main-color-text">$2,229.97</span>
            </div>
        </div> -->
         <!--end shopping-cart-header -->

        <!-- <ul class="shopping-cart-items">
            <li class="clearfix">
                <img src="https://s3-us-west-2.amazonaws.com/s.cdpn.io/195612/cart-item1.jpg" alt="item1" />
                <span class="item-name">Sony DSC-RX100M III</span>
                <span class="item-price">$849.99</span>
                <span class="item-quantity">Quantity: 01</span>
            </li>

            <li class="clearfix">
                <img src="https://s3-us-west-2.amazonaws.com/s.cdpn.io/195612/cart-item2.jpg" alt="item1" />
                <span class="item-name">KS Automatic Mechanic...</span>
                <span class="item-price">$1,249.99</span>
                <span class="item-quantity">Quantity: 01</span>
            </li>

            <li class="clearfix">
                <img src="https://s3-us-west-2.amazonaws.com/s.cdpn.io/195612/cart-item3.jpg" alt="item1" />
                <span class="item-name">Kindle, 6" Glare-Free To...</span>
                <span class="item-price">$129.99</span>
                <span class="item-quantity">Quantity: 01</span>
            </li>
        </ul> -->
        <!-- <a href="index.php?act=cart" class="button">Checkout</a> -->
    <!-- </div> -->
     <!--end shopping-cart -->


    <div class="search_input" id="search_input_box">
        <div class="container">
            <form class="d-flex justify-content-between">
                <input type="text" class="form-control" id="search_input" placeholder="Tìm kiếm">
                <button type="submit" class="btn"></button>
                <span class="lnr lnr-cross" id="close_search" title="Close Search"></span>
            </form>
        </div>
    </div>

</header>
