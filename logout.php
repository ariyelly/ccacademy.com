<?php
session_start();
include("connection.php");
$user_id = @$_SESSION["id"];
if (!empty($user_id)) {
    $delete = "delete from chat where user_id = '".$user_id."'";
    $result = mysqli_query($con, $delete);
}

session_destroy();

echo "<script>window.location.href = 'index.php';</script>";
?>