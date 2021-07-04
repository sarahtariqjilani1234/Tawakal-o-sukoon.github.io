<?php
$conn=mysqli_connect('localhost','root','','projects');
$set=$_POST['search'];
if($set){
$show="SELECT * FROM quranic_verse where category='$set'";
$result=mysqli_query($conn,$show);
while ($row= mysqli_fetch_array($result)) {
  ?> <?php echo $row['category']; ?> </p><br>
     <img src="<?php echo $row['file text']; ?>"/>
     echo "<br/>";
<?php
}
}
?>
 