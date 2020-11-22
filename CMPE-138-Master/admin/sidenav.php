<!doctype html>
<html lang="en">
<head>
  <title>Gym Database</title>
  <!-- Required meta tags -->
  <meta charset="utf-8">
  <meta content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0" name="viewport" />
  <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
  <!--     Fonts and icons     -->
  <link rel="stylesheet" type="text/css" href="assets/css/Material+Icons.css" />
  <link rel="stylesheet" href="assets/css/font-awesome.min.css">
  <!-- Material Kit CSS -->
  <link href="assets/css/material-dashboard.css?v=2.1.0" rel="stylesheet" />
  <link href="assets/css/black-dashboard.css" rel="stylesheet" />
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.3/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>
  <script src="assets/js/search.js"></script>

</head>

<body class="dark-edition">
  <div class="wrapper ">
    <div class="sidebar" data-color="purple" data-background-color="black" data-image="./assets/img/sjsu.jpg">
      <!--
      Tip 1: You can change the color of the sidebar using: data-color="purple | azure | green | orange | danger"

      Tip 2: you can also add an image using data-image tag
  -->
      <div class="logo">
        <a class="simple-text logo-normal">
          CMPE 138 GROUP 8
        </a>
      </div>
      <div class="sidebar-wrapper ps-container ps-theme-default" data-ps-id="3a8db1f4-24d8-4dbf-85c9-4f5215c1b29a">
        <ul class="nav">
          <li class="nav-item active">
            <a class="nav-link" href="members.php">
              <i class="material-icons">dashboard</i>
              <p>Member Status</p>
            </a>
          </li>
          <li class="nav-item active">
            <a class="nav-link" href="machines.php">
              <i class="material-icons">dashboard</i>
              <p>Mach Status</p>
            </a>
          </li>
          <li class="nav-item active">
            <a class="nav-link" href="classes.php">
              <i class="material-icons">dashboard</i>
              <p>Classes</p>
            </a>
          </li>
          <!-- <li class="nav-item">
            <a class="nav-link" href="addmember.php">
              <i class="material-icons">person</i>
              <p>Add Member</p>
            </a>
          </li>
          <li class="nav-item ">
            <a class="nav-link" href="addemp.php">
              <i class="material-icons">person</i>
              <p>Add Employee</p>
            </a>
          </li>
          <li class="nav-item ">
            <a class="nav-link" href="addproduct.php">
              <i class="material-icons">add</i>
              <p>Add Machines</p>
            </a>
          </li> -->
          <li class="nav-item ">
            <a class="nav-link" href="managemem.php">
              <i class="material-icons">person</i>
              <p>Manage Member</p>
            </a>
          </li>
          <li class="nav-item ">
            <a class="nav-link" href="manageemp.php">
              <i class="material-icons">person</i>
              <p>Manage Employee</p>
            </a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="machinelist.php">
              <i class="material-icons">list</i>
              <p>Manage Machines</p>
            </a>
          </li>
          <li class="nav-item ">
            <a class="nav-link" href="logout.php">
              <i class="material-icons">logout</i>
              <p>Logout</p>
            </a>
          </li>
        </ul>
      </div>
    </div>
