<!-- <h2>Main</h2> -->
<?php
// Session
if (isset($_SESSION['login'])) {
    // echo "<h4>Welcome back !</h4>";
}
?>
<div class="main index">
    <div class="left">
        <!-- Survey -->
        <div class="survey">
            <div class="survey-hot">
                <h2>Popular Survey</h2>
            </div>
            <div class="survey-list">
                <h3>Survey Subject</h3>
                <a href="">more...</a>
            </div>
        </div>

        <!-- Fourm -->
        <div class="forum">
            <div class="forum-hot">
                <h2>Hot</h2>
            </div>
            <div class="forum-list">
                <h3>Forum title</h3>
                <a href="">more...</a>
            </div>
        </div>
    </div>

    <!-- News -->
    <?php
    $newsP = $News->orderOne('readed', 'DESC', ' LIMIT 1 ');
    $newsL = $News->orderOne('updated_at', 'DESC', ' LIMIT 1 ');
    $news = $News->all('ORDER BY `created_at` DESC LIMIT 10');
    $urlP = !empty($newsP['img']) ? "./news/" . $newsP['img'] : "https://picsum.photos/768/432";
    $urlL = !empty($newsL['img']) ? "./news/" . $newsL['img'] : "https://picsum.photos/384/216";
    ?>
    <div class="news">
        <div class="news-hot">
            <div class="news-hot-pic"><img src="<?= $urlP; ?>" alt=""></div>
            <a href="?meow=news&news=news_content&id=<?= $newsP['id'] ?>"><?= $newsP['subject']; ?></a>
        </div>
        <div class="news-last">
            <div class="news-last-pic"><img src="<?= $urlL; ?>" alt=""></div>
            <a href="?meow=news&news=news_content&id=<?= $newsL['id'] ?>"><?= $newsL['subject'] ?></a>
        </div>
        <div class="news-list">
            <a class="news-list-title" href="">Watch More</a>
            <div class="news-lists">
                <?php
                foreach ($news as $key => $value) {
                    if ($value['id'] == $newsP['id'] || $value['id'] == $newsL['id']) {
                        continue;
                    } else {
                ?>
                        <a class="news-list-a" href="?meow=news&news=news_content&id=<?= $value['id'] ?>"><?= $value['subject'] ?></a>
                <?php
                    }
                }
                ?>
            </div>
        </div>
    </div>
</div>