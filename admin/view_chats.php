<?php
    require_once "../config.php";
    session_start();
    if(!isset($_SESSION["AID"]))
    {
        echo'<script>alert("Access Denied");window.open("../admin.php","_self");</script>';
    }
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <?php require_once "header.php"; ?>
    <style>
      
    </style>
</head>
<body>
    <?php require_once "navbar.php"; ?>
    
    <div class="container-fluid">
        <div class="row">
            
            
            <div class="col-md-3">
                <h3> Dashboard</h3><hr>
                <?php include "admin_side.php";?>
            </div>
            <div class="col-md-9">
            <h3>View Chats Questions and Answers</h3><hr>
				<!-- ---------------------------------------------------------------- -->
				<div class="col-md-12">
                    <table class="table table-bordered"  id="myTable">
                        <thead>
                            <th>Sno</th>
                            <th>Question</th>
                            <th>Answer</th>
                            <th>Keywords</th>
                            <th>Frequent</th>
                            <th>Edit</th>
                            <th>Delete</th>
                        </thead>
                        <tbody> 
                            <?php
                                $sql="select * from chats chats";
                                $re=$con->query($sql);
                                if($re->num_rows>0)
                                {
                                    $i=0;
                                    while($row=$re->fetch_assoc())
                                    {
                                        $i++;
                                        echo'
                                            <tr>
                                                <td>'.$i.'</td>
                                                <td>'.$row["messages"].'</td>
                                                <td>'.$row["response"].'</td>
                                                <td>'.$row["keywords"].'</td>
                                                <td>'.$row["frequent"].'</td>
                                                <td><a href="chatsedit.php?id='.$row["id"].'" class="btn btn-sm btn-info">Edit</a></td>
                                                <td><a href="chatsDel.php?id='.$row["id"].'" class="btn btn-sm btn-danger">Delete</a></td>
                                            </tr>
                                        
                                        ';
                                    }
                                   
                                }
                                else{
                                    echo '<div class="alert alert-danger">Records Not Found</div>';
                                }

                            ?>
                        </tbody>
                    </table>
                </div>
				
				<!-- ---------------------------------------------------------------- -->
				
            
            </div>
        </div>
    </div>

    <?php require_once "footer.php"; ?>
</body>
</html>