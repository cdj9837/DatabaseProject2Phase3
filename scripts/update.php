<?php
require("db_open.php")

$conn = open_database();
$ssn = filter_input(INPUT_POST, 'SSN');
$new_location = filter_input(INPUT_POST, 'Location');

$query = 'UPDATE employee SET Location = :location WHERE SSN = :ssn';
$sql = $conn->prepare($query);

if (!$sql)
  die('E: Could not prepare query');
else {
  $sql->bindParam(':location', $new_location, PDO::PARAM_STR, 20);
  $sql->bindParam(':ssn', $ssn, PDO::PARAM_INT);

  $result = $sql->execute();
  if (!$result)
    die('E: Failed to update employee data\n'.$sql->ErrorInfo()[2]);
  else echo 'Successfully updated employee data';
?>

