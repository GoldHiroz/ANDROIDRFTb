<?php
// RFT beadand�
// Mobil alkalmaz�s web api
// Alper061

// Konfig beh�v�sa
include "config.php";
// Db kapcsolat fel�p�t�se
$kapcsolat =mysqli_connect($sqlhost, $sqluser, $sqlpass, $sqldb);
// Siker?
if (mysqli_connect_errno($kapcsolat))
{
// Ha nem
   echo "Hiba a kapcsol�d�skor: " . mysqli_connect_error();
}

?>