<?php
// RFT beadand�
// Mobil alkalmaz�s web api
// Alper061

include "main.php";

$muvelet =$_GET["muvelet"];

if ($muvelet =="add")
{
if (empty($_GET["nev"]) || empty($_GET["leiras"]))
{
die ("ERROR");
}
$nev = $_GET["nev"];
$leiras = $_GET["leiras"];
$sql ="INSERT INTO kategoriak VALUES ('', '$nev', '$leiras');";
if (mysqli_query($kapcsolat, $sql))
{
print "OK";
}
else
{
print "ERROR";
}
}



// A v�g�n bez�rjuk a kapcsolatot
mysqli_close($kapcsolat);
?>