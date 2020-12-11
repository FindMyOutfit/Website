<?php
include_once 'user-session.php';
      if(!isset($_SESSION['username']))
        header("Location: login.php");
?>

<html>
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta name="author" content="Nimay Patel">
  <title> Dashboard </title>
  <link rel="stylesheet" type="text/css" href="form.css">
  <link rel="stylesheet" type="text/css" href="layout.css">
  <link rel="stylesheet" type="text/css" href="sidebar.css">
  <link rel="stylesheet" type="text/css" href="common.css">

  <!-- fontawesome -->
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.13.0/css/all.min.css">
</head>

<body>
  <div class="layout"> <a class="header" href="#0"> <i class="fa fa-bars"></i>
  <div class="header-user"><i class="fas fa-user-circle icon"></i>Hello Admin</div>
    </a>

    <div class="sidebar">
      <ul>
        <li> <a class="sidebar-list-item active" href="#0"> <i class="fas fa-home icon"></i><em>Dashboard</em></a></li>
        <li> <a class="sidebar-list-item" href="#0"> <i class="fas fa-user icon"></i><em>Remove Profiles</em></a></li>
        <li> <a class="sidebar-list-item" href="#0"> <i class="fas fa-tasks icon"></i><em>Eligibility Applications</em></a></li>
        <li> <a class="sidebar-list-item" href="Backup.html"> <i class="fas fa-calendar icon"></i><em>Backup Credentials</em></a>
        </li>
        <li> <a class="sidebar-list-item" href="#0"> <i class="fas fa-toolbox icon"></i><em>Compensation</em></a>
        </li>
        <li> <a class="sidebar-list-item" href="#0"> <i class="fas fa-comments icon"></i><em>User Complaints</em></a></li>
        <li> <a class="sidebar-list-item" href="#0"> <i class="fas fa-map icon"></i><em>View Locations</em></a>
        </li>
      </ul>
    </div>

    <footer class="footer">
      <div class="footer_sign"><input type="submit" name="outbutton" class="button" href="login.html" value="Logout">
      </div>
    </footer>
    <?php
      if(isset($_POST['outbutton']))
      {
        session_unset();
        session_destroy();
        header('location: login.php');
      }
?>

 </div>
</body>
</html>
