<?php
$con=mysqli_connect('localhost','root','','project');

//...................................Contact..............................................
if($_REQUEST['method']=='contact'){

    extract($_REQUEST);
    
    $query=("insert into contact values(0,'$Name','$Email','$Sub','$Msg')");

    $result=$con->query($query);
    if($result){
echo('Thanks to contact us');
    }
    else{
        echo('Fail');
            }
}


?>