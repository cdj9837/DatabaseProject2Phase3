<?php
function open_database() {
  const DBLOGIN_INI = "../dblogin.ini";
  require(DBLOGIN_INI);
  $ini_arr = parse_ini_file(DBLOGIN_INI);

  if (!$ini_arr)
    die('E: Could not parse .ini file for database credentials');

  $pdo = new PDO($ini_arr["name"], $ini_arr["hostname"], $ini_arr["username"], 
    $ini_arr["password"]);

  if (!$pdo)
    die('E: Could not connect to database\n'.$pdo->ErrorInfo()[2]);
  else return $pdo;
}
?>
