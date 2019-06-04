<?php  
	
	include "conn.php";

	$result1=mysql_query("select * from zolpic");

	$wronglist1=array();
	
	for ($i=0; $i < mysql_num_rows($result1); $i++) { 
		$wronglist1[$i]=mysql_fetch_array($result1,MYSQL_ASSOC);
	}
	
	echo json_encode($wronglist1);

	/* $result2 = mysql_query("select * from Hqualityrecommended");
	$Highqualityrecommended = array();
	for ($i = 0; $i < mysql_num_rows($result2); $i++) {
		$Highqualityrecommended[$i] = mysql_fetch_array($result2, MYSQL_ASSOC);
	}
	echo json_encode($Highqualityrecommended); */
