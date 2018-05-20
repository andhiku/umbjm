<?php
        session_start();  // tambahan untuk session
	include("koneksi.php");
	$u = $_POST['user_name'];
	$p = md5($_POST['pass_name']);
	$sql = mysql_query("select * from user where username='$u' and password='$p'");
	$rowcount = mysql_num_rows($sql);
	
	if ($rowcount != 0)
	{
                $_SESSION['USERNAME'] = $u; // tambahan untuk session
		$_SESSION['PASSWORD'] = $p; // tambahan untuk session
		header("Location:../admin/beranda_admin.php"); 
	}
	else  
	{
		echo "<script> //alert('Username atau Password Anda salah');
			document.location='../admin/login.php?act=no';
		</script>";
	}
?>
