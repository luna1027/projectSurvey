<?php
// 本地端設定
$dsn = "mysql:host=localhost;charset=utf8;dbname=meow";
$pdo = new PDO($dsn, 'root', '');
// $dsn = "mysql:host=localhost;charset=utf8;dbname=s1110419";
// $pdo = new PDO($dsn, 's1110419', 's1110419');
date_default_timezone_set("Asia/Taipei");

session_start();
?> 
