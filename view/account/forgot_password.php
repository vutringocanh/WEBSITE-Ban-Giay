
<!-- End Header Area -->

<!-- Start Banner Area -->
<section class="banner-area organic-breadcrumb">
  <div class="container">
    <div class="breadcrumb-banner d-flex flex-wrap align-items-center justify-content-end">
      <div class="col-first">
        <br>
        <h1>Quên Mật Khẩu</h1>
        <nav class="d-flex align-items-center">
          <a href="index.html">Trang chủ<span class="lnr lnr-arrow-right"></span></a>
          <a href="index.php?act=edit_user">Quên Mật Khẩu</a>
        </nav>
      </div>
    </div>
  </div>
</section>
<!-- End Banner Area -->

<!--================Login Box Area =================-->
<section class="login_box_area section_gap">
  <div class="container">
    <div class="row justify-content-around">
      <div class="col-lg-6">
        <div class="login_form_inner">
          <h3>Quên Mật Khẩu </h3>

          <h2 class="thongbao">
                        <?php 
                       
                        if(isset($thongbao)&&($thongbao!="")){
                            echo $thongbao;
                        }
                        ?>
                        </h2>
                     
          <form class="row login_form pb-3" action="index.php?act=forgot_password" method="post"   id="registrationForm" novalidate="novalidate">
          <div class="col-md-12 form-group">
            <input type="text" class="form-control" id="last_name" name="username"  placeholder="Tài khoản">
            </div>
            <div class="col-md-12 form-group">
            <input type="text" class="form-control" id="last_name" name="email"  placeholder="Email">
            </div>
            <div class="col-md-12 form-group">
            <input type="text" class="form-control" id="last_name" name="phone"  placeholder="Phone">
            </div>
           
            <div class="col-md-12 form-group">
              <button type="submit" value="submit" name="forgot_password" class="primary-btn">Gửi </button>
              
            </div>
          </form>
        </div>
      </div>
    </div>


<!--================End Login Box Area =================-->


  </div>
</section>


<script src="js/vendor/jquery-2.2.4.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.11.0/umd/popper.min.js" integrity="sha384-b/U6ypiBEHpOf/4+1nzFpr53nxSS+GLCkfwBdFNTxtclqqenISfwAzpKaMNFNmj4"
        crossorigin="anonymous"></script>
<script src="js/vendor/bootstrap.min.js"></script>
<script src="js/jquery.ajaxchimp.min.js"></script>
<script src="js/jquery.nice-select.min.js"></script>
<script src="js/jquery.sticky.js"></script>
<script src="js/nouislider.min.js"></script>
<script src="js/jquery.magnific-popup.min.js"></script>
<script src="js/owl.carousel.min.js"></script>
<!--gmaps Js-->
<script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyCjCGmQ0Uq4exrzdcL6rvxywDDOvfAu6eE"></script>
<script src="js/gmaps.min.js"></script>
<script src="js/main.js"></script>
</body>
