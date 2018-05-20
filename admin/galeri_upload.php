<?php
//koneksi ke MySQL
include("../config/koneksi.php");

$keterangan = $_POST['keterangan'];
$folder = "../img";
$tmp_name = $_FILES["file_foto"]["tmp_name"];
$name = $folder."/".$_FILES["file_foto"]["name"];

//kode untuk upload ke folder gambar
move_uploaded_file($tmp_name, $name);

//masukkan datanya ke database
$input = mysql_query("INSERT INTO galeri VALUES(null,'$keterangan','$name')");

if($input){
    //jika berhasil kita redirect ke halaman untuk menampilkan foto
    header("location: galeri_admin.php");
}else{
    echo "gagal";
}

?>