<?php
session_start();
if (!isset($_SESSION['USERNAME']) and (!isset($_SESSION['PASSWORD']))) {
    header("Location:../admin/login.php");
}

include("../masterpages/header_admin.php");
include("../config/koneksi.php");
?>

<section id="portfolio">
    <div class="container">
        <div class="row">
            <div class="col-lg-12 text-center">
                <h2>Galeri</h2>
                <hr class="star-primary">
            </div>
        </div>
        <div class="row text-center">
            <a href="galeri_tambah.php" class="btn btn-success" role="button">Tambah Foto</a>
            <br/>
            <br/>
            <?php
            $data = mysql_query("SELECT * FROM galeri");
            while ($x = mysql_fetch_array($data)) {
                echo "<img style='width: 250px;' src=\"" . $x['file_gambar'] . "\"><br>";
                echo $x['deskripsi'] . "<p>\n";
            }
            ?>
        </div>
    </div>
</section>
</header>

<?php
include("../masterpages/footer.php");
?>