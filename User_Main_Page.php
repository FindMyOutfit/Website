<?php
include_once 'user-session.php';
      if(!isset($_SESSION['username']))
        header("Location: login.php");
?>

<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Find My Outfit</title>
    <link href = "dashstyle.css" rel = "stylesheet" type = "text/css">
</head>
<body>
    <header>
        <div class="bar">
            <div class="name">
                <h1>Find My Outfit</h1>
            </div>
            <ul>
                <li><input type="submit" name="logoutbutton" class="button" value="Logout"></li>
            </ul>
        </div>
         <?php
         if(isset($_POST['logoutbutton']))
          {
            session_unset();
            session_destroy();
            header('location: login.php');
          }
    ?>
    </header>
    <div class="buttons">
        <ul>
             <li><a href="#">Designer Information</a></li>
             <li><a href="#">Rent Clothes</a></li>
             <li><a href="#">Order History</a></li>
             <li><a href="#">Payment Details</a></li>
        </ul>
    </div>
</body>
</html>
