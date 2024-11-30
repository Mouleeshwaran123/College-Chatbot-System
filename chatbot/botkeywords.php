<?php
     include "../config.php";
    $user_messages = mysqli_real_escape_string($con, $_POST['messageValue']);
$query = "SELECT * FROM chats WHERE keywords='$user_messages' ";
    $res=$con->query($query);
    $records=[];
    if($res->num_rows>0)
    {
        $i=0;
        $records["keywords"]=array();
        while($row=$res->fetch_assoc())
        {
            if($i==0)
                $records["response"]=$row["response"];
            $records["keywords"][]=$row["keywords"];
            $i++;  
        }
       // $records["keywords"]=substr($records["keywords"],1,strlen($records["keywords"]));
        $records["msg"]="Data Found";
        $records["status"]="Good";
        echo json_encode($records);
    }
    else{
        $records["msg"]="Sorry, I can't understand you.";
        $records["status"]="Bad";
        echo json_encode($records);
    }
    ?>
