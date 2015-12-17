<?php
// RFT beadandó
// Mobil alkalmazás web api
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
$sql = mysqli_query($kapcsolat, "SELECT * FROM felhasznalok;");
$sorok = array();
while ($sor = mysqli_fetch_assoc($sql))
{
$sorok[] = $sor;
}
print json_encode($sorok);
}
else if ($muvelet =="del")
{
if (empty($_GET["userid"]))
{
die ("ERROR");
}
$userid = $_GET["userid"];

$sql ="DELETE FROM felhasznalok WHERE id =$userid";
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