<!-- News Main -->
<div class="news-top">
    <div class="news-popular">
        <?php
        $popular = $News->orderOne('readed', 'DESC');
        // prr($popular);
        $url = !empty($popular['img']) ? "./news/" . $popular['img'] : "https://picsum.photos/960/540";
        ?>
        <div class="news-popular-pic"><img src="<?= $url; ?>" alt=""></div>
        <a href="?meow=news&news=news_content&id=<?= $popular['id'] ?>"><?= $popular['subject']; ?></a>
    </div>
    <div class="news-latest">
        <?php
        $latest = $News->orders('created_at', 'DESC', ' LIMIT 2 ');
        // prr($latest);
        foreach ($latest as $late) {
            $url = !empty($late['img']) ? "./news/" . $late['img'] : "https://picsum.photos/768/432";
        ?>
            <div class="news-latest-block">
                <div class="news-latest-block-pic"><img src="<?= $url; ?>" alt=""></div>
                <a href="?meow=news&news=news_content&id=<?= $late['id'] ?>"><?= $late['subject']; ?></a>
            </div>
        <?php
        }
        ?>
    </div>
</div>

<div class="news-body">
    <?php
    $typetotal = $NewsType->count(1) - 1;
    // echo $typetotal;
    for ($i = 1; $i <= $typetotal; $i++) {
        $type = $News->all(" WHERE `type` = $i ORDER BY `updated_at` DESC ");
        $url = !empty($type[0]['img']) ? "./news/" . $type[0]['img'] : "https://picsum.photos/288/162";
        $typeName = $NewsType->find($i);
        // echo $typeName['type'];
    ?>
        <div class="news-body-type">
            <div class="news-body-type-title">
                <?= $typeName['type']; ?>
                <a href="">more...</a>
            </div>
            <?php
            ?>
            <div class="news-body-type-hot">
                <div class="news-body-type-hot-pic"><img src="<?= $url; ?>" alt=""></div>
                <a href="?meow=news&news=news_content&id=<?= $type[0]['id'] ?>"><?= $type[0]['subject'] ?></a>
            </div>
            <div class="news-body-type-lists">
                <?php
                foreach ($type as $key => $value) {
                    if ($key !== 0 && $key < 6) {
                ?>
                        <a class="news-body-type-list" href="?meow=news&news=news_content&id=<?= $value['id'] ?>"><?= $value['subject'] ?></a>
                <?php
                    }
                }
                ?>
            </div>
        </div>

    <?php
    }
    ?>
</div>