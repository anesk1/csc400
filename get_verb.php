<?php
include 'db.php';


$type = trim($_POST['type']);

$myArray = array();

if ($result = $DBcon->query("SELECT * FROM verbs WHERE type='$type' ")) {

    while($row = $result->fetch_array(MYSQLI_ASSOC)) {
		
		
            $myArray[] = $row;
    }
    echo json_encode($myArray);
}


?>