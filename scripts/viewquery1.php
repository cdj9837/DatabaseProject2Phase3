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

mysqli_query($conn, $query) or die('Error creating view.');

$query2 = "SELECT Fname, Lname
FROM fulltime_employees
WHERE Scrap_id=2";

mysqli_query($conn, $query2) or die('Error querying view.');
$result = mysqli_query($conn, $query2);

echo "<table>";
   echo "<tr>";
    echo "<th>Fname</th>";
    echo "<th>Lname</th>";
   echo "</tr>";
 while ($row = mysqli_fetch_array($result))
 {
   echo "<tr>";
    echo "<td>".$row['Fname']."</td>";
    echo "<td>".$row['Lname']."</td>";
   echo "</tr>";
 }
echo "</table>";
mysqli_close($conn);
?>

</body>
</html>
