 <?php

$username = 'root';
$password = '';
$dsn = 'mysql:host=localhost; dbname=findmyoutfit';

try {

  $db = new PDO($dsn, $username, $password);
  $db->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);

} catch (PDOException $e) {

  echo "Fail to connect to the database ".$e->getMessage();

}

?>

// All file from this point onwards is for actually fetching values from database and do not belong here.
// Delete them once you have understood the code. Most immediate.!! Following lines DONOT belong to this file.

include_once 'user-session.php';
include_once 'database-connect.php';

      if(!isset($_SESSION['username']))
        header("location: login.php");

      if(isset($_POST['viewbutton']))
         {
           $username = $_POST['username'];
           $SQLQuery = "SELECT * FROM designer WHERE username = :username";
           $statement = $db->prepare($SQLQuery);
           $statement->execute(array(':username' => $user));

           while($row = $statement->fetch())
           {
             $college_name = $row['college_name'];
             $college_ID = $row['college_ID'];?>
             //$username, $college_ID and $college_name will contain the value fteched from database,
             //Loop will run until there are data entries in the database. Make sure you display these values within the loop.
      }
    }
