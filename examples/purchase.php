<?php
include("../assets/include/connection.php");
$range = isset($_GET['range']) ? $_GET['range'] : 10;

if (isset($_GET['search'])) {
  $searchval = $_GET['search'];
  $recordCountSql = "SELECT count(*) as Count FROM purchase WHERE flavour LIKE '%$searchval%'";
  $result = $connect->query($recordCountSql);
  $countRecord = $result->fetchAll(PDO::FETCH_ASSOC)[0]["Count"];
  $pageCount = $countRecord % $range == 0 ? ($countRecord / $range) : intval($countRecord / $range) + 1;
  if (!isset($_GET["page"])) {
    $pageNo = 1;
  } else {
    $pageNo = $_GET["page"];
  }
  $select = "SELECT * FROM purchase WHERE flavour LIKE '%$searchval%' or category LIKE '%$searchval%' or packing LIKE '%$searchval%' or date LIKE '%$searchval%' or quantity LIKE '%$searchval%' LIMIT " . (($pageNo - 1) * $range) . ",$range";
  $query = $connect->query($select);
  $result = $query->fetchAll(PDO::FETCH_ASSOC);
} else {
  $recordCountSql = "SELECT count(*) as Count FROM purchase";
  $result = $connect->query($recordCountSql);
  $countRecord = $result->fetchAll(PDO::FETCH_ASSOC)[0]["Count"];
  $pageCount = $countRecord % $range == 0 ? ($countRecord / $range) : intval($countRecord / $range) + 1;
  if (!isset($_GET["page"])) {
    $pageNo = 1;
  } else {
    $pageNo = $_GET["page"];
  }
  $select = "SELECT * FROM purchase LIMIT " . (($pageNo - 1) * $range) . ",$range";
  $query = $connect->query($select);
  $result = $query->fetchAll(PDO::FETCH_ASSOC);
}
?>
<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="utf-8" />
  <link rel="apple-touch-icon" sizes="76x76" href="../assets/img/apple-icon.png">
  <link rel="icon" type="image/png" href="../assets/img/favicon.png">
  <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
  <title>
    AJ Enterprise
  </title>
  <meta content='width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0, shrink-to-fit=no'
    name='viewport' />
  <!--     Fonts and icons     -->
  <link href="https://fonts.googleapis.com/css?family=Montserrat:400,700,200" rel="stylesheet" />
  <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.1/css/all.css"
    integrity="sha384-fnmOCqbTlWIlj8LyTjo7mOUStjsKC4pOpQbqyi7RrhN7udi9RwhKkMHpvLbHG9Sr" crossorigin="anonymous">
  <!-- CSS Files -->
  <link href="../assets/css/bootstrap.min.css" rel="stylesheet" />
  <link href="../assets/css/now-ui-dashboard.css?v=1.5.0" rel="stylesheet" />
  <!-- CSS Just for demo purpose, don't include it in your project -->
  <link href="../assets/demo/demo.css" rel="stylesheet" />
</head>

<body class="">
  <div class="wrapper ">
    <div class="sidebar" data-color="orange">
      <!--
        Tip 1: You can change the color of the sidebar using: data-color="blue | green | orange | red | yellow"
    -->
      <div class="logo">
        <a href="./main.php" class="simple-text logo-mini">
          AJ
        </a>
        <a href="./main.php" class="simple-text logo-normal">
          Chill Out
        </a>
      </div>
      <div class="sidebar-wrapper" id="sidebar-wrapper">
        <ul class="nav">
          <li>
            <a href="./main.php">
              <i class="now-ui-icons design_app"></i>
              <p>Dashboard</p>
            </a>
          </li>
          <li>
            <a href="./category.php">
              <i class="now-ui-icons ui-1_simple-add"></i>
              <p>Add Category</p>
            </a>
          </li>
          <li>
            <a href="./flavour.php">
              <i class="now-ui-icons ui-1_simple-add"></i>
              <p>Add Flavour</p>
            </a>
          </li>
          <li>
            <a href="./stock.php">
              <i class="now-ui-icons business_globe"></i>
              <p>Stock</p>
            </a>
          </li>
          <li class="active">
            <a href="./purchase.php">
              <i class="now-ui-icons shopping_shop"></i>
              <p>Purcahse</p>
            </a>
          </li>
          <li>
            <a href="./sales.php">
              <i class="now-ui-icons business_money-coins"></i>
              <p>Sale</p>
            </a>
          </li>
        </ul>
      </div>
    </div>
    <div class="main-panel" id="main-panel">
      <!-- Navbar -->
      <nav class="navbar navbar-expand-lg navbar-transparent  bg-primary  navbar-absolute">
        <div class="container-fluid">
          <div class="navbar-wrapper">
            <div class="navbar-toggle">
              <button type="button" class="navbar-toggler">
                <span class="navbar-toggler-bar bar1"></span>
                <span class="navbar-toggler-bar bar2"></span>
                <span class="navbar-toggler-bar bar3"></span>
              </button>
            </div>
            <a class="navbar-brand" href="./purchase.php">Purchase List</a>
          </div>
          <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navigation"
            aria-controls="navigation-index" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-bar navbar-kebab"></span>
            <span class="navbar-toggler-bar navbar-kebab"></span>
            <span class="navbar-toggler-bar navbar-kebab"></span>
          </button>
          <div class="collapse navbar-collapse justify-content-end" id="navigation">
            <form>
              <div class="input-group no-border">
                <input type="text" name="search" class="form-control" placeholder="Search..." tabindex="1">
                <div class="input-group-append">
                  <div class="input-group-text">
                    <!-- <i class="now-ui-icons ui-1_zoom-bold" tabindex="2"></i> -->
                  </div>
                </div>
              </div>
            </form>
            <ul class="navbar-nav">
              <li class="nav-item">
                <a class="nav-link" href="./addpurchase.php">
                  <i class="now-ui-icons ui-1_simple-add" title="Add Purchase"></i>
                  <p>
                    <label>Add Purcahsse</label>
                  </p>
                </a>
              </li>
            </ul>
          </div>
        </div>
      </nav>
      <!-- End Navbar -->
      <div class="panel-header panel-header-sm">
      </div>
      <div class="content">
        <div class="row">
          <div class="col-md-12">
            <div class="card">
              <div class="card-header">
                <div class="row">
                  <div class="col-lg-10">
                    <h4 class="card-title">Current Purchase</h4>
                  </div>
                  <div class="col text-right">
                    <label for="range">Rows Per Page</label>
                    <select name="range" onchange="changerange()" id="range" class="custom-select">
                      <option value="10" <?= $range == 10 ? "selected" : '' ?>>10</option>
                      <option value="20" <?= $range == 20 ? "selected" : '' ?>>20</option>
                      <option value="50" <?= $range == 50 ? "selected" : '' ?>>50</option>
                      <option value="100" <?= $range == 100 ? "selected" : '' ?>>100</option>
                      <option value="500" <?= $range == 500 ? "selected" : '' ?>>500</option>
                    </select>
                  </div>
                </div>
              </div>
              <div class="card-body">
                <div class="table-responsive">
                  <table class="table">
                    <thead class=" text-primary">
                      <th>
                        Flavour
                      </th>
                      <th>
                        Category
                      </th>
                      <th>
                        Packing
                      </th>
                      <th>
                        Date
                      </th>
                      <th>
                        Quantity
                      </th>
                      <th class="text-center" colspan="2">
                        Action
                      </th>
                    </thead>
                    <tbody>
                      <?php foreach ($result as $ans) { ?>
                        <?php
                        $orgDate = $ans['date'];
                        $newDate = date("d-m-Y", strtotime($orgDate));
                        ?>
                        <tr>
                          <td>
                            <?= $ans['flavour'] ?>
                          </td>
                          <td>
                            <?= $ans['category'] ?>
                          </td>
                          <td>
                            <?= $ans['packing'] ?>
                          </td>
                          <td>
                            <?= $newDate ?>
                          </td>
                          <td>
                            <?= $ans['quantity'] ?>
                          </td>
                          <td class="text-center">
                            <a href="./upurchase.php?id=<?= $ans['id'] ?>" style="color: black;">Change</a>
                          </td>
                        </tr>
                      <?php } ?>
                    </tbody>
                  </table>
                </div>
                <div>
                  <nav aria-label="Page navigation example">
                    <ul class="pagination">
                      <?php
                      for ($i = 1; $i <= $pageCount; $i++) {
                        if (!isset($_GET["page"]))
                          $_GET["page"] = 1;
                        ?>
                        <li class="page-item <?= $_GET["page"] == $i ? "active" : "" ?>"><a class="page-link"
                            href="purchase.php?page=<?= $i ?>&range=<?= $range ?>"><?= $i ?></a></li>
                        <?php
                      }
                      ?>
                    </ul>
                  </nav>
                </div>
              </div>
            </div>
          </div>
          <footer class="footer">
            <div class="copyright" id="copyright">
              Coded by <a href="#">Jeet Jhaveri</a>
            </div>
        </div>
        </footer>
      </div>
    </div>
    <!--   Core JS Files   -->
    <script src="../assets/js/core/jquery.min.js"></script>
    <script src="../assets/js/core/popper.min.js"></script>
    <script src="../assets/js/core/bootstrap.min.js"></script>
    <script src="../assets/js/plugins/perfect-scrollbar.jquery.min.js"></script>
    <!--  Google Maps Plugin    -->
    <script src="https://maps.googleapis.com/maps/api/js?key=YOUR_KEY_HERE"></script>
    <!-- Chart JS -->
    <script src="../assets/js/plugins/chartjs.min.js"></script>
    <!--  Notifications Plugin    -->
    <script src="../assets/js/plugins/bootstrap-notify.js"></script>
    <!-- Control Center for Now Ui Dashboard: parallax effects, scripts for the example pages etc -->
    <script src="../assets/js/now-ui-dashboard.min.js?v=1.5.0" type="text/javascript"></script>
    <!-- Now Ui Dashboard DEMO methods, don't include it in your project! -->
    <script src="../assets/demo/demo.js"></script>
    <script>
      function changerange() {
        var range = document.getElementById('range').value;
        window.location.href = "purchase.php?range=" + range;
      }
    </script>
</body>

</html>