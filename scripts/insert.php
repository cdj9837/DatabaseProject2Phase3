<?php
// open connection to database w/ helper function from yours truly
require("db_open.php");
$conn = open_database();

// No longer need to check for null values, front-end takes care of it
$ssn = filter_input(INPUT_POST, 'SSN');
$fname = filter_input(INPUT_POST, 'Fname');
$lname = filter_input(INPUT_POST, 'Lname');
$location = filter_input(INPUT_POST, 'Location');
$job = filter_input(INPUT_POST, 'Job');
$scrap_id = filter_input(INPUT_POST, 'ScrapId');

$query = 'INSERT INTO employee VALUES (?, ?, ?, ?, ?)';

$sql = $conn->prepare($query);
if (!$sql)
  die('E: Could not prepare query');
else {
  $sql->bindValue(1, $ssn);
  $sql->bindValue(2, $fname);
  $sql->bindValue(3, $lname);
  $sql->bindValue(4, $location);
  $sql->bindValue(5, $scrap_id);

  $result = $sql->execute();
  if (!$result)
    die('E: Failed to add employee to database\n'.$sql->ErrorInfo()[2]);
  else echo 'Successfully added employee to database';
?>

