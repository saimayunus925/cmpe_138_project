<!--SJSU CMPE 138 Fall 2020 TEAM8-->
<?php
session_start();
// Connection info:
$DATABASE_HOST = 'localhost';
$DATABASE_USER = 'root';
$DATABASE_PASS = '';
$DATABASE_NAME = 'gym_manage';
//Connecting/check
$con = mysqli_connect($DATABASE_HOST, $DATABASE_USER, $DATABASE_PASS, $DATABASE_NAME);
if ( mysqli_connect_errno() ) {
	exit('Failed to connect to MySQL: ' . mysqli_connect_error());
}

//check that both username and password have been inputted
if ( !isset($_POST['username'], $_POST['password']) ) {
	exit('Please fill both the username and password fields!');
}

//Prepare SQL to prevent SQL injection
if ($stmt = $con->prepare('SELECT e_id, emp_password FROM employee WHERE emp_username = ?')) {
	//Bind parameters
	$stmt->bind_param('s', $_POST['username']);
	$stmt->execute();
	//Store input to check if the account exists in the db
	$stmt->store_result();
if ($stmt->num_rows > 0) {
	$stmt->bind_result($e_id, $emp_password);
	$stmt->fetch();
	//Account exists, now check the password
	if (password_verify($_POST['password'], $emp_password)) {
		//Password verified, create sessions for logged in user
		session_regenerate_id();
		$_SESSION['loggedin'] = TRUE;
		$_SESSION['name'] = $_POST['username'];
		$_SESSION['id'] = $e_id;
		header("Location: admin/members.php");
	} else {
		echo "<script>
			alert('Incorrect username or password');
			window.location.href='emp-login.php';
			</script>";
	}
} else {
	echo "<script>
			alert('Incorrect username or password');
			window.location.href='emp-login.php';
			</script>";
}

	$stmt->close();
}
?>

