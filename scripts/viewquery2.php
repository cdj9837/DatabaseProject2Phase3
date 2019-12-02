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
$query = "SELECT *
FROM fulltime_employees
WHERE Salary<50000";

# mysqli_query($conn, $query) or die('Error querying view.');
$result = mysqli_query($conn, $query);

if (!$result)
  die('Error querying view: '.$conn->error);

echo "<table>";
   echo "<tr>";
    echo "<th>Fname</th>";
    echo "<th>Lname</th>";
    echo "<th>Scrap_id</th>";
    echo "<th>Salary</th>";
   echo "</tr>";
 while ($row = mysqli_fetch_array($result))
 {
   echo "<tr>";
    echo "<td>".$row['Fname']."</td>";
    echo "<td>".$row['Lname']."</td>";
    echo "<td>".$row['Scrap_id']."</td>";
    echo "<td>".$row['Salary']."</td>";
   echo "</tr>";
 }
echo "</table>";
mysqli_close($conn);
?>

</body>
</html>
