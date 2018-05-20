<?php
session_start();
if (!isset($_SESSION['USERNAME']) and (!isset($_SESSION['PASSWORD']))) {
    header("Location:../admin/login.php");
}

include("../masterpages/header_admin.php");
include("../config/koneksi.php");

$id = $_GET['a'];
$sql = "select * from user where id_user = '$id'";
$exe = mysql_query($sql);
$data = mysql_fetch_array($exe);
?>
<header>
    <div class="container" id="maincontent">
        <div style="margin: 5 0 5 0">
            <center>
                <h3>Ubah User</h3>
                <hr style="color: #C4DAE8; width: 90%;"/>
            </center>
        </div>
        <form id="user_ubah" name="user_ubah" method="post" action="user_update.php">
            <table width="90%" align="center" cellpadding="0" cellspacing="0" style="border-color: #C4DAE8; font-size: small;">
                <input type="hidden" name="id" id="id" value="<?php echo $id ?>" />
                <tr>
                    <td>Nama Lengkap</td>
                    <td>:</td>
                    <td><input type="text" name="nama" id="nama" size="50" style="color: black;" value="<?php echo $data['nama'] ?>" /></td>
                </tr>
                <tr>
                    <td>Alamat</td>
                    <td>:</td>
                    <td><textarea name="alamat" id="alamat" style="width: 350px; height: 200px; color: black"><?php echo $data['alamat'] ?></textarea></td>
                </tr>
                <tr>
                    <td>Email</td>
                    <td>:</td>
                    <td><input type="text" name="email" id="email" size="50" style="color: black;" value="<?php echo $data['email'] ?>" /></td>
                </tr>
                <tr>
                    <td>Username</td>
                    <td>:</td>
                    <td><input type="text" name="username" id="username" size="50" style="color: black;" value="<?php echo $data['username'] ?>" /></td>
                </tr>
                <tr>
                    <td>Password</td>
                    <td>:</td>
                    <td><input type="password" name="password" id="password" size="50" style="color: black;" /></td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>
                        <input type="submit" name="submit" id="button" value="Simpan" />
                        <input type="reset" name="reset" id="button" value="Ulang" />
                        <a href="user.php" style="text-decoration: none;"><input type="button" name="button" id="button" value="Batal" /></a>
                    </td>
                </tr>
            </table>
        </form>
    </div>
</header>

<?php
include("../masterpages/footer.php");
?>

<script type="text/javascript">
    var f = new Validator("user_ubah");
    f.addValidation("nama", "req", "nama harus diinputkan");
    f.addValidation("nama", "maxlen=45", "maksimal karakter nama 45 digit");
    f.addValidation("nama", "alpha", "nama harus berupa huruf");

    f.addValidation("alamat", "req", "silakan masukkan alamat");

    f.addValidation("email", "req", "silakan masukkan email");
    f.addValidation("email", "email", "ketik format email dengan benar");
    f.addValidation("email", "maxlen=45", "maksimal karakter email 45 digit");

    f.addValidation("username", "req", "silakan masukkan username");
    f.addValidation("nama", "maxlen=20", "maksimal karakter username  20 digit");

    f.addValidation("password", "req", "silakan masukkan password");

</script>
