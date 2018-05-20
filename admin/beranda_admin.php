<?php
session_start();
if (!isset($_SESSION['USERNAME']) and (!isset($_SESSION['PASSWORD']))) {
    header("Location:../admin/login.php");
}

include("../masterpages/header_admin.php");
?>

<header>
    <div class="container" id="maincontent" tabindex="-1">
        <div class="row">
            <div class="col-lg-12">
                <img class="img-responsive" src="../img/profile.png" alt="">
                <div class="intro-text">
                    <h1 class="name">Selamat Datang Admin</h1>
                    <hr class="star-light">
                    <span class="skills">Silahkan gunakan Website ini dengan BIJAK</span>
                </div>
            </div>
        </div>
    </div>
</header>

<?php
include("../masterpages/footer.php");
?>
