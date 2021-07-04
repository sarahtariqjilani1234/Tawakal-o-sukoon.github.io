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

<body data-spy="scroll" data-target="#navbar-example">

  <!-- ======= Header ======= -->
  <header id="header" class="fixed-top">
    <div class="container d-flex">

      <div class="logo mr-auto">
        <h1 class="text-light"><a href="index.php"><span>Tawakal-</span><span>O-</span><span>Sukoon</a></h1>
      </div>

      <nav class="nav-menu d-none d-lg-block">
        <ul>
          <li class="active"><a href="index1.php">Home</a></li>
          <li><a href="index1.php #about">About</a></li>
          <li><a href="index1.php #emotion">Emotions</a></li>
          <li><a href="index1.php #blog">Blog</a></li>
          <li><a href="index1.php #contact">Contact</a></li>
          <li><a href="logout.php">Log Out</a></li>
<li style="color:white;font-size:15px;text-align: justify;padding:5px;">
<?php

echo " ".$_SESSION['Name'];
?>
</li>
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
               <br> <h2>Emptiness</h2></div>
            <div id="myBtnContainer">

  <button class="btn" onclick="filterSelection('verses')"><li><a href="#verses"> Quranic verse for Emptiness</a></li></button>
  <button class="btn" onclick="filterSelection('dua')"><li><a href="#dua"> Dua for Emptiness</a></li></button></ul>
<button class="btn" onclick="filterSelection('hadees')"><li><a href="#hadees"> Hadees for Emptiness</a></li></button></ul>
<button class="btn" onclick="filterSelection('com')"><li><a href="#com"> Comment for Emptiness</a></li></button></ul>
</div>
              </div>
              </div>
              <br><br>
<div class="blog-inner area-padding">
        <div class="blog-overly"></div>
        <div class="container ">
          <div class="row">
            <div class="col-md-12 col-sm-12 col-xs-12">
              <div id="verses" class="section-headline hadith alignleft"><h2><p>Quranic Verse for Emptiness</p></h2></div></div></div>
                  
               <div class="hadith text-center"><h4><p>
<?php
$mysqli = mysqli_connect('localhost','root','','projects');
$sql = "SELECT * FROM quranic_verse where category = 'emptiness'";
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
            <div class="col-md-12 col-sm-12 col-xs-12">
      <div id="myBtnContainer">

  <button class="btn" onclick="filterSelection('verses')"><li><a href="#verses"> Quranic verse for Emptiness</a></li></button>
  <button class="btn" onclick="filterSelection('dua')"><li><a href="#dua"> Dua for Emptiness</a></li></button></ul>
<button class="btn" onclick="filterSelection('hadees')"><li><a href="#hadees"> Hadees for Emptiness</a></li></button></ul>
<button class="btn" onclick="filterSelection('com')"><li><a href="#com"> Comment for Emptiness</a></li></button></ul>
</div>
              <div id="dua" class="section-headline hadith alignleft"><h2><p>Dua for Emptiness</p></h2></div></div></div>
                  
               <div class="hadith text-center"><h4><p>
<?php
$mysqli = mysqli_connect('localhost','root','','projects');
$sql = "SELECT * FROM duaa  where category = 'emptiness'";
$result = mysqli_query($mysqli, $sql);

while ($row= mysqli_fetch_array($result)) {
  ?>
     <img src="<?php echo $row['file text']; ?>"/><br>
<?php
}
?>      
            </div>
          </div>
            </div>
            </div>
<div class="blog-inner area-padding">
        <div class="blog-overly"></div>
        <div class="container ">
          <div class="row">
            <div class="col-md-12 col-sm-12 col-xs-12">
      <div id="myBtnContainer">

  <button class="btn" onclick="filterSelection('verses')"><li><a href="#verses"> Quranic verse for Emptiness</a></li></button>
  <button class="btn" onclick="filterSelection('dua')"><li><a href="#dua"> Dua for Emptiness</a></li></button></ul>
 <button class="btn" onclick="filterSelection('hadees')"><li><a href="#hadees"> Hadees for Emptiness</a></li></button></ul>
<button class="btn" onclick="filterSelection('com')"><li><a href="#com"> Comment for Emptiness</a></li></button></ul>
</div>
              <div id="hadees" class="section-headline hadith alignleft"><h2><p>Hadees for Emptiness</p></h2></div></div></div>
                  
               <div class="hadith text-center"><h4><p>
<?php
$mysqli = mysqli_connect('localhost','root','','projects');
$sql = "SELECT * FROM dd where category = 'emp'";
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
<!-- start coment Section -->
       <div id="myBtnContainer">
  
  <button class="btn" onclick="filterSelection('verses')"><li><a href="#verses"> Quranic verse for Fear</a></li></button>
  <button class="btn" onclick="filterSelection('dua')"><li><a href="#dua"> Dua for Fear</a></li></button></ul>
 <button class="btn" onclick="filterSelection('hadees')"><li><a href="#hadees"> Hadees for Fear</a></li></button></ul>
<button class="btn" onclick="filterSelection('com')"><li><a href="#com"> Comment for Emptiness</a></li></button></ul>
</div>
<div id="about" class="about-area area-padding">
      <div class="container">
        <div class="row">
          <div class="col-md-12 col-sm-12 col-xs-12">
            <div class="section-headline text-center">
              <h2 id="com"> Comment your View</h2>
            </div>
          </div>
        </div>
        <div class="row">
          <!-- single-well start-->
          <div class="col-md-6 col-sm-6 col-xs-12">
            <div class="well-left">
              <div class="single-well">
                <a href="#">
                  <img src="assets/img/about/2.jpg" alt="">
                </a>
              </div>
            </div>
          </div>
          <!-- single-well end-->
          <div class="col-md-6 col-sm-6 col-xs-12">
            <div class="well-middle">
              <div class="single-well">
                <a href="#">
                  <h4 class="sec-head"></h4>
                </a>
         <html>

 <head>
  <link rel="stylesheet" href="style.css" type="text/css">
 </head>

 <body>

  <form action="" method="POST">
<?php

echo " ".$_SESSION['Name'];
?><br>
   
   <label style = "font-size:30px ; color: black;"> Comment: <br>
    <textarea name="Comment" class="Input" style="width: 300px" required></textarea>
   </label>
   <br><br>
   <input type="submit" name="Submit" value="Submit Comment" class="Submit">

  </form>

 </body>

</html>


<?php
 
if(isset($_POST['Submit'])){
include('db.php');
  print "<h1>Your comment has been submitted!</h1>";

  $Name = $_SESSION['Name'];
  $Comment = $_POST['Comment'];

  #Get old comments
  $old = fopen("comments.txt", "r+t");
  $old_comments = fread($old, 1024);

  #Delete everything, write down new and old comments
  $write = fopen("comments.txt", "w+");
  $string = "<b>".$_SESSION['Name']."</b><br>".$Comment."<br>\n".$old_comments;
  fwrite($write, $string);
  fclose($write);
  fclose($old);
 }

 #Read comments
 $read = fopen("comments.txt", "r+t");
 echo "<br><br><h6><font color=blue>Comments</font><h6>".fread($read, 1024);
 fclose($read);

?>
              </div>
            </div>
          </div>
          <!-- End col-->
        </div>
      </div>
    </div><!-- End About Section -->
 <!-- =======end coment Section ======= -->
  
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