<?php
include_once "./db/base.php";
include_once "./db/function.php";
?>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Index</title>
    <link rel="stylesheet" href="./css/style.css">
</head>

<body>
    <!-- header -->
    <header>
        <div class="container">
            <?php
            include_once "./layout/header.php";
            ?>
        </div>
    </header>

    <!-- 頁面 -->
    <div class="container">
        <!-- main -->
        <div class="main">
            <?php
            // // MOVE // //
            // Status & Error
            if (isset($_GET['status'])) {
                echo "<div class='status'>{$_GET['status']}</div>";
                // echo $_GET['status'];
            } elseif (isset($_GET['error'])) {
                echo "<div class='error'>{$_GET['error']}</div>";
            }
            ?>

            <?php
            $meow = $_GET['meow'] ?? 'news';
            $files = "./guest/" . $meow . ".php";
            // echo $files;
            if (file_exists($files)) {
                include_once "$files";
            }
            ?>
        </div>

    </div>
    <footer>
        <!-- footer -->
        &copy; <?= date("Y.m.d") ?> Luna
    </footer>
</body>

</html>