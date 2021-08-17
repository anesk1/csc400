<?php
include 'db.php';


$id = trim($_POST['verbId']);


$myArray = array();

if ($result = $DBcon->query("SELECT * FROM tests WHERE verbId='$id' ")) {

    while($row = $result->fetch_array(MYSQLI_ASSOC)) {
		
		
            $myArray[] = $row;
    }
    echo json_encode($myArray);
}


?>