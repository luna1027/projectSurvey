<!-- News -->
<div class="content news-content">
    <div class="news-header">
        <h2><a href="?meow=news"> News </a><?= isset($_SESSION['login']) ? '<a class="news-add" href="?meow=news&news=news_add"> +</a>' : '' ?></h2>
    </div>
    <div class="news-main">
        <?php
        $meow_news = $_GET['news'] ?? '';
        if (isset($_SESSION['login'])) {
            $news_files = "./member/" . $meow_news . ".php";
            $news_guest = "./guest/" . $meow_news . ".php";
            // echo $news_files;
            if (file_exists($news_files)) {
                include_once "$news_files";
            } elseif (file_exists($news_guest)) {
                include_once "$news_guest";
            } else {
                include_once "./guest/news_main.php";
            }
        } else {
            $news_files = "./guest/" . $meow_news . ".php";
            // echo $news_files;
            if (file_exists($news_files)) {
                include_once "$news_files";
            } else {
                include_once "./guest/news_main.php";
            }
        }
        ?>
    </div>
</div>