<?php
    include "../config.php";
    $user_messages = mysqli_real_escape_string($con, $_POST['messageValue']);
 
    $inputWords = [];
    
    $stopWords = ['is', 'of', 'the', 'in', 'a', 'an', 'and', 'or', 'who'];
    $inputWords = array_diff(preg_split("/[\s,]+/", $user_messages), $stopWords);
    $inputWords = array_unique($inputWords);
   
    $query = "SELECT * FROM chats WHERE ";
    foreach ($inputWords as $word) {
        $query .= "message LIKE '%$word%' OR ";
    }
    $query = rtrim($query, "OR ");

    $records=[];
    if ($result->num_rows > 0) {
        $maxMatches = 0;
        $bestMatch = null;
        while ($row = $result->fetch_assoc()) {
            $records["keywords"]=$records["keywords"].",".$row["keywords"];
            $matches = 0;
            foreach ($inputWords as $word) {
                if (stripos($row['message'], $word) !== false) {
                    $matches++;
                }
            }
            if ($matches > $maxMatches) {
                $maxMatches = $matches;
                $bestMatch = $row;
            }
        }
        $records["keywords"]=substr($records["keywords"],1,strlen($records["keywords"]));
        $records["msg"]="Data Found";
        $records["status"]="Good";
        $records["response"]=$bestMatch["response"];
        echo json_encode($records);
    
    } else {
        $records["msg"]="Sorry, I can't understand you.";
        $records["status"]="Bad";
        echo json_encode($records);
    }

?>
