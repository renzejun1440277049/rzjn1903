<?php
include "conn.php";
$result = mysql_query("select * from HqualityRList");
$HqualityRList = array();
for ($i = 0; $i < mysql_num_rows($result); $i++) {
    $HqualityRList[$i] = mysql_fetch_array($result, MYSQL_ASSOC);
}
echo json_encode($HqualityRList);
