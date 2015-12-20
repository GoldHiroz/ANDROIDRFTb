<?php
function connect($username,$passwd)
{  
   $con=mysqli_connect('localhost',$username,$passwd);
   mysqli_set_charset($con,"utf8");
   if(!isset($con))  
	{ 
        echo "Error".mysqli_error();  
	}  
    
return $con;
}
?>
