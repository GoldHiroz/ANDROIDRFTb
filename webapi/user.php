<?php
// RFT beadand�
// Mobil alkalmaz�s web api
// Alper061

include "main.php";

$muvelet =$_GET["muvelet"];

if ($muvelet =="add")
{
if (empty($_GET["nev"]) || empty($_GET["email"]))
{
die ("ERROR");
}
$nev = $_GET["nev"];
$email = $_GET["email"];
$sql ="INSERT INTO felhasznalok VALUES ('', '$nev', '$email');";
print $sql;
print "<br>";
if (mysqli_query($kapcsolat, $sql))
{
print "OK";
}
else
{
print "ERROR";
print mysqli_error();
}

}


// A v�g�n bez�rjuk a kapcsolatot
mysqli_close($kapcsolat);
?>