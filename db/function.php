<?php
$Users = new DB('users');
$News = new DB('news');
$NewsHeart = new DB('news_heart');
$NewsMessage = new DB('news_message');
$NewsType = new DB('news_type');
$SurveySubject = new DB('survey_subject');
$SurveyOptions = new DB('survey_options');
$SurveyUsers = new DB('survey_users');

class DB
{
    protected $dsn = "mysql:host=localhost;charset=utf8;dbname=meow";
    // protected $dsn = "mysql:host=localhost;charset=utf8;dbname=s1110419";
    protected $pdo;
    protected $table;

    public function __construct($table)
    {
        $this->table = $table;
        $this->pdo = new PDO($this->dsn, 'root', '');
        // $this->pdo = new PDO($this->dsn, 's1110419', 's1110419');
    }

    // Foreach
    protected function ArrayToSqlArray($array)
    {
        $tmp = [];
        foreach ($array as $key => $value) {
            $tmp[] = "`$key`='$value'";
        }
        return $tmp;
    }

    // All
    public function all(...$arg)
    {
        $sql = " SELECT * FROM `$this->table` ";

        if (isset($arg[0])) {
            if (is_array($arg[0])) {
                $sql .= " WHERE " . join(" && ", $this->ArrayToSqlArray($arg[0]));
            } else {
                $sql .= $arg[0];
            }
        }

        if (isset($arg[1])) {
            if (is_array($arg[1])) {
                $sql .= join(" && ", $this->ArrayToSqlArray($arg[1]));
            } else {
                $sql .= $arg[1];
            }
        }

        // echo $sql;
        return $this->pdo->query($sql)->fetchAll(PDO::FETCH_ASSOC);
    }

    // Find
    public function find($find)
    {
        $sql = " SELECT * FROM `$this->table` WHERE ";
        if (is_array($find)) {
            $sql .= join(" && ", $this->ArrayToSqlArray($find));
        } else {
            $sql .= '`id` = ' . $find;
        }

        // echo $sql;
        return $this->pdo->query($sql)->fetch(PDO::FETCH_ASSOC);
    }

    // Save
    public function save($save)
    {
        if (isset($save['id'])) {
            $id = $save['id'];
            unset($save['id']);
            $sql = "UPDATE `$this->table` SET " . join(",", $this->ArrayToSqlArray($save)) . " WHERE `id` = $id";
        } else {
            $keys = [];
            $values = [];
            foreach ($save as $key => $value) {
                $keys[] = "`$key`";
                $values[] = "'$value'";
            }
            $sql = "INSERT INTO `$this->table`(" . join(",", $keys) . ") VALUES (" . join(",", $values) . ")";
        }

        // echo $sql;
        return $this->pdo->exec($sql);
    }

    // Del
    public function del($del)
    {
        $sql = " DELETE FROM `$this->table` WHERE ";
        if (is_array($del)) {
            $sql .= join(" && ", $this->ArrayToSqlArray($del));
        } else {
            $sql .= " `id` = " . $del;
        }
        // echo $sql;
        return $this->pdo->exec($sql);
    }

    // Order
    public function orderOne($field, $order, ...$arg)
    {
        $sql = " SELECT * FROM `$this->table` ORDER BY `$field` $order ";
        if (isset($arg[0])) {
            $sql .= $arg[0];
        }

        // echo $sql;
        return $this->pdo->query($sql)->fetch(PDO::FETCH_ASSOC);
    }

    // Orders
    public function orders($field, $order, ...$arg)
    {
        $sql = " SELECT * FROM `$this->table` ORDER BY `$field` $order ";
        if (isset($arg[0])) {
            $sql .= $arg[0];
        }

        // echo $sql;
        return $this->pdo->query($sql)->fetchAll(PDO::FETCH_ASSOC);
    }

    // Math
    protected function math($math, $field, $arg)
    {
        $sql = "SELECT $math($field) FROM `$this->table` ";
        if ($arg !== 1) {
            if (is_array($arg)) {
                $sql .=  " WHERE " . join(" && ", $this->ArrayToSqlArray($arg));
            } else {
                $sql .=  $arg;
            }
        }

        // echo $sql;
        return $this->pdo->query($sql)->fetchColumn();
    }

    // Count
    public function count($count)
    {
        return $this->math('COUNT', '*', $count);
    }

    // Max
    public function max($field, $condition)
    {
        return $this->math('MAX', $field, $condition);
    }
    // Min
    public function min($field, $condition)
    {
        return $this->math('MIN', $field, $condition);
    }
    // Avg
    public function avg($field, $condition)
    {
        return $this->math('AVG', $field, $condition);
    }
    // Sum
    public function sum($field, $condition)
    {
        return $this->math('SUM', $field, $condition);
    }
}


// $NewHeart->all();
// $test = $NewHeart->save(['news_id' => 23, 'lv' => 2, 'user_id' => 1]);
// $test = $News->sum('type', 1);
// prr($test);


?>
<?php
// Print Array 
function prr($Arr)
{
    echo "<pre>";
    print_r($Arr);
    echo "</pre>";
}
?>

<?php
// Function
// Free
function free($sql)
{
    global $pdo;
    // echo $sql;
    return $pdo->query($sql)->fetchAll(PDO::FETCH_ASSOC);
}
?>


<?php
// All
function all($table, ...$args)
{
    global $pdo;
    $sql = "SELECT * FROM `$table` ";
    // prr($args);
    if (isset($args[0])) {
        if (is_array($args[0])) {
            foreach ($args[0] as $key => $value) {
                $all[] = "`$key`='$value'";
            }
            $sql .= " WHERE " . join(" AND ", $all);
        } else {
            $sql .= $args[0];
        }
    }
    // echo $sql;
    return $pdo->query($sql)->fetchAll(PDO::FETCH_ASSOC);
}

?>

<?php
// Find
function find($table, $factor)
{
    // echo ($factor);
    global $pdo;
    $sql = "SELECT * FROM `$table` ";
    if (is_array($factor)) {
        foreach ($factor as $key => $value) {
            $find[] = "`$key`='$value'";
        }
        $sql .= " WHERE " . join(" && ", $find);
    } else {
        $sql .= $factor;
    }
    // echo $sql;
    return $pdo->query($sql)->fetch(PDO::FETCH_ASSOC);
}
?>

<?php
// Insert
function insert($table, $insert)
{
    global $pdo;
    $sql = "INSERT INTO `$table` ";
    if (is_array($insert)) {
        $keys = [];
        $values = [];
        foreach ($insert as $key => $value) {
            $keys[] = "`$key`";
            $values[] = "'$value'";
        }
        $sql .= "(" . join(",", $keys) . ") VALUES (" . join(",", $values) . ")";
    } else {
        $sql .= $insert;
        // $sql.=$insert;
    }
    return $pdo->query($sql);
}
?>

<?php
// Update
function update($table, $update, ...$args)
{
    global $pdo;
    $sql = " UPDATE `$table` SET ";
    if (is_array($update)) {
        foreach ($update as $key => $value) {
            $set[] = "`$key`='$value'";
        }
        $sql = $sql  . join(" , ", $set);
    } else {
        $sql .= $update;
    }
    // echo $sql;

    if (isset($args[0])) {
        // prr($args);
        if (is_array($args[0])) {
            $setArg = [];
            foreach ($args[0] as $key => $value) {
                $setArg[] = "`$key`='$value'";
                // prr($setArg);
                // prr($args[0]);
            }
            $sql = $sql . " WHERE " . join(" AND ", $setArg);
        } else {
            $sql = $sql . " WHERE `id`='{$args[0]}'";
        }
    }

    // echo $sql;
    return $pdo->query($sql);
}
?>

<?php
// Delete
function del($table, $delete)
{
    global $pdo;
    $sql = " DELETE FROM `$table` WHERE ";
    if (is_array($delete)) {
        foreach ($delete as $key => $value) {
            $del[] = "`$key`='$value'";
        }
        $sql .= join(" OR ", $del);
    } else {
        $sql .= "`id`=" . $delete;
    }
    // echo $sql;
    return $pdo->exec($sql);
}
?>