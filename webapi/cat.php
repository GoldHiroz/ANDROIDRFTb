<?php
// RFT beadandó
// Mobil alkalmazás web api
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
else if ($muvelet =="show")
{
$sql = mysqli_query($kapcsolat, "SELECT * FROM kategoriak;");
$sorok = array();
while ($sor = mysqli_fetch_assoc($sql))
{
$sorok[] = $sor;
}
print json_encode($sorok);
}


// A végén bezárjuk a kapcsolatot
mysqli_close($kapcsolat);
?>