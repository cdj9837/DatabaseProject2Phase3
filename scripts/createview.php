<?php
$host = "localhost";
$dbusername = "root";
$dbpassword = "";
$dbname = "scraplunch";
$conn = mysqli_connect($host,$dbusername,$dbpassword, $dbname)
or die('Error connecting to MySQL server.');
?>

<html>
 <head>
 </head>
 <body>

<?php
$query = ("CREATE VIEW fulltime_employees
AS SELECT E.Fname, E.Lname, E.Scrap_id, F.Salary
FROM employee as E, fulltime as F
WHERE E.SSN=F.SSN");

$result = mysqli_query($conn, $query);
if (!$result)
  die('Error creating view: '.$conn->error);

echo "The view has been created.";
mysqli_close($conn);
?>

</body>
</html>
