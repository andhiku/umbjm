<?php

include("../masterpages/header.php");
include("../config/koneksi.php");

echo "<header>";
echo "<div class='container' id='maincontent' tabindex='-1'>";
echo "<div class='row'>";

echo "<div class='col-lg-12'>";
echo "<div class='intro-text'>";

echo "<span class='skills'>Kalender Akademik</span>";
echo "<hr class='star-light'>";

echo "<table class='table table-bordered'>";

echo "<span class='skills'><p align='left' type='disc'>";

//==========================================================
//  Kegiatan Mahasiswa Baru
//==========================================================
echo "<table class='table table-bordered'>";

echo "<span class='skills'><p align='left' type='disc'>";

echo 'Kegiatan Mahasiswa Baru ';

echo "</p></span>";

echo "<thead>";

$sql = "SELECT * FROM kalender where jenis = 1";
$result = $conn->query($sql);

if ($result->num_rows > 0) {
    echo "<tr>";
//    echo "<td>No </td>";
    echo "<td>Kegiatan Mahasiswa Baru </td>";
    echo "<td>Waktu Pelaksanaan </td>";
    echo "</tr>";
    echo "</thead>";
    echo "<tbody>";
    // output data of each row
    while ($row = $result->fetch_assoc()) {
        echo "<tr><td>" . $row["kegiatan"] . "</td><td>" . $row["waktu"] . "</td></tr>";
    }
    echo "</table>";
} else {
    echo "0 results";
}


echo "</tbody>";
echo "</table>";



//==========================================================
//  Kegiatan Akademik
//==========================================================
echo "<table class='table table-bordered'>";

echo "<span class='skills'><p align='left' type='disc'>";

echo 'Kegiatan Akademik ';

echo "</p></span>";

echo "<thead>";

$sql = "SELECT * FROM kalender where jenis = 2";
$result = $conn->query($sql);

if ($result->num_rows > 0) {
    echo "<tr>";
//    echo "<td>No </td>";
    echo "<td>Kegiatan Akademik </td>";
    echo "<td>Waktu Pelaksanaan </td>";
    echo "</tr>";
    echo "</thead>";
    echo "<tbody>";
    // output data of each row
    while ($row = $result->fetch_assoc()) {
        echo "<tr><td>" . $row["kegiatan"] . "</td><td>" . $row["waktu"] . "</td></tr>";
    }
    echo "</table>";
} else {
    echo "0 results";
}


echo "</tbody>";
echo "</table>";

//==========================================================
//  kegiatan universitas
//==========================================================
echo "<table class='table table-bordered'>";

echo "<span class='skills'><p align='left' type='disc'>";

echo 'Kegiatan Universitas ';

echo "</p></span>";

echo "<thead>";

$sql = "SELECT * FROM kalender where jenis = 3";
$result = $conn->query($sql);

if ($result->num_rows > 0) {
    echo "<tr>";
//    echo "<td>No </td>";
    echo "<td>Kegiatan Universitas </td>";
    echo "<td>Waktu Pelaksanaan </td>";
    echo "</tr>";
    echo "</thead>";
    echo "<tbody>";
    // output data of each row
    while ($row = $result->fetch_assoc()) {
        echo "<tr><td>" . $row["kegiatan"] . "</td><td>" . $row["waktu"] . "</td></tr>";
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