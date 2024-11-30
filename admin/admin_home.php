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
            <h3>Add Chats Question</h3><hr>

<?php
// Check if form is submitted
if ($_SERVER["REQUEST_METHOD"] == "POST") {

    // Check connection
    if ($con->connect_error) {
        die("Connection failed: " . $con->connect_error);
    }

    // Prepare and bind the INSERT statement
    $stmt = $con->prepare("INSERT INTO chats (messages, response,keywords,frequent) VALUES (?,?,?,?)");
    $stmt->bind_param("ssss", $message, $response,$keywords,$frequent);

    // Set the values for the parameters and execute
    $message = $_POST["messages"];
    $response = $_POST["response"];
    $keywords = $_POST["keywords"];
    $frequent = $_POST["frequent"];
    if($stmt->execute()){
    echo "<div class='alert alert-success'>New records inserted successfully</div>";
    }else{
        echo "error";
    }
    // Close statement and connection
    $stmt->close();
    $con->close();
}
?>  
                
               <div class="col-md-12">
               <form action="<?php echo htmlspecialchars($_SERVER["PHP_SELF"]); ?>" method="post">
 <div class="form-group">
 <label for="messages" class="form-label">Message:</label>
    <input type="text" id="messages" class="form-control" name="messages">
 </div>
  <div class="form-group">
  <label for="response" class="form-label">Response:</label>
    <textarea id="response" name="response" rows="30" cols="50"  class="form-control texteditor" ></textarea>
  </div>
  <div class="form-group">
 <label for="keywords" class="form-label">Keywords:</label>
    <input type="text" id="keywords" class="form-control" name="keywords">
 </div>
 <div class="form-group">
    <label for="frequent" class="form-label">Frequent:</label>
    <select id="frequent" name="frequent" class="form-control">
        <option value="">Select</option>
        <option value="Yes">Yes</option>
        <option value="No">No</option>
    </select>
</div>

    <input type="submit" class="btn btn-primary" value="Submit">
</form>
                </div>
            </div>
        </div>
    </div>

    <?php require_once "footer.php"; ?>

    <script src="tinymce/tinymce.min.js"></script>
  <script type="text/javascript">
  function textEditor() {
    tinymce.init({
        selector: '.texteditor',
        plugins: 'image code, casechange, permanentpen, checklist, pageembed, formatpainter, table advtable, media, autoresize, paste, lists, searchreplace, emoticons, fullscreen, autolink link',
        toolbar: 'undo redo | casechange | formatselect | pageembed | permanentpen | bold italic | checklist numlist bullist | alignleft aligncenter alignright forecolor backcolor | table advtable searchreplace | link image media | code | rotateleft rotateright | imageoptions | quicklink blockquote | emoticons',
        // toolbar: "undo redo | bold italic | alignleft aligncenter alignright alignjustify | bullist numlist outdent indent | link code ",
        // menubar: true
        image_title: true,
        /* enable automatic uploads of images represented by blob or data URIs*/
        automatic_uploads: true,
        file_picker_types: 'image',
        /* and here's our custom image picker*/
        file_picker_callback: function (cb, value, meta) {
            var input = document.createElement('input');
            input.setAttribute('type', 'file');
            input.setAttribute('accept', 'image/*');
            input.onchange = function () {
                var file = this.files[0];

                var reader = new FileReader();
                reader.onload = function () {
                    var id = 'blobid' + (new Date()).getTime();
                    var blobCache = tinymce.activeEditor.editorUpload.blobCache;
                    var base64 = reader.result.split(',')[1];
                    var blobInfo = blobCache.create(id, file, base64);
                    blobCache.add(blobInfo);

                    /* call the callback and populate the Title field with the file name */
                    cb(blobInfo.blobUri(), {title: file.name});
                };
                reader.readAsDataURL(file);
            };
            input.click();
        },
        content_style: 'body { font-family:Helvetica,Arial,sans-serif; font-size:14px }'
    });
}
textEditor();
  </script>
    
</body>
</html>