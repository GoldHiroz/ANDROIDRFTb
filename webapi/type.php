<?php
// RFT beadandó
// Mobil alkalmazás web api
// Alper061

include "main.php";

$muvelet =$_GET["muvelet"];

if ($muvelet =="add")
{
if (empty($_GET["nev"]))
{
die ("ERROR");
}
$nev = $_GET["nev"];
$sql ="INSERT INTO tipus VALUES ('', '$nev');";
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
$sql = mysqli_query($kapcsolat, "SELECT * FROM tipus;");
$sorok = array();
while ($sor = mysqli_fetch_assoc($sql))
{
$sorok[] = $sor;
}
print json_encode($sorok);
}
else if ($muvelet =="del")
{
if (empty($_GET["typeid"]))
{
die ("ERROR");
}
$typeid = $_GET["typeid"];

$sql ="DELETE FROM tipus WHERE id =$typeid";
if (mysqli_query($kapcsolat, $sql))
{
print "OK";
}
else
{
print "ERROR";
}
}

// A végén bezárjuk a kapcsolatot
mysqli_close($kapcsolat);
?>