<?php
// RFT beadandó
// Mobil alkalmazás web api
// Alper061

// Konfig behívása
include "config.php";
// Db kapcsolat felépítése
$kapcsolat =mysqli_connect($sqlhost, $sqluser, $sqlpass, $sqldb);
// Siker?
if (mysqli_connect_errno($kapcsolat))
{
// Ha nem
   echo "Hiba a kapcsolódáskor: " . mysqli_connect_error();
}

// A végén bezárjuk a kapcsolatot
mysqli_close($kapcsolat);
?>
