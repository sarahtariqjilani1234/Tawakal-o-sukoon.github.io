<!DOCTYPE html>
<html lang="en">
<?php

include('db.php');
session_start();

?>

<head>
  <meta charset="utf-8">
  <meta content="width=device-width, initial-scale=1.0" name="viewport">

  <title>Tawkal-O-Sukoon</title>

  <!-- Google Fonts -->
  <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,400,400i,600,700|Raleway:300,400,400i,500,500i,700,800,900" rel="stylesheet">

  <!-- Vendor CSS Files -->
  <link href="assets/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
  <link href="assets/vendor/icofont/icofont.min.css" rel="stylesheet">
  <link href="assets/vendor/animate.css/animate.min.css" rel="stylesheet">
  <link href="assets/vendor/font-awesome/css/font-awesome.min.css" rel="stylesheet">
  <link href="assets/vendor/nivo-slider/css/nivo-slider.css" rel="stylesheet">
  <link href="assets/vendor/owl.carousel/assets/owl.carousel.min.css" rel="stylesheet">
  <link href="assets/vendor/venobox/venobox.css" rel="stylesheet">

  <!-- Main CSS File -->
  <link href="assets/css/style.css" rel="stylesheet">
</head>
<style>
.main {
  padding: 16px;
  margin-top: 30px;
  height: 1500px; /* Used in this example to enable scrolling */
}
</style>
<body data-spy="scroll" data-target="#navbar-example">

  <!-- ======= Header ======= -->
  <header id="header" class="fixed-top">
    <div class="container d-flex">

      <div class="logo mr-auto">
        <h1 class="text-light"><a href="index.php"><span>Tawakal-</span><span>O-</span><span>Sukoon</a></h1>
      </div>

    <nav class="nav-menu d-none d-lg-block">
        <ul>
          <li class="active"><a href="index.php">Home</a></li>
          <li><a href="index.php #about">About</a></li>
          <li><a href="index.php #emotion">Emotions</a></li>
          <li><a href="index.php #prayers">Prayers</a></li>
          <li><a href="index.php #portfolio">Screens</a></li>
          <li><a href="index.php #blog">Blog</a></li>
          <li><a href="index.php #contact">Contact</a></li>
          <li><a href="loginn.php">Login</a></li>
        </ul>
      </nav><!-- .nav-menu -->
    </div>
  </header><!-- End Header -->


 <div id="blog" class="blog-area">
      <div class="blog-inner area-padding">
        <div class="blog-overly"></div>
        <div class="container ">
          <div class="row">
            <div class="col-md-12 col-sm-12 col-xs-12">
              <div class="section-headline text-center">
              <br>  <h2>Anxiety</h2></div>
            <div id="myBtnContainer">
  
  <button class="btn" onclick="filterSelection('verses')"><li><a href="#verses"> Quranic verse for Anxiety</a></li></button>
  <button class="btn" onclick="filterSelection('dua')"><li><a href="#hadith"> Dua for Anxiety</a></li></button></ul>
 <button class="btn" onclick="filterSelection('hadees')"><li><a href="#hadees"> Hadees for Anxiety</a></li></button></ul>

</div>
              </div>
              </div>
              <br><br>
<div class="blog-inner area-padding">
        <div class="blog-overly"></div>
        <div class="container ">
          <div class="row">
            <div class="col-md-12 col-sm-12 col-xs-12">

              <div  id="verses" class="section-headline hadith alignleft"><h2><p>Quranic Verse for Anxiety</p></h2></div></div></div>
                  
               <div class="hadith text-center"><h4><p>
<?php
$mysqli = mysqli_connect('localhost','root','','projects');
$sql = "SELECT * FROM quranic_verse where category = 'anxiety'";
$result = mysqli_query($mysqli, $sql);

while ($row= mysqli_fetch_array($result)) {
  ?>
     <img src="<?php echo $row['file text']; ?>"/>
<?php
}
?> 
       
<div class="blog-inner area-padding">
        <div class="blog-overly"></div>
        <div class="container ">
          <div class="row">
       <div id="dua"  class="col-md-12 col-sm-12 col-xs-12">
 <div id="myBtnContainer">
  <button class="btn" onclick="filterSelection('verses')"><li><a href="#verses"> Quranic verse for Anxiety</a></li></button>
  <button class="btn" onclick="filterSelection('dua')"><li><a href="#Dua"> Dua for Anxiety</a></li></button></ul>
 <button class="btn" onclick="filterSelection('hadees')"><li><a href="#hadees"> Hadees for Anxiety</a></li></button></ul>

</div>
              <div id="hadith" class="section-headline hadith alignleft"><h2><p>Dua for Anxiety</p></h2></div></div></div>
  
           
                  
               <div  class="hadith text-center"><h4><p>
<?php
$mysqli = mysqli_connect('localhost','root','','projects');
$sql = "SELECT * FROM duaa where category = 'anxiety'";
$result = mysqli_query($mysqli, $sql);

while ($row= mysqli_fetch_array($result)) {
  ?>
     <img src="<?php echo $row['file text']; ?>"/><br>
<?php
}
?>        </div>
          </div>
            </div>
            </div>
<div class="blog-inner area-padding">
        <div class="blog-overly"></div>
        <div class="container ">
          <div class="row">
       <div id="hadith"  class="col-md-12 col-sm-12 col-xs-12">
 <div id="myBtnContainer">
  <button class="btn" onclick="filterSelection('verses')"><li><a href="#verses"> Quranic verses for Anxiety</a></li></button>
  <button class="btn" onclick="filterSelection('dua')"><li><a href="#dua"> Dua for Anxiety</a></li></button></ul>
 <button class="btn" onclick="filterSelection('hadees')"><li><a href="#hadees"> Hadees for Anxiety</a></li></button></ul>

</div>
              <div id="hadees" class="section-headline hadith alignleft"><h2><p>Hadees for Anxiety</p></h2></div></div></div>
  
           
                  
               <div  class="hadith text-center"><h4><p>
<?php
$mysqli = mysqli_connect('localhost','root','','projects');
$sql = "SELECT * FROM hadees where category = 'anxiety'";
$result = mysqli_query($mysqli, $sql);

while ($row= mysqli_fetch_array($result)) {
  ?>
     <img src="<?php echo $row['file text']; ?>"/>
<?php
}
?>      
            </div>
          </div>
            </div>
            </div>

  
<!-- ======= Footer ======= -->
  <footer>
    <div class="footer-area">
      <div class="container">
        <div class="row">
          <div class="col-md-4 col-sm-4 col-xs-12">
            <div class="footer-content">
              <div class="footer-head">
                <div class="footer-logo">
                  <h2>Tawakal-O-Sukoon</h2>
                </div>
                <div class="footer-icons">
                  <ul>
                    <li>
                      <a href="https://www.facebook.com/"><i class="fa fa-facebook"></i></a>
                    </li>
                    <li>
                      <a href="twitter.com"><i class="fa fa-twitter"></i></a>
                    </li>
                    <li>
                      <a href="https://accounts.google.com/ServiceLogin/signinchooser?passive=1209600&continue=https%3A%2F%2Faccounts.google.com%2Fb%2F0%2FAddMailService&followup=https%3A%2F%2Faccounts.google.com%2Fb%2F0%2FAddMailService&flowName=GlifWebSignIn&flowEntry=ServiceLogin"><i class="fa fa-google"></i></a>
                    </li>
                    <li>
                      <a href="www.pinterest.com"><i class="fa fa-pinterest"></i></a>
                    </li>
                  </ul>
                </div>
              </div>
            </div>
          </div>
          <!-- end single footer -->
          <div class="col-md-4 col-sm-4 col-xs-12">
            <div class="footer-content">
              <div class="footer-head">
                <h4>Information</h4>
                <p>
                  Tawakal-O-Sukoon is a mobile application<br>for advanced features proceed to our App.
                </p>
                <div class="footer-contacts">
                  <p><span>Tel:</span> +3132694574</p>
                  <p><span>Email:</span> contact@example.com</p>
                  <p><span>Working Hours:</span> 9am-5pm</p>
                </div>
              </div>
            </div>
          </div>
          <!-- end single footer -->
          <div class="col-md-4 col-sm-4 col-xs-12">
            <div class="footer-content">
              <div class="footer-head">
                <h4><a href="instagram.com">Instagram</h4>
                <div class="flicker-img">
                  <a href="#"><img src="assets/img/instagram/1.jpg" alt=""></a>
                  <a href="#"><img src="assets/img/instagram/5.jpg" alt=""></a>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
    <div class="footer-area-bottom">
      <div class="container">
        <div class="row">
          <div class="col-md-12 col-sm-12 col-xs-12">
            <div class="copyright text-center">
              <p>
                &copy; Copyright <strong>Tawakal-O-Sukoon</strong>. All Rights Reserved
              </p>
            </div>
          </div>
        </div>
      </div>
    </div>
  </footer><!-- End  Footer -->

  <a href="#" class="back-to-top"><i class="fa fa-chevron-up"></i></a>
  <div id="preloader"></div>

  <!-- Vendor JS Files -->
  <script src="assets/vendor/jquery/jquery.min.js"></script>
  <script src="assets/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
  <script src="assets/vendor/jquery.easing/jquery.easing.min.js"></script>
  <script src="assets/vendor/php-email-form/validate.js"></script>
  <script src="assets/vendor/appear/jquery.appear.js"></script>
  <script src="assets/vendor/knob/jquery.knob.js"></script>
  <script src="assets/vendor/parallax/parallax.js"></script>
  <script src="assets/vendor/wow/wow.min.js"></script>
  <script src="assets/vendor/isotope-layout/isotope.pkgd.min.js"></script>
  <script src="assets/vendor/nivo-slider/js/jquery.nivo.slider.js"></script>
  <script src="assets/vendor/owl.carousel/owl.carousel.min.js"></script>
  <script src="assets/vendor/venobox/venobox.min.js"></script>

  <!-- Main JS File -->
  <script src="assets/js/main.js"></script>