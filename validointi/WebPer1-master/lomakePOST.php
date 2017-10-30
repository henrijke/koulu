<?php

$etunimi= "";
$sukunimi= "";
$email = "";
$salasana = "";
$error=false;

if ($_SERVER["REQUEST_METHOD"] =="GET"){
    if(empty($_POST["etunimi"])){
        $error=true;
    }else{
        $etunimi = htmlspecialchars($_POST["etunimi"]);
    }

    if(empty($_POST["sukunimi"])){
        $error=true;

    }else{
        $etunimi = htmlspecialchars($_POST["sukunimi"]);
    }

    if(empty($_POST["sahkoposti"])){
        $error=true;

    }else{
        $email = htmlspecialchars($_POST["sahkoposti"]);
    }

    if(empty($_POST["salasana"])){
        $error=true;

    }else{
        $salasana = htmlspecialchars($_POST["salasana"]);
    }
    if(!$error){
        echo "Henkilö: $etunimi $sukunimi";
        echo "</br>";
        echo "Sähköposti $email";
        echo "</br>";
        echo "Salasana $salasana";
        echo "</br>";
        echo ("Puhelinnumero: ". htmlspecialchars($_POST["puhelin"]));
        echo "</br>";
        echo ("Osoite: ". htmlspecialchars($_POST["osoite"]));
        echo "</br>";
        echo ("Postinumero: ". htmlspecialchars($_POST["postinumero"]));
        echo "</br>";
    }else{
        echo "Asioita puuttui!";
    }
}
