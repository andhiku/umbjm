<?php
session_start();
if (!isset($_SESSION['USERNAME']) and (!isset($_SESSION['PASSWORD']))) {
    header("Location:../admin/login.php");
}

include("../masterpages/header_admin.php");
?>

<header>
    <div class="container" id="maincontent">
        <form method="POST" enctype="multipart/form-data" action="galeri_upload.php">
            Pilih File Foto:<br>
            <center><input type="file" name="file_foto" size="20"></center><br>
            <p>
                Keterangan : <br><input type="text" name="keterangan" size="50" style="color: black"></p>
            <input type="submit" value="Upload">
        </form>
    </div>
</header>

<?php
include("../masterpages/footer.php");
?>
