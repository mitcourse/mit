<?php
require_once 'sql.php';

$sqls = new sql();

$sqlcmd = 'select * from course where types="physics";';
$result = $sqls->select($sqlcmd);
while($row = $result->fetch_assoc()) {
    echo "id: ". $row["id"]. "   Name: ". $row["names"]. "   type: ".  $row["types"]. "   url: ".  $row["url"]
    . "   textbook: ".$row["textbook"]."<br />";
}

