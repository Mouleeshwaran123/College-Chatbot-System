  <?php
    include "../config.php";
    session_start();
    $sql="delete from chats where id={$_GET["id"]}";
    if($con->query($sql))
    {
        echo'<script>alert("Delete Success");window.open("view_chats.php","_self");</script>';
    }

?>