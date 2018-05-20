<?php
include("../masterpages/header.php");
?>

<title>Login</title>
<script language="javascript">
    function validasi(form) {
        if (form.user.value == "") {
            alert("silakan masukan username anda");
            form.user.focus();
            return (false);
        }

        if (form.pass.value == "") {
            alert("silakan masukan password anda");
            form.pass.focus();
            return (false);
        }
        return (true);
    }
</script>
<header>
    <div class="container" id="maincontent">
        <form name="form_login" method="post" action="../config/cek.php" onSubmit="return validasi(this)">
            <table align="center" cellpadding="5" style="font-size: 12pt; ">
                <tr>
                    <td colspan="3">
                        <center><h2>Silakan Login</h2></center>
                    </td>
                </tr>
                <tr>
                    <td>Username </td>
                    <td>: </td>
                    <td width="174">
                        <input id="user" name="user_name" type="text" size="25" style="color: black">
                    </td>
                </tr>
                <tr>
                    <td>Password </td>
                    <td>: </td>
                    <td width="174">
                        <input id="pass" name="pass_name" type="password" size="25" style="color: black">
                    </td>
                </tr>
                <tr>
                    <td colspan="3" valign="top" align="right">
                        <input id="Submit" name="Submit" type="submit" value="LOGIN" style="color: black" class="btn btn-danger">
                    </td>
                </tr>
                <tr>
                    <td colspan="3">
                        <?php
                        if (isset($_REQUEST['act']) == 'no')
                            echo "<label style='color:red'> Username dan Password Salah!!! </label>";
                        ?>
                    </td>
                </tr>
            </table>
        </form>
    </div>
</header>

<?php
include("../masterpages/footer.php");
?>
