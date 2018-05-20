<?php
include("../masterpages/header.php");
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

<?php
include("../masterpages/footer.php");
?>
