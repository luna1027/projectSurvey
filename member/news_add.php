<!-- News Add -->
<?php
if (!isset($_SESSION['login'])) {
    header("location:./index.php?meow=news");
} else {
?>
    <form class="surveys-form" action="./api/news_add.php" method="POST" enctype="multipart/form-data">
        <ul class="news-add-main">
            <li class="news-add-subject">
                <label for="subject">Subject</label>
                <textarea name="subject" id="subject" cols="20" rows="2" maxlength="" required></textarea>
            </li>
            <li>
                <div class="news-add-type">
                    <label for="type">Type</label>
                    <select name="type" id="type">
                        <option value="1">World</option>
                        <option value="2">Taiwan</option>
                        <option value="3">Sport</option>
                        <option value="4">Entertainment</option>
                        <option value="5">Business</option>
                        <option value="6">Sience & Health</option>
                        <option value="7">life</option>
                        <option value="99">Others</option>
                    </select>
                </div>
            </li>
            <li>
                <div class="news-add-file">
                    <input type="file" name="news_file" id="" value="File" accept="image/*" required>
                    <img class="img_preview" src="" alt="">
                </div>
            </li>
            <li>
                <div class="news-add-file-content">
                    <label for="img_content">Image</label>
                    <textarea name="img_content" id="img_content" cols="20" rows="2" maxlength="" required></textarea>
                </div>
            </li>
            <li class="news-add-content">
                <label for="content">Content</label>
                <textarea name="content" id="content" cols="20" rows="25" required></textarea>
            </li>
        </ul>
        <div class="surveys-form-footer news-add-footer">
            <input type="hidden" name="user_id" value="<?= $_SESSION['login']['id']; ?>">
            <input class="" type="submit" value="Submit">
            <input class="" type="reset" value="Reset">
        </div>
    </form>
<?php
}
?>

<script src="//cdnjs.cloudflare.com/ajax/libs/validate.js/0.12.0/validate.min.js"></script>
<script>
    const fileInput = $("input[type='file']");
    // console.log(fileInput);
    fileInput.on("change", function(e) {
        // console.log(e.target.files[0]);
        const file = e.target.files[0];
        // const reader = new FileReader();
        // console.log(reader);

        // reader.addEventListener("load", function(e) {
        const image = new Image();
        // image.src = e.target.result;
        // console.log(image);
        image.addEventListener("load", function() {
            const scale = image.height / image.width;
            console.log(scale);
            if (scale !== 0.5625) {
                alert("The dimensions of the picture are suitable for a 16:9 ratio.");
            } else {
                $(".img_preview").attr("src", URL.createObjectURL(file));
                $(".img_preview").attr("width", "192px");
                $(".img_preview").attr("height", "108px");

            }
        })
        image.src = URL.createObjectURL(file);
    })
    // reader.readAsDataURL(file);
    // })
</script>