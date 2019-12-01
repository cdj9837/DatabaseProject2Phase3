<?php
require("db_open.php")

$conn = open_database();
$ssn = filter_input(INPUT_POST, 'SSN');

$query = 'DELETE FROM employee WHERE SSN = :ssn';
$sql = $conn->prepare($query);

if (!$sql)
  die('E: Failed to prepare query');
else {
  $sql->bindParam(':ssn', $ssn, PDO::PARAM_STR, 9);
  $result = $sql->execute();

  if (!$result)
    die('E: Failed to delete employee from database\n'.$sql->ErrorInfo()[2]);
  else echo 'Successfully removed employee from database';
?>

