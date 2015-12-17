<?php
include "config.php";
$kapcsolat =mysqli_connect($sqlhost, $sqluser, $sqlpass, $sqldb);
if (mysqli_connect_errno($kapcsolat))
{
   echo "Hiba a kapcsolódáskor: " . mysqli_connect_error();
}

mysqli_close($kapcsolat);
?>
