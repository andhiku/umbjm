<?php
error_reporting(0);
session_start();
if (!isset($_SESSION['USERNAME']) and (!isset($_SESSION['PASSWORD']))) {
    header("Location:../admin/login.php");
}

include("../masterpages/header_admin.php");
include("../config/koneksi.php");
?>

<script>
    function KonfirmasiHapus()
    {
        if (confirm("Anda yakin data ini akan dihapus?"))
            return true;
        else
            return false;
    }
</script>

<header>
    <div class="container" id="maincontent">
        <div style="margin: 5 0 5 0">
            <center>
                <h3 style="color: black;">Manajemen User</h3>
                <hr style="color: #C4DAE8; width: 90%;"/>
                <a href="user_tambah.php" class="btn btn-danger" role="button">Tambah User</a>
                </br>
                </br>
            </center>
        </div>

        <table width="90%" align="center" border="1" cellpadding="0" cellspacing="0" style="border-color: #C4DAE8; font-size: small;">
            <thead align="center" style="background-color:#C4DAE8;">
            <th>Username</th>
            <th>Nama Lengkap</th>
            <th>Alamat</th>
            <th>Email</th>
            <th>Aksi</th>
            </thead>
            <?php
            $sql = "select * from user ";
            $exe = mysql_query($sql);
            while ($list = mysql_fetch_array($exe)) {
                ?>  
                <tbody>
                <td><?php echo $list['username']; ?></td>
                <td><?php echo $list['nama']; ?></td>
                <td><?php echo $list['alamat']; ?></td>
                <td><?php echo $list['email']; ?></td>
                <td align="center"><a href="user_ubah.php?a=<?php echo $list['id_user']; ?>" style="color: black">Ubah</a> | <a href="user_delete.php?a=<?php echo $list["id_user"]; ?>" onclick="return KonfirmasiHapus()" style="color: black">Hapus</a></td>
                </tbody>
                <?php
            }
            ?>
        </table>
    </div>
</header>

<!-- <hr style="color: #C4DAE8; width: 90%;"/> -->

<?php
include("../masterpages/footer.php");
?>
