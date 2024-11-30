<?php 
 include "../config.php";
echo "Post Data";
 print_r($_POST['messageValue']);
echo "<br>";

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
