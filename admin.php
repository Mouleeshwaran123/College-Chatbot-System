<!DOCTYPE html>
<?php
include "config.php";
session_start();
?>

<html lang="en">
<head>

<?php include "head.php"; ?>
</head>

<body>
  <!-- preloader start -->
  <div class="preloader">
    <img src="images/preloader.gif" alt="preloader">
  </div>
  <!-- preloader end -->

<!-- header -->
<header class="fixed-top header">
  <?php include "top_head_nav.php"; ?>
</header>
<!-- /header -->


<!-- page title -->
<section class="page-title-section overlay" data-background="images/backgrounds/page-title.jpg">
  <div class="container">
    <div class="row">
      <div class="col-md-8">
        <ul class="list-inline custom-breadcrumb mb-2">
          <li class="list-inline-item"><a class="h2 text-primary font-secondary" href="index.php">Home</a></li>
          <li class="list-inline-item text-white h3 font-secondary nasted">Admin</li>
        </ul>

      </div>
    </div>
  </div>
</section>
<!-- /page title -->

<!-- contact -->
<section class="section bg-gray">
  <div class="container">
    <div class="row">
      <div class="col-lg-12">
        <h2 class="section-title">Admin Login</h2>
      </div>
    </div>
    <div class="row">
      <div class="col-lg-8 mb-4 mb-lg-0">
				<?php
					if(isset($_POST["login"]))
					{
						$aname = $con->real_escape_string($_POST["aname"]);
						$apass = $con->real_escape_string($_POST["apass"]);

					$sql="select * from admin where ANAME='{$aname}' and APASS='{$apass}'  ";
						$res=$con->query($sql);
						if($res->num_rows>0)
						{
							$row=$res->fetch_assoc();
							$_SESSION["AID"]=$row["AID"];
							$_SESSION["ANAME"]=$row["ANAME"];
						echo "<script>window.open('admin/admin_home.php','_self');</script>";

						}else{
							echo "<div class='alert alert-danger'>Invalid username or password</div>";
						}
					}
					?>	
		<form action="<?php echo $_SERVER["REQUEST_URI"]; ?>" method="post" autocomplete="off" class="p-5 bg-white border">

              <div class="row form-group">
                <div class="col-md-12 mb-3 mb-md-0">
                  <label class="font-weight-bold" for="fullname">UserName</label>
                  <input type="text" name="aname" class="form-control" placeholder="Enter UserName">
                </div>
              </div>
              <div class="row form-group">
                <div class="col-md-12 mb-3 mb-md-0">
                  <label class="font-weight-bold" for="fullname"> Password</label>
                  <input type="password" name="apass" class="form-control" placeholder="Enter Password">
                </div>
              </div>


              <div class="row form-group">
                <div class="col-md-12">
                  <input type="submit" name="login" value="Login Here" class="btn btn-primary  py-2 px-4 rounded-0">
                </div>
              </div>

  
            </form>
      </div>
    </div>
  </div>
</section>
<!-- /contact -->



<!-- footer -->
<footer>
 
  <!-- footer content -->
  <?php include "footer.php"; ?>
  

<script>
$(document).ready(function () {
	$('#myTable').DataTable();	
});

</script>

</body>
</html>