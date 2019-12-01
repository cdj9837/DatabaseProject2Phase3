<?php
const DBLOGIN_INI = "../dblogin.ini";

function open_database() {
  require(DBLOGIN_INI);
  $ini_arr = parse_ini_file(DBLOGIN_INI);

  if (!$ini_arr)
    die('E: Could not parse .ini file for database credentials');

  $pdo = new PDO(
    'mysql:host='.$ini_arr["host"].';dbname='.$ini_arr["name"],
    $ini_arr["user"],
    $ini_arr["password"]);

  if (!$pdo)
    die('E: Could not connect to database\n'.$pdo->ErrorInfo()[2]);
  else return $pdo;
}
?>

