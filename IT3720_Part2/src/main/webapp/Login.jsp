<?php
$userName = $_POST["use"];
$password = $_POST["pass"];

$connect = mysqli_connect("localhost","root","","jobseeker");

$data = mysqli_query($connect, "select * from employerreg WHERE Username = '{$userName}' and Password = '{$password}'");

$output = mysqli_fetch_row($data);
if ($output) {
    echo "<script type='text/javascript'>alert('You are now logged in.');</script>";
	echo "<script type='text/javascript'>location.href='index.html'</script>";
} else {
    echo "<script type='text/javascript'>alert('Invalid username or password. Please try again.');</script>";
	echo "<script type='text/javascript'>location.href='login.html'</script>";
}

mysqli_close($connect);
?>