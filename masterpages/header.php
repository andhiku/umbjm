<!DOCTYPE html>
<?php
$judul = "UNIVERSITAS MUHAMMADIYAH BANJARMASIN";
?>
<html lang="en">
    <head>
        <title><?= $judul ?></title>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta name="description" content="">
        <meta name="author" content="">
        <link href="../css/bootstrap.min.css" rel="stylesheet">
        <link href="../css/freelancer.min.css" rel="stylesheet">
        <link href="../css/style.css" rel="stylesheet">

        <!-- Custom Fonts -->
        <link href="../css/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">
        <link href="https://fonts.googleapis.com/css?family=Montserrat:400,700" rel="stylesheet" type="text/css">
        <link href="https://fonts.googleapis.com/css?family=Lato:400,700,400italic,700italic" rel="stylesheet" type="text/css">

        <script src="../js/jquery.min.js"></script>
        <script src="../js/bootstrap.min.js"></script>
        <script src="..js/jquery.easing.min.js"></script>
        <script src="../js/jqBootstrapValidation.js"></script>
        <script src="../js/contact_me.js"></script>
        <script src="../js/freelancer.min.js"></script>
    </head>

    <body id="page-top" class="index">
        <nav id="mainNav" class="navbar navbar-default navbar-fixed-top navbar-custom">
            <div class="container">
                <div class="navbar-header page-scroll">
                    <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
                        <span class="sr-only"></span><i class="fa fa-bars"></i>
                    </button>
                    <img src="../img/logo.png" alt="Logo alt" height="50"><a href="../public/beranda.php"></a>
                </div>
                <?php
                include("menu.php");
                ?>