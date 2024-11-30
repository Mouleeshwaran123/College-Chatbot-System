<!DOCTYPE html>



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
          <li class="list-inline-item text-white h3 font-secondary nasted">LIST OF PRINCIPALS</li>
        </ul>
      
      </div>
    </div>
  </div>
</section>
<!-- /page title -->

<!-- about -->
<section class="section">
  <div class="container">
    <div class="row">
      <div class="col-12">
            <table class="table table-bordered">
                <thead>
                    <th>SNO</th>
                    <th>NAME</th>
                    <th>PERIOD</th>
                </thead>
                <tbody>
                    <tr>
                        <td>1</td>
                        <td>Mr.R.Narasingam M.A</td>
                        <td>Period : 31.05.1980 - 12.10.1981</td>
                    </tr>
                    <tr>
                        <td>2</td>
                        <td>Mr.A.Nagarajan M.A</td>
                        <td>Period : 12.10.1981 - 28.01.1982</td>
                    </tr>
                    <tr>
                        <td>3</td>
                        <td></td>
                        <td>Period : 05.11.1982 - 30.04.1984</td>
                    </tr>
                    <tr>
                        <td>4</td>
                        <td></td>
                        <td>Period : 01.06.1984 - 16.06.1984</td>
                    </tr>
                    <tr>
                        <td>5</td>
                        <td></td>
                        <td>Period : 09.07.1984 - 31.05.1987</td>
                    </tr>
                </tbody>
            </table>
      </div>
    </div>
  </div>
</section>
<!-- /about -->





  <!-- /teachers -->

<!-- footer -->
<footer>
 
  <!-- footer content -->
  <?php include "footer.php"; ?>

</body>
</html>