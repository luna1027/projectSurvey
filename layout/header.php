<div class="navBar">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Dancing+Script:wght@700&display=swap" rel="stylesheet">
    <div class="logo"><a href="index.php">=Meow=</a></div>
    <nav>
        <?php
        // echo "<pre>";
        // print_r($_SERVER);
        // echo "</pre>";
        $local = explode("/", $_SERVER['PHP_SELF']);
        // print_r($local);
        $index = explode(".", $local[count($local) - 1])[0];
        // print_r($index);
        // $_GET['meow']=='news'?'style="color:#fff"':'';
        $meow = $_GET['meow'] ?? 'main';
        switch ($index) {
            case 'index':
                // Guest 
                echo "<a href='?meow=news' class='nav_btn'>News</a>"; // News
                echo "<a href='?meow=survey' class='nav_btn'>Survey</a>"; // Survey
                echo "<div class='userCircle'><a href=''><img src='./thumbnail/circle-user-solid-5.png' alt=''></a>";
                echo "<div class='memberCircle'>";
                if (isset($_SESSION['login'])) {
                    echo "<a class='signOut' href='?meow=sign_out' class='nav_btn'>Sign out</a>"; // Sign out
                } else {
                    echo "<a class='signIn' href='?meow=sign_in' class='nav_btn'>Sign in</a>"; // Sign in
                    echo "<a href='?meow=register' class='nav_btn'>Register</a>"; // Register
                }
                echo "</div>";
                echo "</div>";
                // echo "</div>";
                break;

            default:
                # code...
                break;
        }
        ?>
    </nav>
</div>

<!-- Member -->
<!-- <nav> -->
<!-- <a href="?meow=news" class="nav_btn">News</a>
    <a href="?meow=survey" class="nav_btn">Survey</a>
    <a href="?meow=forum" class="nav_btn">Forum</a>
    <a href="?meow=about_meow" class="nav_btn">About Meow</a>
    <a href="?meow=member_area" class="nav_btn">Member Area</a>
    <a href="?meow=news" class="nav_btn">Sign in</a> -->
<!-- </nav> -->

<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.3/jquery.min.js"></script>
<script>
    $(".memberCircle").hide();
    $(".userCircle").mouseover(function() {
        console.log($(this));
        $(this).children().children().attr('src', './thumbnail/circle-user-solid.png')
        console.log($(this).children());
        $(this).children(".memberCircle").show();
    })
    $(".userCircle").mouseout(function() {
        console.log($(this));
        $(this).children().children().attr('src', './thumbnail/circle-user-solid-5.png')
        $(this).children(".memberCircle").hide();
    })
</script>