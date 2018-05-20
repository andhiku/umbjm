 <?php
 include("../masterpages/header.php");
 include("../config/koneksi.php");
 
echo "<header>";
echo "<div class='container' id='maincontent' tabindex='-1'>";
echo "<div class='row'>";

echo "<div class='col-lg-12'>";
echo "<div class='intro-text'>";

echo "<span class='skills'>Riset</span>";
echo "<hr class='star-light'>";

echo "<table class='table table-bordered'>";

echo "<span class='skills'><p align='left' type='disc'>";

echo 'Daftar riset';

echo "</p></span>";

echo "<thead>";

$sql = "SELECT * FROM riset";
$result = $conn->query($sql);

if ($result->num_rows > 0) {
    echo "<tr>";
echo "<td>No </td>";
echo "<td>Nama Peneliti </td>";
echo "<td>Judul </td>";
echo "</tr>";
echo "</thead>";
echo "<tbody>";
    // output data of each row
    while($row = $result->fetch_assoc()) {
        echo "<tr><td>".$row["id"]."</td><td>".$row["peneliti"]."</td><td>".$row["judul"]."</td></tr>";
    }
    echo "</table>";
} else {
    echo "0 results";
}


echo "</tbody>";
echo "</table>";
echo "</div>";
echo "</div>";
echo "</div>";
echo "</div>";
echo "</header>";

$conn->close();

include("../masterpages/footer.php");
?> 