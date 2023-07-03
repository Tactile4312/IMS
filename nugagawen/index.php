<!DOCTYPE html>
<html>
<head>
  <title>Admin</title>
  <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
        <link rel="stylesheet" href="./assets/Css/style.css">
  <style>
    .card {
      background-color: #007bff;
      color: white;
      text-align: center;
      padding: 20px;
      margin-bottom: 30px;
    }

    .card i {
      font-size: 70px;
      margin-bottom: 20px;
    }

    .card h4, .card h5 {
      margin-bottom: 0;
    }

    .table {
      margin-top: 30px;
    }
  </style>
</head>
<body>
  <?php
  include "./adminHeader.php";
  include "./sidebar.php";
  include_once "./config/dbconnect.php";
  ?>

  <div id="main-content" class="container allContent-section py-4">
    <div class="row">
      <div class="col-sm-3">
        <div class="card">
          <i class="fa fa-th-large mb-2"></i>
          <h4>Total Categories</h4>
          <h5>
            <?php
            $sql = "SELECT COUNT(*) AS total_categories FROM category";
            $result = $conn->query($sql);
            $row = $result->fetch_assoc();
            echo $row["total_categories"];
            ?>
          </h5>
        </div>
      </div>
      <div class="col-sm-3">
        <div class="card">
          <i class="fa fa-th mb-2"></i>
          <h4>Total Products</h4>
          <h5>
            <?php
            $sql = "SELECT COUNT(*) AS total_products FROM product";
            $result = $conn->query($sql);
            $row = $result->fetch_assoc();
            echo $row["total_products"];
            ?>
          </h5>
        </div>
      </div>
    </div>
  </div>

  <?php
  if (isset($_GET['category']) && $_GET['category'] == "success") {
    echo '<script> alert("Category Successfully Added")</script>';
  } else if (isset($_GET['category']) && $_GET['category'] == "error") {
    echo '<script> alert("Adding Unsuccessful")</script>';
  }
  if (isset($_GET['size']) && $_GET['size'] == "success") {
    echo '<script> alert("Size Successfully Added")</script>';
  } else if (isset($_GET['size']) && $_GET['size'] == "error") {
    echo '<script> alert("Adding Unsuccessful")</script>';
  }
  if (isset($_GET['variation']) && $_GET['variation'] == "success") {
    echo '<script> alert("Variation Successfully Added")</script>';
  } else if (isset($_GET['variation']) && $_GET['variation'] == "error") {
    echo '<script> alert("Adding Unsuccessful")</script>';
  }
  ?>

  <script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
  <script type="text/javascript" src="./assets/js/ajaxWork.js"></script>    
  <script type="text/javascript" src="./assets/js/script.js"></script>
  <script src="https://code.jquery.com/jquery-3.1.1.min.js" ></script>

  <script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js"></script>
</body>
</html>
