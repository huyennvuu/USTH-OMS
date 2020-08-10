<?php

header('Access-Control-Allow-Origin: *');
header('Access-Control-Allow-Methods: *');
header('Access-Control-Allow-Headers: Content-Type');
$conn = new mysqli('localhost', 'root', 'huyen123', 'usth');
if ($conn->connect_error) {
	die('Connection Failed!!' . $conn->connect_error);
}

$result = array('error' => false);
$action = '';

if (isset($_GET['action'])) {
	$action = $_GET['action'];
}

//getJuryId
if ($action == 'getJuryId') {
	$currentIdList = $_GET['currentIdList'];
	$sql = $conn->query("SELECT `jury`.id, `jury`.wave_id FROM `wave` 
	INNER JOIN `jury` ON `wave`.id = `jury`.`wave_id`
	INNER JOIN `jury employee detail` ON `jury employee detail`.`jury_id` = `jury`.`id` 
	INNER JOIN `employee` ON `jury employee detail`.`employee_id` = `employee`.`id`
	INNER JOIN `user` ON `employee`.`user_id` = `user`.`id`
	WHERE `user`.`id` = '$currentIdList' AND `wave`.`status`='1'") or die($conn->error);
	$juryId = array();
	while ($row = $sql->fetch_assoc()) {
		if ($row != NULL) {
			array_push($juryId, $row);
		} else {
			array_push($juryId, "NULL pointer");
		}
	}
	$result['juryId'] = $juryId;
}

//getWaveName
if ($action == 'getWaveName') {
	$currentWaveId = $_GET['currentWaveId'];
	$sql = $conn->query("SELECT wave_name FROM `wave` WHERE id = '$currentWaveId'") or die($conn->error);
	$wave = array();
	while ($row = $sql->fetch_assoc()) {
		if ($row != NULL) {
			array_push($wave, $row);
		} else {
			array_push($wave, "NULL pointer");
		}
	}
	$result['wave'] = $wave;
}

//getFormStatus
if ($action == 'getFormStatus') {
	$student_id = $_GET['student_id'];
	$sql = $conn->query("SELECT status FROM `application information` WHERE student_id = '$student_id' ") or die($conn->error);
	$status = array();
	while ($row = $sql->fetch_assoc()) {
		if ($row != NULL) {
			array_push($status, $row);
		} else {
			array_push($status, "NULL pointer");
		}
	}
	$result['status'] = $status;
}

//isEnglishTeacher
if ($action == 'isEnglishTeacher') {
	$currentIdList = $_GET['currentIdList'];
	$sql = $conn->query("SELECT `is_english_teacher`, `full_name` FROM `employee` 
	WHERE `user_id` = '$currentIdList'") or die($conn->error);
	$isEnglishTeacher = array();
	while ($row = $sql->fetch_assoc()) {
		if ($row != NULL) {
			array_push($isEnglishTeacher, $row);
		} else {
			array_push($isEnglishTeacher, "NULL pointer");
		}
	}
	$result['isEnglishTeacher'] = $isEnglishTeacher;
}

//getEmployeeId
if ($action == 'getEmployeeId') {
	$currentIdList = $_GET['currentIdList'];
	$sql = $conn->query("SELECT `id` FROM `employee` 
	WHERE `user_id` = '$currentIdList'") or die($conn->error);
	$currentEmployeeId = array();
	while ($row = $sql->fetch_assoc()) {
		if ($row != NULL) {
			array_push($currentEmployeeId, $row);
		} else {
			array_push($currentEmployeeId, "NULL pointer");
		}
	}
	$result['currentEmployeeId'] = $currentEmployeeId;
}

// List Student
if ($action == 'ListStudent') {
	$currentJuryId = $_GET['currentJuryId'];
	$sql = $conn->query("SELECT student.id, student.full_name,`academic history`.school_name, `training program`.name AS training_program, student.dob, student.gender 
												FROM `academic history` 
												INNER JOIN `student` ON `academic history`.`student_id` = student.id 
												INNER JOIN `application information` ON student.id = `application information`.`student_id` 
												INNER JOIN `training program` ON `application information`.first_training_program_id = `training program`.id 
												WHERE `student`.jury_id = '$currentJuryId'
												ORDER BY student.id ") or die($conn->error);
	$studentList = array();
	while ($row = $sql->fetch_assoc()) {
		if ($row != NULL) {
			array_push($studentList, $row);
		} else {
			array_push($studentList, "NULL pointer");
		}
	}
	$result['studentList'] = $studentList;
}

// List Wave
if ($action == 'listWave') {
	$currentYear = $_GET['currentYear'];
	$sql = $conn->query("SELECT * FROM `wave`WHERE academic_year = '2020'") or die($conn->error);
	$waveData = array();
	while ($row = $sql->fetch_assoc()) {
		if ($row != NULL) {
			array_push($waveData, $row);
		} else {
			array_push($waveData, "NULL pointer");
		}
	}
	$result['waveData'] = $waveData;
}

//getStudentData
if ($action == 'getStudentData') {
	$currentId = $_GET['currentId'];
	$sql = $conn->query("SELECT * FROM `student` WHERE id = '$currentId'") or die($conn->error);
	$studentData = array();
	while ($row = $sql->fetch_assoc()) {
		if ($row != NULL) {
			array_push($studentData, $row);
		} else {
			array_push($studentData, "NULL pointer");
		}
	}
	$result['studentData'] = $studentData;
}


//getAddressData
if ($action == 'getAddressData') {
	$student_id = $_GET['student_id'];
	$sql = $conn->query("SELECT * FROM `address` WHERE `student_id`= '$student_id'") or die($conn->error);
	$addressData = array();
	while ($row = $sql->fetch_assoc()) {
		if ($row != NULL) {
			array_push($addressData, $row);
		} else {
			array_push($addressData, "NULL pointer");
		}
	}
	$result['addressData'] = $addressData;
}

//getAcademicHistoryData
if ($action == 'getAcademicHistoryData') {
	$student_id = $_GET['student_id'];
	$sql = $conn->query("SELECT * FROM `academic history` WHERE `student_id` = '$student_id' ") or die($conn->error);
	$academicHistoryData = array();
	while ($row = $sql->fetch_assoc()) {
		if ($row != NULL) {
			array_push($academicHistoryData, $row);
		} else {
			array_push($academicHistoryData, "NULL pointer");
		}
	}
	$result['academicHistoryData'] = $academicHistoryData;
}

//getApplicationData
if ($action == 'getApplicationData') {
	$student_id = $_GET['student_id'];
	$sql = $conn->query("SELECT * FROM `application information` WHERE `student_id` = '$student_id' ") or die($conn->error);
	$applicationData = array();
	while ($row = $sql->fetch_assoc()) {
		if ($row != NULL) {
			array_push($applicationData, $row);
		} else {
			array_push($applicationData, "NULL pointer");
		}
	}
	$result['applicationData'] = $applicationData;
}

//get Training program
if ($action == 'getTraningProgram') {
	$firstId = $_GET['firstId'];
	$secondId = $_GET['secondId'];
	$thirdId = $_GET['thirdId'];
	$fourthId = $_GET['fourthId'];

	$sql = $conn->query("SELECT * FROM `training program` WHERE `training program`.id = $firstId OR `training program`.id = $secondId OR `training program`.id = $thirdId OR `training program`.id = $fourthId ");
	$trainingProgram = array();
	while ($row = $sql->fetch_assoc()) {
		if ($row != NULL) {
			array_push($trainingProgram, $row);
		} else {
			array_push($trainingProgram, "NULL pointer");
		}
	}
	$result['trainingProgram'] = $trainingProgram;
}

// Add Student
if ($action == 'AddStudent') {
	$form = json_decode(file_get_contents('php://input'), TRUE);
	$listStudent = "";
	$listStudentValue = "";

	$arrStudentValue = [];
	foreach ($form as $key => $value) {
		array_push($arrStudentValue, "'$value'");
	}

	$listStudent = implode(',', array_keys($form));
	$listStudentValue = implode(',', $arrStudentValue);

	$query = "INSERT INTO `student` ($listStudent) VALUES ($listStudentValue)";
	$sql = $conn->query($query) or die($conn->error);
	if ($sql) {
		$result['message'] = "Student added succesfully!";
	} else {
		$result['error'] = true;
		$result['message'] = "Fail to add Student";
	}
}

// Add AddAddress
if ($action == 'AddAddress') {
	$form = json_decode(file_get_contents('php://input'), TRUE);
	$listAddress = "";
	$listAddressValue = "";

	$AddressValue = [];
	foreach ($form as $key => $value) {
		array_push($AddressValue, "'$value'");
	}
	$listAddress = implode(',', array_keys($form));
	$listAddressValue = implode(',', $AddressValue);

	$query = "INSERT INTO `address` ($listAddress) VALUES ($listAddressValue)";
	$sql = $conn->query($query) or die($conn->error);

	if ($sql) {
		$result['message'] = "Address added succesfully!";
	} else {
		$result['error'] = true;
		$result['message'] = "Fail to add Address";
	}
}

// Add Academic History
if ($action == 'AddAcademicHistory') {
	echo ("This is add Academic History");
	$form = json_decode(file_get_contents('php://input'), TRUE);

	$listAcademic = "";
	$listAcademicValue = "";

	$arrAcademicValue = [];
	foreach ($form as $key => $value) {
		array_push($arrAcademicValue, "'$value'");
	}

	$listAcademic = implode(',', array_keys($form));
	$listAcademicValue = implode(',', $arrAcademicValue);

	$query = "INSERT INTO `academic history` ($listAcademic) VALUES ($listAcademicValue)";
	$sql = $conn->query($query) or die($conn->error);
	if ($sql) {
		$result['message'] = "Academic History added succesfully!";
	} else {
		$result['error'] = true;
		$result['message'] = "Fail to add Academic History";
	}
}

// Add Application Info
if ($action == 'AddApplicationInformation') {
	echo ("This is add Application Information ");
	$form = json_decode(file_get_contents('php://input'), TRUE);

	$listApplication = "";
	$listApplicationValue = "";

	$arrApplicationValue = [];
	foreach ($form as $key => $value) {
		array_push($arrApplicationValue, "'$value'");
	}
	$listApplication = implode(',', array_keys($form));
	$listApplicationValue = implode(',', $arrApplicationValue);

	$query = "INSERT INTO `application information` ($listApplication) VALUES ($listApplicationValue)";

	$sql = $conn->query($query) or die($conn->error);
	if ($sql) {
		$result['message'] = "Application Informaion added succesfully!";
	} else {
		$result['error'] = true;
		$result['message'] = "Fail to add Application Informaion";
	}
}

// Add GEF
if ($action == 'AddGEF') {
	echo ("This is add GEF ");
	$form = json_decode(file_get_contents('php://input'), TRUE);

	$listGEF = "";
	$listGEFValue = "";

	$arrGEFValue = [];
	foreach ($form as $key => $value) {
		array_push($arrGEFValue, "'$value'");
	}
	$listGEF = implode(',', array_keys($form));
	$listGEFValue = implode(',', $arrGEFValue);

	$query = "INSERT INTO `general evaluation` ($listGEF) VALUES ($listGEFValue)";

	$sql = $conn->query($query) or die($conn->error);
	if ($sql) {
		$result['message'] = "GEF added succesfully!";
	} else {
		$result['error'] = true;
		$result['message'] = "Fail to add GEF";
	}
}

// AddEEF
if ($action == 'AddEEF') {
	echo ("This is add AddEEF ");
	$form = json_decode(file_get_contents('php://input'), TRUE);

	$listEEF = "";
	$listEEFValue = "";

	$arrEEFValue = [];
	foreach ($form as $key => $value) {
		array_push($arrEEFValue, "'$value'");
	}
	$listEEF = implode(',', array_keys($form));
	$listEEFValue = implode(',', $arrEEFValue);

	$query = "INSERT INTO `english evaluation` ($listEEF) VALUES ($listEEFValue)";

	$sql = $conn->query($query) or die($conn->error);
	if ($sql) {
		$result['message'] = "EEF added succesfully!";
	} else {
		$result['error'] = true;
		$result['message'] = "Fail to add EEF";
	}
}

//addNewUser
if ($action == 'newUserData') {
	echo ("This is add newUserData");
	$form = json_decode(file_get_contents('php://input'), TRUE);

	$listNewUser = "";
	$listNewUserValue = "";

	$arrNewUserValue = [];
	foreach ($form as $key => $value) {
		array_push($arrNewUserValue, "'$value'");
	}
	$listNewUser = implode(',', array_keys($form));
	$listNewUserValue = implode(',', $arrNewUserValue);

	echo $listNewUserValue;
	$query = "INSERT INTO `user` ($listNewUser) VALUES ($listNewUserValue)";

	$sql = $conn->query($query) or die($conn->error);
	if ($sql) {
		$result['message'] = "new User added succesfully!";
	} else {
		$result['error'] = true;
		$result['message'] = "Fail to add new User";
	}
}

//uploadAdwardFile
if ($action == 'uploadAdwardFile') {
	//get student_id
	$student_id = $_POST['student_id'];
	$file_path = "$student_id/";
	//make folder
	mkdir($student_id);
	// File name
	$filename = $_FILES['file']['name'];
	// Valid file extensions
	$valid_extensions = array("jpg", "jpeg", "png", "pdf");
	// File extension
	$extension = pathinfo($filename, PATHINFO_EXTENSION);
	// Adward location
	$file_location = $file_path . $filename;
	// Add file to DB
	$query = "UPDATE `academic history` SET adward = '$file_location' WHERE student_id = $student_id";

	$sql = $conn->query($query) or die($conn->error);
	if ($sql) {
		$result['message'] = "Adward added succesfully!";
	} else {
		$result['error'] = true;
		$result['message'] = "Fail to add Adward";
	}
	// Check extension
	if (in_array(strtolower($extension), $valid_extensions)) {
		// Upload file
		if (move_uploaded_file($_FILES['file']['tmp_name'], $file_path . $filename)) {
			echo 1;
		} else {
			echo 0;
		}
	} else {
		echo 0;
	}
}

//uploadMotivationFile
if ($action == 'uploadMotivationFile') {
	//get student_id
	$student_id = $_POST['student_id'];
	$file_path = "$student_id/";
	//make folder
	mkdir($student_id);
	// File name
	$filename = $_FILES['file']['name'];
	// Valid file extensions
	$valid_extensions = array("jpg", "jpeg", "png", "pdf");
	// File extension
	$extension = pathinfo($filename, PATHINFO_EXTENSION);
	// Adward location
	$file_location = $file_path . $filename;
	// Add file to DB
	$query = "UPDATE `application information` SET 	motivation_letter = '$file_location' WHERE student_id = $student_id";

	$sql = $conn->query($query) or die($conn->error);
	if ($sql) {
		$result['message'] = "Motivation added succesfully!";
	} else {
		$result['error'] = true;
		$result['message'] = "Fail to add Motivation";
	}
	// Check extension
	if (in_array(strtolower($extension), $valid_extensions)) {
		// Upload file
		if (move_uploaded_file($_FILES['file']['tmp_name'], $file_path . $filename)) {
			echo 1;
		} else {
			echo 0;
		}
	} else {
		echo 0;
	}
}

//Update Student
if ($action == 'updateStudent') {
	$id = $_POST['student_id'];
	$full_name = $_POST['full_name'];
	$id_number = $_POST['id_number'];
	$id_date = $_POST['id_date'];
	$id_place = $_POST['id_place'];
	$gender = $_POST['gender'];
	$DOB = $_POST['DOB'];
	$POB = $_POST['POB'];
	$nationality = $_POST['nationality'];
	$ethnicity = $_POST['ethnicity'];
	$mail_address = $_POST['mail_address'];
	$phone = $_POST['phone'];
	$home_phone = $_POST['home_phone'];
	$parent_phone = $_POST['parent_phone'];
	$marital_status = $_POST['marital_status'];
	$application_id = $_POST['application_id'];
	$jury_id = $_POST['jury_id'];
	$wave_id = $_POST['wave_id'];

	$sql = $conn->query("UPDATE student 
		SET 
		full_name = '$full_name',
		id_number = '$id_number', 
		id_date = '$id_date', 
		id_place = '$id_place', 
		gender = '$gender', 
		DOB = '$DOB', 
		POB = '$POB',
		nationality = '$nationality',
		ethnicity = '$ethnicity', 
		mail_address = '$mail_address', 
		phone = '$phone', 
		home_phone = '$home_phone',
		parent_phone = $parent_phone',
		marital_status = '$marital_status', 
		application_id = '$application_id', 
		academic_id = '$academic_id', 
		address_id = '$address_id', 
		user_id = '$user_id', 
		jury_id = '$jury_id', 
		wave_id = '$wave_id'
  	WHERE id = '$id' ") or die($conn->error);

	if ($sql) {
		$result['message'] = "Student udated succesfully!";
	} else {
		$result['error'] = true;
		$result['message'] = "Fail to update Student";
	}
}

//Update Address
if ($action == 'updateAddress') {
	$house_number = $_POST['house_number'];
	$street = $_POST['street'];
	$ward = $_POST['ward'];
	$district = $_POST['district'];
	$province = $_POST['province'];
	$student_id = $_POST['student_id'];

	$sql = $conn->query("UPDATE `address` 
			SET 
			house_number = '$house_number',
			street = '$street', 
			ward = '$ward', 
			district = '$district', 
			province = '$province', 
			student_id = '$student_id'
			WHERE student_id = '$student_id' ") or die($conn->error);

	if ($sql) {
		$result['message'] = "Address updated succesfully!";
	} else {
		$result['error'] = true;
		$result['message'] = "Fail to update Address";
	}
}

//Update academicHistoryData
if ($action == 'UpdateAcademicHistoryData') {
	$student_id = $_POST['student_id'];
	$school_name = $_POST['school_name'];
	$class = $_POST['class'];
	$school_address = $_POST['school_address'];

	$grade_mark_10 = $_POST['grade_mark_10'];
	$gpa_mark_10 = $_POST['gpa_mark_10'];
	$maths_mark_10 = $_POST['maths_mark_10'];
	$physics_mark_10 = $_POST['physics_mark_10'];
	$chemistry_mark_10 = $_POST['chemistry_mark_10'];
	$biology_mark_10 = $_POST['biology_mark_10'];
	$it_mark_10 = $_POST['it_mark_10'];
	$english_mark_10 = $_POST['english_mark_10'];

	$grade_mark_11 = $_POST['grade_mark_11'];
	$gpa_mark_11 = $_POST['gpa_mark_11'];
	$maths_mark_11 = $_POST['maths_mark_11'];
	$physics_mark_11 = $_POST['physics_mark_11'];
	$chemistry_mark_11 = $_POST['chemistry_mark_11'];
	$biology_mark_11 = $_POST['biology_mark_11'];
	$it_mark_11 = $_POST['it_mark_11'];
	$english_mark_11 = $_POST['english_mark_11'];

	$grade_mark_12 = $_POST['grade_mark_12'];
	$gpa_mark_12 = $_POST['gpa_mark_12'];
	$maths_mark_12 = $_POST['maths_mark_12'];
	$physics_mark_12 = $_POST['physics_mark_12'];
	$chemistry_mark_12 = $_POST['chemistry_mark_12'];
	$biology_mark_12 = $_POST['biology_mark_12'];
	$it_mark_12 = $_POST['it_mark_12'];
	$english_mark_12 = $_POST['english_mark_12'];

	$english_certi = $_POST['english_certi'];
	$english_score = $_POST['english_score'];
	$french_certi = $_POST['french_certi'];
	$french_score = $_POST['french_score'];
	$viet_certi = $_POST['viet_certi'];
	$viet_score = $_POST['viet_score'];
	$adward = $_POST['adward'];


	$sql = $conn->query("UPDATE `address` 
			SET 
			student_id = `$student_id`,
      school_name = `$school_name`,
      class = `$school_name`,
      school_address = `$school_address`,
      grade_mark_10 = `$grade_mark_10`,
      gpa_mark_10 = `$gpa_mark_10`,
      maths_mark_10 = `$maths_mark_10`,
      physics_mark_10 = `$physics_mark_10`,
      chemistry_mark_10 = `$chemistry_mark_10`,
      biology_mark_10 = `$biology_mark_10`,
      it_mark_10 = `$it_mark_10`,
      english_mark_10 = `$english_mark_10`,

      grade_mark_11 = `$grade_mark_11`,
      gpa_mark_11 = `$gpa_mark_11`,
      maths_mark_11 = `$maths_mark_11`,
      physics_mark_11 = `$physics_mark_11`,
      chemistry_mark_11 = `$chemistry_mark_11`,
      biology_mark_11 = `$biology_mark_11`,
      it_mark_11 = `$it_mark_11`,
      english_mark_11 = `$english_mark_11`,

      grade_mark_12 = `$grade_mark_12`,
      gpa_mark_12 = `$gpa_mark_12`,
      maths_mark_12 = `$maths_mark_12`,
      physics_mark_12 = `$physics_mark_12`,
      chemistry_mark_12 = `$chemistry_mark_12`,
      biology_mark_12 = `$biology_mark_12`,
      it_mark_12 = `$it_mark_12`,
      english_mark_12 = `$english_mark_12`,

      english_certi = `$english_certi`,
      english_score = `$english_score`,
      french_certi = `$french_certi`,
      french_score = `$french_score`,
      viet_certi = `$viet_certi`,
      viet_score = `$viet_score`,
      adward = `$adward`,
      
			WHERE student_id = '$student_id' ") or die($conn->error);

	if ($sql) {
		$result['message'] = "Academic Data udated succesfully!";
	} else {
		$result['error'] = true;
		$result['message'] = "Fail to update Academic Data";
	}
}

//Update Application Data
if ($action == 'updateApplicationData') {
	$student_id = $_POST['student_id'];
	$usth_applied = $_POST['usth_applied'];
	$usth_applied_year = $_POST['usth_applied_year'];
	$usth_applied_wave = $_POST['usth_applied_wave'];

	$diff_university_applied = $_POST['diff_university_applied'];
	$diff_university_applied_year = $_POST['diff_university_applied_year'];
	$diff_university_applied_mark = $_POST['diff_university_applied_mark'];
	$diff_university_applied_group = $_POST['diff_university_applied_group'];
	$diff_university_applied_name = $_POST['diff_university_applied_name'];

	$national_exam_student_number = $_POST['national_exam_student_number'];
	$national_exam_math_result = $_POST['national_exam_math_result'];
	$national_exam_physics_result = $_POST['national_exam_physics_result'];
	$national_exam_chemistry_result = $_POST['national_exam_chemistry_result'];
	$national_exam_biology_result = $_POST['national_exam_biology_result'];
	$national_exam_english_result = $_POST['national_exam_english_result'];
	$first_training_program_id = $_POST['first_training_program_id'];
	$second_training_program_id = $_POST['second_training_program_id'];
	$third_training_program_id = $_POST['third_training_program_id'];
	$fourth_training_program_id = $_POST['fourth_training_program_id'];
	$motivation_letter = $_POST['motivation_letter'];

	$sql = $conn->query("UPDATE `address` 
			SET 
			student_id = '$student_id',
			usth_applied = '$usth_applied',
			usth_applied_year = '$usth_applied_year',
			usth_applied_wave = '$usth_applied_wave',

			diff_university_applied = '$diff_university_applied',
			diff_university_applied_year = '$house_ndiff_university_applied_yearumber',
			diff_university_applied_mark = '$diff_university_applied_mark',
			diff_university_applied_group = '$diff_university_applied_group',
			diff_university_applied_name = '$diff_university_applied_name',
			
			national_exam_student_number = '$national_exam_student_number',
			national_exam_math_result = '$national_exam_math_result',
			national_exam_physics_result = '$national_exam_physics_result',
			national_exam_chemistry_result = '$national_exam_chemistry_result',
			national_exam_biology_result = '$national_exam_biology_result',
			national_exam_english_result = '$national_exam_english_result',
			
			first_training_program_id = '$first_training_program_id',
			second_training_program_id = '$second_training_program_id',
			third_training_program_id = '$third_training_program_id',
			fourth_training_program_id = '$fourth_training_program_id',
			motivation_letter = '$motivation_letter',
			
			WHERE student_id = '$student_id' ") or die($conn->error);

	if ($sql) {
		$result['message'] = "Application Data udated succesfully!";
	} else {
		$result['error'] = true;
		$result['message'] = "Fail to update Application Data";
	}
}


// Delete Student
if ($action == 'deleteStudent') {
	$id = $_POST['id'];

	$sql = $conn->query(" DELETE FROM Student WHERE id = '$id'") or die($conn->error);


	if ($sql) {
		$result['message'] = "Student deleted succesfully!";
	} else {
		$result['error'] = true;
		$result['message'] = "Fail to delete Student";
	}
}

//login
if ($action == 'login') {
	$user_name = $_GET['user_name'];
	$password = $_GET['password'];
	$sql = $conn->query("SELECT id, type FROM `user`WHERE user_name = '$user_name' and password = '$password' ") or die($conn->error);
	$user = array();
	while ($row = $sql->fetch_assoc()) {
		if ($row != NULL) {
			array_push($user, $row);
		} else {
			array_push($user, "NULL pointer");
		}
	}
	$result['user'] = $user;
}

//getWave
if ($action == 'getWave') {
	$sql = $conn->query("SELECT id FROM `wave` WHERE `status` = '1' ") or die($conn->error);
	$waveId = array();
	while ($row = $sql->fetch_assoc()) {
		if ($row != NULL) {
			array_push($waveId, $row);
		} else {
			array_push($waveId, "NULL pointer");
		}
	}
	$result['waveId'] = $waveId;
}

//getStudentId
if ($action == 'getStudentId') {
	$currentIdAdmission = $_GET['currentIdAdmission'];
	$sql = $conn->query("SELECT id, full_name FROM `student` WHERE user_id = '$currentIdAdmission' ") or die($conn->error);
	$studentId = array();
	while ($row = $sql->fetch_assoc()) {
		if ($row != NULL) {
			array_push($studentId, $row);
		} else {
			array_push($studentId, "NULL pointer");
		}
	}
	$result['studentId'] = $studentId;
	if ($studentId == []) {
		$result['studentId'] = $studentId;
	}
}

//getQuestion 
if ($action == 'getQuestion') {
	$questionId = $_GET['questionId'];
	$sql = $conn->query("SELECT * FROM `question bank` WHERE id = '$questionId'") or die($conn->error);
	$thisQuestion = array();
	while ($row = $sql->fetch_assoc()) {
		if ($row != NULL) {
			array_push($thisQuestion, $row);
		} else {
			array_push($thisQuestion, "NULL pointer");
		}
	}
	$result['thisQuestion'] = $thisQuestion;
}

//getAdward 
if ($action == 'getAdward') {
	$student_id = $_GET['student_id'];
	$sql = $conn->query("SELECT `adward` 
											FROM `academic history` 
											WHERE `student_id` = '$student_id'") or die($conn->error);
	$adward = array();
	while ($row = $sql->fetch_assoc()) {
		if ($row != NULL) {
			array_push($adward, $row);
		} else {
			array_push($adward, "NULL pointer");
		}
	}
	$result['adward'] = $adward;
}

//getMotivation 
if ($action == 'getMotivation') {
	$student_id = $_GET['student_id'];
	$sql = $conn->query("SELECT `motivation_letter` 
											FROM `application information` 
											WHERE `student_id` = '$student_id'") or die($conn->error);
	$motivation_letter = array();
	while ($row = $sql->fetch_assoc()) {
		if ($row != NULL) {
			array_push($motivation_letter, $row);
		} else {
			array_push($motivation_letter, "NULL pointer");
		}
	}
	$result['motivation_letter'] = $motivation_letter;
}


$conn->close();
echo json_encode($result);
