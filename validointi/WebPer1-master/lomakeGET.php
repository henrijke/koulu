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
    $etunimi = $_GET["etunimi"];
}

if(empty($_GET["sukunimi"])){
    $error=true;

}else{
    $etunimi = $_GET["sukunimi"];
}

if(empty($_GET["sahkoposti"])){
    $error=true;

}else{
    $email = $_GET["sahkoposti"];
}

if(empty($_GET["salasana"])){
    $error=true;

}else{
    $salasana = $_GET["salasana"];
}
if(!$error){
    echo "Henkilö: $etunimi $sukunimi";
    echo "</br>";
    echo "Sähköposti $email";
    echo "</br>";
    echo "Salasana $salasana";
    echo "</br>";
    echo ("Puhelinnumero: ". $_GET["puhelin"]);
    echo "</br>";
    echo ("Osoite: ". $_GET["osoite"]);
    echo "</br>";
    echo ("Postinumero: ". $_GET["postinumero"]);
    echo "</br>";
}else{
    echo "Asioita puuttui!";
}
}
