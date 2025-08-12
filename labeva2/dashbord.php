<?php
session_start();
if (!isset($_SESSION['username'])) {
    header("Location: login.html");
    exit();
}
echo "<h2>Welcome, " . $_SESSION['username'] . "!</h2>";
echo "<a href='update.php'>Update Profile</a> | <a href='logout.php'>Logout</a>";
?>
