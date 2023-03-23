<h2>Sign out</h2>

<?php
session_start();
unset($_SESSION['login']);

header("location:index.php");

?>