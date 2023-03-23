<!-- Surveys Edit -->
<?php
if (!isset($_SESSION['login'])) {
    header("location:./index.php?meow=survey");
} else {
    $subject = find('survey_subject', ['id' => $_GET['subject_id']]);
    // prr($subject);
    $options = all('survey_options', ['subject_id' => $_GET['subject_id']]);
    // prr($options);
?>
    <form class="surveys-form" action="./api/surveys_edit.php" method="POST">
        <ul class="surveys-add-top">
            <li>
                Subject<input type="text" name="subject" value="<?= $subject['subject']; ?>">
                <div class="option-plus">+</div>
            </li>
        </ul>
        <ul class="surveys-add">
            <li class="date">
                From&nbsp;<input type="date" class="start_time" name="start_time" value="<?= $subject['start_time']; ?>" min="<?= date('Y-m-d'); ?>" max="<?= date('Y-m-d', strtotime("+1 month")); ?>">
                to<input type="date" class="end_time" name="end_time" value="<?= $subject['end_time']; ?>" min="<?= date('Y-m-d', strtotime("+1 day")); ?>">
            </li>
            <li>
                <!-- Type
                <div class="surveys-add-type">
                    <input type="radio" name="type" checked>Radio-choice
                    <input type="radio" name="type">Multiple-choice
                </div> -->
            </li>
            <?php
            foreach ($options as $key => $option) {
                if ($key == 0) {
            ?>
                    <li class="option-list">Option.<p><?= $key + 1 ?></p>
                        <div class="surveys-add-option">
                            <input type="text" name="opt[]" value="<?= $option['opt']; ?>" required>
                            <input type="hidden" name="opt_id[]" value="<?= $option['id']; ?>">
                            <div class="option-minus">-</div>
                        </div>
                    </li>

                <?php
                } else {
                ?>
                    <li class="option-list">Option.<p><?= $key + 1 ?></p>
                        <div class="surveys-add-option">
                            <input type="text" name="opt[]" value="<?= $option['opt']; ?>" required>
                            <input type="hidden" name="opt_id[]" value="<?= $option['id']; ?>">
                            <div class="option-minus">-</div>
                        </div>
                    </li>
            <?php
                }
            }
            ?>
        </ul>
        <div class="surveys-form-footer">
            <input type="hidden" name="subject_id" value="<?= $_GET['subject_id']; ?>">
            <input class="" type="submit" value="Submit">
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
            endTime.setAttribute("value", date);
            endTime.setAttribute("min", date);
            alert("The voting time should last at least one day.")
        }
    }

    $(".submit").on("click", function(e) {
        if (endTime.value <= startTime.value) {
            e.preventDefault();
            alert("The voting time should last at least one day.");
        }
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