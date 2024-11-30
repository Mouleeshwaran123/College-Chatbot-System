    <?php
    include "../config.php";

    ini_set('display_errors', 1);
ini_set('display_startup_errors', 1);
error_reporting(E_ALL);

    /*
    $user_messages = mysqli_real_escape_string($con, $_POST['messageValue']);
   

$words = explode(" ", $user_messages);

if(count($words)==1){
$words[0]=$user_messages;
}

$query = "SELECT * FROM chats WHERE ";
foreach ($words as $word) {
    $query .= "messages LIKE '%$word%' or ";
}
$query = rtrim($query, " or ");
*/

$user_messages = mysqli_real_escape_string($con, $_POST['messageValue']);
$inputWords = [];
$stopWords = ['is', 'of', 'the', 'in', 'a', 'an', 'and', 'or', 'who'];
$inputWords = array_diff(preg_split("/[\s,]+/", $user_messages), $stopWords);
$inputWords = array_unique($inputWords);
$query = "SELECT * FROM chats WHERE ";
foreach ($inputWords as $word) {
    $query .= "messages LIKE '%$word%' OR ";
}
$query = rtrim($query, "OR ");
   $res=$con->query($query);
/*
 
    $records=[];
    if($res->num_rows>0)
    {
        $i=0;
        $records["keywords"]="";
        while($row=$res->fetch_assoc())
        {
            if($i==0)
                $records["response"]=$row["response"];
            $records["keywords"]=$records["keywords"].",".$row["keywords"];
            $i++;  
        }
        $records["keywords"]=substr($records["keywords"],1,strlen($records["keywords"]));
        $records["msg"]="Data Found";
        $records["status"]="Good";
        echo json_encode($records);
    }
    else{
        $records["msg"]="Sorry, I can't understand you.";
        $records["status"]="Bad";
        echo json_encode($records);
    }

    */
    $records = [];
if (mysqli_num_rows($res) > 0) {
    $maxMatches = 0;
    $bestMatch = null;
    $records["keywords"]=array();
    while ($row = mysqli_fetch_assoc($res)) {
        if (!empty($row["keywords"])) {
            //$records["keywords"] = (!empty($records["keywords"])) ? $records["keywords"] . "," . $row["keywords"] : $row["keywords"];
            $records["keywords"][]= $row["keywords"];
        }
        
        $matches = 0;
        foreach ($inputWords as $word) {
            if (stripos($row['messages'], $word) !== false) {
                $matches++;
            }
        }
        if ($matches > $maxMatches) {
            $maxMatches = $matches;
            $bestMatch = $row;
        }
    }
    //$records["keywords"] = $records["keywords"];
    $records["msg"] = "Data Found";
    $records["status"] = "Good";
    $records["response"] = $bestMatch["response"];
    echo json_encode($records);
} else {
    $records["msg"] = "Sorry, I can't understand you.";
    $records["status"] = "Bad";
    echo json_encode($records);
}

    ?>
