<!-- <h2>News Content</h2> -->
<?php

if (!isset($_GET['id'])) {
    header("location:./index.php?meow=news");
} else {
    // prr($user);
    $news = $News->find($_GET['id']);
    $heartfunction = isset($_SESSION['login']) ? 'memberHeart' : 'guestHeart';
    $messagefunction = isset($_SESSION['login']) ? 'memberMessage' : 'guestMessage';
    $url = !empty($news['img']) ? "./news/" . $news['img'] : "https://picsum.photos/960/540";
    if (isset($_SESSION['login'])) {
        $like = $NewsHeart->find(['news_id' => $_GET['id'], 'user_id' => $_SESSION['login']['id']]);
        $heart = $like['lv'] ?? 0;
    } else {
        $heart =  0;
    }
    $lv = $heart + 1;
?>
    <!-- News Content -->
    <div class="news-content-all">
        <div class="news-content-left">
            <!-- left -->
            <div class="news-content-left-content">
                <!-- <li> Type </li> -->
                <div class="news-content-subject">
                    <h2>
                        <?= $news['subject']; ?>
                    </h2>
                    <img class="news-content-subject-heart <?= $heartfunction; ?>" data-lv="<?= $lv; ?>" data-heart="<?= $heart; ?>" data-id="<?= $_GET['id']; ?>" src="./thumbnail/heart-lv<?= $heart; ?>.png" alt="">
                </div>
                <p class="news-content-op">
                    BY <?= $news['user_id']; ?>
                </p>
                <p class="news-content-updated">
                    Updated <?= $news['updated_at']; ?>
                </p>
                <div class="news-content-img"><img src="<?= $url; ?>" alt="">
                    <p> file-content </p>
                </div>
                <p class="news-content-content">
                    <?= nl2br($news['content']); ?>
                </p>
                <p class="news-content-created">
                    Released <?= $news['created_at']; ?>
                </p>
            </div>
            <div class="news-content-down">
                others
            </div>
        </div>
        <div class="news-messages">
            <div class="news-messages-all">
                <p> Messages </p>
                <hr>
                <div class="messages-here">
                    <?php
                    // $messages = $NewsMessage->all(['subject_id' => $_GET['id']]);
                    // prr($messages);
                    // foreach ($messages as $message) {
                    // if (isset($_SESSION['login']) && $message['op'] == $_SESSION['login']['id']) {
                    ?>
                    <!-- <div class="messages-in my-news-message"> -->
                    <?php
                    // } else {
                    ?>
                    <!-- <div class="messages-in"> -->
                    <?php
                    // }
                    ?>
                    <!-- <div class="news-op"> -->
                    <!-- <img src="" alt=""> -->
                    <!-- <p></p> -->
                </div>
                <!-- <p></p> -->
            </div>
            <?php
            // }
            ?>

            <div class="leave-news-messages">
                <p>Leave Messages</p>
                <textarea class="new-message" name="message" data-id="<?= $_GET['id']; ?>" rows="6" maxlength="64"></textarea>
                <input class="submit <?= $messagefunction; ?>" type="submit" value="Submit">
                <input class="reset" type="reset" value="reset">
            </div>
        </div>
    </div>
<?php
}
?>

<script>
    const userId = document.cookie.split(";")[0].split("=")[1];
    let first = `id=<?= $_GET['id']; ?>&table=NewsMessage`;
    let ops = `table=Users`;
    $.post("./api/news_ajax.php", first, (res) => {
        // console.log(res);
        let messagesList = JSON.parse(res);
        $.post("./api/news_ajax.php", ops, (ops) => {
            let messageAll = "";
            console.log(JSON.parse(ops));
            let opList = JSON.parse(ops);
            messagesList.forEach(value => {
                let op = value.op;
                console.log(op);
                let name = (opList[op - 1]['name'])
                // console.log(acc);
                let mg = value.message;
                if (op == userId) {
                    messageAll = `<div class="messages-in my-news-message">
                                        <div class="news-op">
                                            <img src="" alt="">
                                            <p>${name}</p>
                                        </div>
                                        <p>${mg}</p>
                                  </div>`;
                } else {
                    messageAll = `<div class="messages-in">
                                        <div class="news-op">
                                            <img src="" alt="">
                                            <p>${name}</p>
                                        </div>
                                        <p>${mg}</p>
                                  </div>`;
                }
                $(".messages-here").append(messageAll);
            });
        })
    })

    $(".guestHeart").on("click", function() {
        alert("Please Sign in .");
        window.location.href = "?meow=sign_in";
    })

    // console.log(document.cookie);
    $(".memberHeart").on("click", function() {
        // console.log($(this).data());
        // console.log(typeof($(this).attr("data-lv")));
        const lv = ($(this).attr("data-lv")) % 4;
        const id = $(this).data("id");
        // console.log(typeof(lv));
        // console.log(lv);
        $(this).attr("data-heart", lv);
        $(this).attr("src", "./thumbnail/heart-lv" + lv + ".png");
        $(this).attr("data-lv", (lv + 1));

        let heart = `lv=${lv}&id=${id}&table=NewsHeart`;
        // console.log(typeof(heart));
        $.post("./api/news_ajax.php", heart, (res) => {
            console.log(res);
        })
    })

    $(".reset").on("click", function() {
        // console.log($(".new-message").text());
        $(".new-message").val('');
    })

    $(".guestMessage").on("click", function() {
            alert("Please Sign in .");
            window.location.href = "?meow=sign_in";
        })

    $(".memberMessage").on("click", function() {
        const id = $(".new-message").data("id");
        const message = $(".new-message").val();
        let newMessage = `id=${id}&message=${message}&table=NewsMessage`;
        // console.log(newMessage);
        $.post("./api/news_ajax.php", newMessage, (res) => {
            // console.log(res);
            $(".new-message").val('');
            console.log(JSON.parse(res));
            $(".messages-here").append(`<div class="messages-in my-news-message">
                                                <div class="news-op">
                                                    <img src="" alt="">
                                                    <p><?=$_SESSION['login']['name'];?></p>
                                                </div>
                                                <p>${message}</p>
                                          </div>`);
        })

    })
</script>