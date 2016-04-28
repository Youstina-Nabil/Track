<?php/* session_start();*/?>

<!DOCTYPE HTML>
<html>
<title> Manage Inventory </title>
<body>
<h1> You can remove buses from here :) </h1>
<?php
$servername = "localhost";
$username = "root";
$password = "";
$dbname = "track";

// Create connection
$conn = new mysqli($servername, $username, $password,$dbname);
// Check connection
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
} 
//echo "Connected successfully"."<br>";

?>
<?php
         $busmodelErr = $licenseErr = $IDErr = "";
         $busmodel= $license = $ID =  "";
         
         if ($_SERVER["REQUEST_METHOD"] == "POST") {
            if (empty($_POST["ID"])) {
               $IDErr = "ID is required";
            }else {
               $ID = test_input($_POST["ID"]);
            }
            
            if (empty($_POST["license"])) {
               $licenseErr = "License is required";
            }else {
               $license = test_input($_POST["license"]);
            }
            
            if (empty($_POST["busmodel"])) {
                $busmodelErr = "Bus Model is required";
            }else {
               $busmodel = test_input($_POST["busmodel"]);
            }
          
         }
         
         function test_input($data) {
            $data = trim($data);
            $data = stripslashes($data);
            $data = htmlspecialchars($data);
            return $data;
         }
      ?>

     <h3> To Remove </h3>
      <form method="post" action="<?php echo htmlspecialchars($_SERVER["PHP_SELF"]);?>">  
    ID: <input type="text" name=ID >
    <br><br>
  License: <input type="text" name=license>
  <br><br>
  <input type="submit" name="Remove" value="Remove">  
</form>
     
     
<?php
$sqlremove = "DELETE FROM bus WHERE ID=$ID AND license='$license' ";
if($conn->query($sqlremove ) === TRUE) {
    echo  "Record deleted successfully";
} else {
    echo "Error deleting record: " . $conn->error;
}
 $conn->close();
?>

</body>
</html>