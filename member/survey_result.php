<?php
$resultSubject = $SurveySubject->find($_GET['subject_id']);
// prr($resultSubject);
$resultOptions = $SurveyOptions->all(['subject_id' => $_GET['subject_id']]);
// prr($resultOptions);
$labels = [];
$datas = [];
foreach ($resultOptions as $key => $resultOption) {
    $labels[] = $resultOption['opt'];
    $datas[] = $resultOption['vote'];
}
// prr($labels);
// prr($datas);
?>
<div class="surveys-form survey-result">
    <p class="survey-result-subject"><?= $resultSubject['subject']; ?></p>

    <canvas class="resultCanvas">here</canvas>
</div>

<script src="https://cdn.jsdelivr.net/npm/chart.js"></script>
<script>
    const windowW = window.innerWidth;
    const windowH = window.innerHeight;
    const resultCanvas = document.querySelector(".resultCanvas");;
    const reCtx = resultCanvas.getContext('2d', {
        willReadFrequently: true
    });
    $.post("./api/survey_result.php", "id=<?= $_GET['subject_id']; ?>", (res) => {
        const options = JSON.parse(res);
        console.log(options);
        const labels = new Array();
        const votes = new Array();
        options.forEach(option => {
            console.log(option.opt);
            labels.push(option.opt);
            console.log(option.vote);
            votes.push(option.vote);
        });
        console.log(labels);
        console.log(votes);
        const datas = {
            labels: labels,
            datasets: [{
                axis: '',
                label: '<?= $resultSubject['subject']; ?>', // Title
                data: votes,
                fill: true,
                backgroundColor: [
                    '#debd6a',
                    '#d5ba8d',
                    '#987861',
                    '#dddddd',
                    '#fff'
                ],
                borderColor: [
                    '#debd6a',
                    '#d5ba8d',
                    '#987861',
                    '#dddddd',
                    '#fff'
                ],
                borderWidth: 0
            }]
        };

        new Chart(reCtx, {
            type: 'bar',
            data: datas,
            options: {
                indexAxis: 'y',
                scales: {
                    x: {
                        title: {
                            display: true,
                            text: "votes"
                        },
                        grid: {
                            display: false
                        },
                        border: {
                            color: '#fff'
                        },
                        ticks: {
                            beginAtZero: true,
                            color: '#000',
                            stepSize: 1
                        },
                        suggestedMax: '<?= $resultSubject['total']; ?>'
                    },
                    y: {
                        grid: {
                            display: false
                        },
                        // border: { color: '#fff' },
                        border: {
                            display: false
                        },
                    }
                },
                plugins: {
                    legend: {
                        display: false
                    }
                }
            }
        });
    })
</script>