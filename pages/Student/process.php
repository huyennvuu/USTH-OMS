<?php
	$link = new mysqli("localhost", "root", "", "usthoms");
	if ($link === false){
		die("ERROR: Could not connect. " . mysqli_connect_error());
	}

	// Attempt insert query execution
	$sql = "INSERT INTO user (user_name, password, email, type) VALUES
	('bathuongcon', 'bathuongcon', 'bathuongcon@mail.com', 'lecturer'),
	('vicongiongme', 'vicongiongme', 'vicongiongme@mail.com', 'lecturer'),
	('cungthuongiunhao', 'cungthuongiunhao', 'cungthuongiunhao@mail.com', 'lecturer')";
	if(mysqli_query($link, $sql)){
	echo "Records added successfully.";
	} else{
	echo "ERROR: Could not able to execute $sql. " . mysqli_error($link);
	}

	// Close connection
	mysqli_close($link);
?>