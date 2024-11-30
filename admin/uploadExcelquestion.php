<?php
    include "../config.php";
    session_start();
	
	
if(isset($_POST["submit"])) {
    $file = $_FILES['fileToUpload']['tmp_name'];
    
    // Check if file is CSV
    $file_ext = pathinfo($_FILES['fileToUpload']['name'], PATHINFO_EXTENSION);
    if($file_ext != "csv") {
       // die("Error: Please upload a CSV file.");
		echo'<script>alert("Please upload a CSV file only...");window.open("upload.php","_self");</script>';
    }

    // Read the CSV file
    $handle = fopen($file, "r");
    while (($data = fgetcsv($handle, 1000, ",")) !== FALSE) {
        // Insert into the database
        $message = $data[0]; // Assuming first column is message
        $response = $data[1]; // Assuming second column is response
        
        $sql = "INSERT INTO chats (messages, response) VALUES ('$message', '$response')";
        if ($con->query($sql) !== TRUE) {
            echo "Error: " . $sql . "<br>" . $con->error;
        }
    }

    fclose($handle);
	// echo'<div class="alert alert-success">Upload Successfully...</div>';
	echo'<script>alert("Upload Successfully...");window.open("upload.php","_self");</script>';
}

$con->close();
?>
