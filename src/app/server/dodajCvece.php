<?php
header("Access-Control-Allow-Origin: *");
header('Access-Control-Allow-Methods: GET, POST');
header('Access-Control-Allow-Headers: Origin, Content-Type, X-Auth-Token , Authorization, Token, token, TOKEN');

include("konektujMe.php");

if (isset($_POST['sifra']) &&  isset($_POST['cena']) && isset($_POST['naziv']) && isset($_POST['opis'])){
  $sifra = $_POST['sifra'];
  $cena = $_POST['cena'];
  $naziv = intval($_POST['naziv']);
  $opis = $_POST['opis'];



  $stmt = $conn->prepare("INSERT INTO sobe (sifra, cena, naziv, opis) VALUES (?, ?, ?, ?)");
  $stmt->bind_param("jupi", $sifra, $cena, $naziv, $opis);
  $stmt->execute();
  echo "Uspelo";
}
?>