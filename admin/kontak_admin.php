<?php
	session_start();
	if (!isset($_SESSION['USERNAME']) and (!isset($_SESSION['PASSWORD'])))
	{
		header("Location:../admin/login.php");
	}
	include("../masterpages/header_admin.php");
?>

<div id="content">
        Ini Halaman Kontak Admin
</div>

<?php
	include("../masterpages/footer.php");
?>
