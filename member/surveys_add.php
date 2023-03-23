<!-- Add Surveys -->
<?php
if (!isset($_SESSION['login'])) {
    // $error = "You do not have permission to view this directory or page.";
    // header("location:./index.php?meow=survey&error=$error");
    header("location:./index.php?meow=survey");
} else {
?>
    <form class="surveys-form" action="./api/surveys_add.php" method="POST">
        <ul class="surveys-add-top">
            <li>Subject<input type="text" name="subject"></li>
        </ul>
        <ul class="surveys-add">
            <li class="date">
                From&nbsp;
                <input type="date" class="start_time" name="start_time" value="<?= date('Y-m-d'); ?>" min="<?= date("Y-m-d"); ?>" max="<?= date('Y-m-d', strtotime("+1 month")); ?>">
                to
                <input type="date" class="end_time" name="end_time" value="<?= date('Y-m-d', strtotime("+7 days")); ?>" min="<?= date('Y-m-d', strtotime("+1 day")); ?>">
            </li>
            <li>
                <!-- Type
                <div class="surveys-add-type">
                    <input type="radio" name="type" checked>Radio-choice
                    <input type="radio" name="type">Multiple-choice
                </div> -->
            </li>
            <li>Option.<p>1</p>
                <div class="surveys-add-option">
                    <input type="text" name="opt[]" required>
                    <div class="option-plus">+</div>
                </div>
            </li>
            <li>Option.<p>2</p>
                <div class="surveys-add-option">
                    <input type="text" name="opt[]" required>
                </div>
            </li>
        </ul>
        <div class="surveys-form-footer">
            <input type="hidden" name="user_id" value="<?= $_SESSION['login']['id']; ?>">
            <input class="submit" type="submit" value="Submit">
            <input class="" type="reset" value="Reset">
        </div>
    </form>
<?php
}
?>

<script>
    const startTime = document.querySelector(".start_time");
    const endTime = document.querySelector(".end_time");
    // console.log(startTime.value);
    // console.log(startTime);
    startTime.addEventListener("change", dateCheck);
    endTime.addEventListener("change", dateCheck);

    function dateCheck() {
        let date = startTime.value;
        console.log(date);
        if (date > endTime.value) {
            endTime.setAttribute("min", date);
            endTime.setAttribute("value", date);
            alert("The voting time should last at least one day.")
        }
    }

    $(".submit").on("click", function(e) {
        if (endTime.value <= startTime.value) {
            e.preventDefault();
            alert("The voting time should last at least one day.");
        }elseif()
    })


    const surveysAdd = document.querySelector(".surveys-add");
    const optionPlus = document.querySelector(".option-plus");
    optionPlus.addEventListener("click", () => {
        const surveysAddOption = document.querySelectorAll(".surveys-add-option").length + 1;
        console.log(surveysAddOption);
        let li = document.createElement("li");
        li.className = "nopt";
        li.innerHTML = `Option.<p>` + surveysAddOption + `</p><div class="surveys-add-option"><input type="text" name="opt[]" required><div class="option-minus">-</div></div>`;
        surveysAdd.append(li);

        const optionMinus = document.querySelectorAll(".option-minus");
        optionMinus.forEach(minus => {
            minus.addEventListener("click", () => {
                minus.parentElement.parentElement.remove();

                let nopts = document.querySelectorAll(".nopt");
                // console.log(nopts);
                // console.log(nopts[0].firstElementChild);
                // nopts[0].firstElementChild.innerHTML = 3;
                // console.log(nopts.length);
                for (let i = 0; i < nopts.length; i++) {
                    nopts[i].firstElementChild.innerHTML = i + 3;
                }

            })
        })
    })
</script>