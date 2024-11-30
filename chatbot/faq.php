<?php
    include "../config.php"; 
    $query = "SELECT * FROM chats WHERE frequent='Yes' ";
    $res=$con->query($query);
    $records=[];
    if($res->num_rows>0)
    {
        while($row=$res->fetch_assoc())
        {
            $records[]=$row;
        }
    }
    echo json_encode($records);
?>
