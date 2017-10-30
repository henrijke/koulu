<?php

$etunimi= "";
$sukunimi= "";
$email = "";
$salasana = "";
$error=false;

if ($_SERVER["REQUEST_METHOD"] =="GET"){
if(empty($_GET["etunimi"])){
    $error=true;
}else{
    $etunimi = htmlspecialchars($_GET["etunimi"]);
}

if(empty($_GET["sukunimi"])){
    $error=true;

}else{
    $etunimi = htmlspecialchars($_GET["sukunimi"]);
}

if(empty($_GET["sahkoposti"])){
    $error=true;

}else{
    $email = htmlspecialchars($_GET["sahkoposti"]);
}

if(empty($_GET["salasana"])){
    $error=true;

}else{
    $salasana = htmlspecialchars($_GET["salasana"]);
}
if(!$error){
    echo "Henkilö: $etunimi $sukunimi";
    echo "</br>";
    echo "Sähköposti $email";
    echo "</br>";
    echo "Salasana $salasana";
    echo "</br>";
    echo ("Puhelinnumero: ". htmlspecialchars($_GET["puhelin"]));
    echo "</br>";
    echo ("Osoite: ". htmlspecialchars($_GET["osoite"]));
    echo "</br>";
    echo ("Postinumero: ". htmlspecialchars($_GET["postinumero"]));
    echo "</br>";
}else{
    echo "Asioita puuttui!";
}
}
