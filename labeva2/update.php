<?php
session_start();
if (!isset($_SESSION['username'])) {
    header("Location: login.html");
    exit();
}

$conn = new mysqli("localhost", "root", "", "user_db");

if ($_SERVER['REQUEST_METHOD'] == 'POST') {
    $new_email = $_POST['email'];
    $new_password = password_hash($_POST['password'], PASSWORD_DEFAULT);

    $sql = "UPDATE users SET email=?, password=? WHERE username=?";
    $stmt = $conn->prepare($sql);
    $stmt->bind_param("sss", $new_email, $new_password, $_SESSION['username']);
    $stmt->execute();

    echo "Profile updated successfully!";
    $stmt->close();
}
?>

<h2>Update Profile</h2>
<form method="post">
    New Email: <input type="email" name="email" required><br><br>
    New Password: <input type="password" name="password" required><br><br>
    <button type="submit">Update</button>
</form>
