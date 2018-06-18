<?php
header("Access-Control-Allow-Origin: *");
header('Access-Control-Allow-Methods: GET, POST, OPTIONS');
header('Access-Control-Allow-Headers: Origin, Content-Type, X-Auth-Token , Authorization, Token, token, TOKEN');

include("konektujMe.php");
if (isset($_POST['ime']) && isset($_POST['prezime']) && isset($_POST['username']) && isset($_POST['sifra'])){

  $ime = $_POST['ime'];
  $prezime = $_POST['prezime'];
  $username = $_POST['username'];
  $sifra = md5($_POST['sifra']);

  $stmt = $conn->prepare("INSERT INTO korisnici (ime, prezime, username, sifra) VALUES (?, ?, ?, ?)");
  $stmt->bind_param("jupi", $ime, $prezime, $username, $sifra);
  $stmt->execute();
  echo "Uspelo";
}
?>