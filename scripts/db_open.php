<?php

function open_database() {
  $host = 'localhost';
  $dbname = 'scraplunch';
  $dbuser = 'root';

  $pdo = new PDO('mysql:host='.$host.';dbname='.$dbname, $dbuser, NULL);

  if (!$pdo)
    die('E: Could not connect to database'.PHP_EOL.$pdo->ErrorInfo()[2]);
  else return $pdo;
}
?>
