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
            <h3>Excel Upload</h3><hr>
                
               <div class="col-md-12">
					<form action="uploadExcelquestion.php" method="post" enctype="multipart/form-data">
						<div class="col-md-6 form-group">
							<label>Choose File To Upload:</label>
							<input type="file" class="form-control" name="fileToUpload" id="fileToUpload" required>
						</div>
						<div class="col-md-12 form-group"><br>
							<button type="submit" name="submit" class="btn btn-default">Upload</button>
						</div>
					</form>
				</div>

				<!-- ---------------------------------------------------------------- -->
				
				
				<!-- ---------------------------------------------------------------- -->
				
            
            </div>
        </div>
    </div>

    <?php require_once "footer.php"; ?>
</body>
</html>