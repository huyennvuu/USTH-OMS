DROP SCHEMA IF EXISTS `usthoms`;
CREATE SCHEMA `usthoms` 
    CHARACTER SET utf8
    COLLATE utf8_general_ci
;

/*User*/
CREATE TABLE `usthoms`.`User` (
	`id` INT(10) NOT NULL AUTO_INCREMENT,
	`user_name` VARCHAR(45) NOT NULL,
	`password` VARCHAR(45) NOT NULL,
	`email` VARCHAR(45) NOT NULL,
	`type` VARCHAR(10) NOT NULL,

	PRIMARY KEY (id)
	);

/*Employee*/
CREATE TABLE `usthoms`.`Employee` (
	`id` INT(10) NOT NULL AUTO_INCREMENT,
	`full_name` VARCHAR(45),
	`phone_number` VARCHAR(45),

	`user_id` INT(10) NOT NULL,
	FOREIGN KEY (`user_id`) REFERENCES `usthoms`.`User` (`id`)
    ON UPDATE CASCADE
    ON DELETE NO ACTION,

	PRIMARY KEY (id)
	);

/*Address*/
CREATE TABLE `usthoms`.`Address` (
	`id` INT(10) NOT NULL AUTO_INCREMENT,
	`house_number` INT(10) NOT NULL,
	`street` VARCHAR(45) NOT NULL,
	`ward` VARCHAR(45) NOT NULL,
	`districy` VARCHAR(10) NOT NULL,
	`province` VARCHAR(10) NOT NULL,

	PRIMARY KEY (id)
	);

/*Training Program*/
CREATE TABLE `usthoms`.`Training Program` (
	`id` INT(10) NOT NULL AUTO_INCREMENT,
	`name` VARCHAR(50) NOT NULL,
	
	PRIMARY KEY (id)
	);

/*Appliction Infor*/
CREATE TABLE `usthoms`.`Application Information` (
	`id` INT(10) NOT NULL AUTO_INCREMENT,
	`usth_applied` INT(1) NOT NULL,
	`USTH_applied_year` VARCHAR(10),
	`USTH_applied_wave` VARCHAR(10),
	`diff_university_applied` INT(1),
	`diff_university_applied_year` INT(10),
	`diff_university_applied_mark` VARCHAR(45),
	`diff_university_applied_group` VARCHAR(45),
	`diff_university_applied_name` VARCHAR(45),
	`national_exam_student_number`INT(10) NOT NULL,
	`national_exam_math_result`INT(10) NOT NULL,
	`national_exam_physics_result`INT(10) NOT NULL,
	`national_exam_chemistry_result`INT(10) NOT NULL,
	`national_exam_biology_result`INT(10) NOT NULL,
	`national_exam_english_result`INT(10) NOT NULL,
	`motivation_letter` VARCHAR(255) NOT NULL,
	
	`first_training_program_id` INT(10) NOT NULL,
	FOREIGN KEY (`first_training_program_id`) REFERENCES `usthoms`.`Training Program` (`id`)
    ON UPDATE CASCADE
    ON DELETE NO ACTION,
	`second_training_program_id` INT(10) NOT NULL,
	FOREIGN KEY (`second_training_program_id`) REFERENCES `usthoms`.`Training Program` (`id`)
    ON UPDATE CASCADE
    ON DELETE NO ACTION,
	`third_training_program_id` INT(10) NOT NULL,
	FOREIGN KEY (`third_training_program_id`) REFERENCES `usthoms`.`Training Program` (`id`)
    ON UPDATE CASCADE
    ON DELETE NO ACTION,
	`fourth_training_program_id` INT(10) NOT NULL,
	FOREIGN KEY (`fourth_training_program_id`) REFERENCES `usthoms`.`Training Program` (`id`)
    ON UPDATE CASCADE
    ON DELETE NO ACTION,

	PRIMARY KEY (id)
	);

/*Acdemic History*/
CREATE TABLE `usthoms`.`Academic History` (
	`id` INT(10) NOT NULL AUTO_INCREMENT,
	`school_name` VARCHAR(45) NOT NULL,
	`class` VARCHAR(45) NOT NULL,
	`school_address` VARCHAR(200) NOT NULL,
	`grade_mark_10` INT(10) NOT NULL,
	`gpa_mark_10` INT(10) NOT NULL,
	`maths_mark_10` INT(10) NOT NULL,
	`physics_mark_10` INT(10) NOT NULL,
	`chemistry_mark_10` INT(10) NOT NULL,
	`biology_mark_10` INT(10) NOT NULL,
	`it_mark_10` INT(10) NOT NULL,
	`english_mark_10` INT(10) NOT NULL,
	`grade_mark_11` INT(10) NOT NULL,
	`gpa_mark_11` INT(10) NOT NULL,
	`maths_mark_11` INT(10) NOT NULL,
	`physics_mark_11` INT(10) NOT NULL,
	`chemistry_mark_11` INT(10) NOT NULL,
	`biology_mark_11` INT(10) NOT NULL,
	`it_mark_11` INT(10) NOT NULL,
	`english_mark_11` INT(10) NOT NULL,
	`grade_mark_12` INT(10) NOT NULL,
	`gpa_mark_12` INT(10) NOT NULL,
	`maths_mark_12` INT(10) NOT NULL,
	`physics_mark_12` INT(10) NOT NULL,
	`chemistry_mark_12` INT(10) NOT NULL,
	`biology_mark_12` INT(10) NOT NULL,
	`it_mark_12` INT(10) NOT NULL,
	`english_mark_12` INT(10) NOT NULL,
	`english_certi` VARCHAR(45),
	`english_score` VARCHAR(45),
	`french_certi` VARCHAR(45),
	`french_score` VARCHAR(45),
	`viet_certi` VARCHAR(45),
	`viet_score` VARCHAR(45),
	`adward` VARCHAR(255),

	PRIMARY KEY (id)
	);

/*Jury*/
CREATE TABLE `usthoms`.`Jury` (
	`id` INT(10) NOT NULL AUTO_INCREMENT,
	`time` DATETIME NOT NULL,

	PRIMARY KEY (id)
	);

/*Jury Detail*/
CREATE TABLE `usthoms`.`Jury Detail` (
	`id` INT(10) NOT NULL AUTO_INCREMENT,
	
	`jury_id` INT(10) NOT NULL,
	FOREIGN KEY (`jury_id`) REFERENCES `usthoms`.`Jury` (`id`)
    ON UPDATE CASCADE
    ON DELETE NO ACTION,
	`employee_id` INT(10) NOT NULL,
	FOREIGN KEY (`employee_id`) REFERENCES `usthoms`.`Employee` (`id`)
    ON UPDATE CASCADE
    ON DELETE NO ACTION,

	PRIMARY KEY (id)
	);

/*Wave*/
CREATE TABLE `usthoms`.`Wave` (
	`id` INT(10) NOT NULL AUTO_INCREMENT,
	`date_start` DATE NOT NULL,
	`date_end` DATE NOT NULL,

	PRIMARY KEY (id)
	);

/*Student*/
CREATE TABLE `usthoms`.`Student` (
	`id` INT(10) NOT NULL AUTO_INCREMENT,
	`full_name` VARCHAR(45) NOT NULL,
	`ava` VARCHAR(45),
	`id_number` INT(10) NOT NULL,
	`id_date` DATE NOT NULL,
	`id_place` VARCHAR(45) NOT NULL,
	`gender` VARCHAR(45) NOT NULL,
	`DOB` VARCHAR(45) NOT NULL,
	`POB` VARCHAR(45) NOT NULL,
	`nationality` VARCHAR(45) NOT NULL,
	`ethnicity` VARCHAR(45) NOT NULL,  
	`mail_address` VARCHAR(45) NOT NULL,
	`phone` VARCHAR(20) NOT NULL,
	`home_phone` VARCHAR(20) NOT NULL,
	`parent_phone` VARCHAR(20) NOT NULL,
	`marital_status` VARCHAR(45) NOT NULL,
	
	`application_id` INT(10) NOT NULL,
	FOREIGN KEY (`application_id`) REFERENCES `usthoms`.`Application Information` (`id`)
    ON UPDATE CASCADE
    ON DELETE NO ACTION,
	`academic_id` INT(10) NOT NULL,
	FOREIGN KEY (`academic_id`) REFERENCES `usthoms`.`Academic History` (`id`)
    ON UPDATE CASCADE
    ON DELETE NO ACTION,
 	`address_id` INT(10) NOT NULL,
	FOREIGN KEY (`address_id`) REFERENCES `usthoms`.`Address` (`id`)
    ON UPDATE CASCADE
    ON DELETE NO ACTION,
	`user_id` INT(10) NOT NULL,
	FOREIGN KEY (`user_id`) REFERENCES `usthoms`.`User` (`id`)
    ON UPDATE CASCADE
    ON DELETE NO ACTION,
	`jury_id` INT(10) NOT NULL,
	FOREIGN KEY (`jury_id`) REFERENCES `usthoms`.`Jury` (`id`)
    ON UPDATE CASCADE
    ON DELETE NO ACTION,
	`wave_id` INT(10) NOT NULL,
	FOREIGN KEY (`wave_id`) REFERENCES `usthoms`.`Wave` (`id`)
    ON UPDATE CASCADE
    ON DELETE NO ACTION,

	PRIMARY KEY (id)
	);
  
/*Genral Evaluation*/
CREATE TABLE `usthoms`.`General Evaluation` (
	`id` INT(10) NOT NULL AUTO_INCREMENT,
	`datetime` DATE NOT NULL,
	`academic_transcripts` INT(30) NOT NULL,
	`standard_question_1_mark` INT(30) NOT NULL,	
	`standard_question_2_mark` INT(30) NOT NULL,	
	`standard_question_3_mark` INT(30) NOT NULL,	
	`advance_question_mark` INT(30) NOT NULL,	
	`motivation` INT(30) NOT NULL,	
	`other_achievements` INT(30) NOT NULL,	
	`remarks` VARCHAR(500),	

	`student_id` INT(10) NOT NULL,
	FOREIGN KEY (`student_id`) REFERENCES `usthoms`.`Student` (`id`)
    ON UPDATE CASCADE
    ON DELETE NO ACTION,
	`jury_id` INT(10) NOT NULL,
	FOREIGN KEY (`jury_id`) REFERENCES `usthoms`.`Jury` (`id`)
    ON UPDATE CASCADE
    ON DELETE NO ACTION,

	PRIMARY KEY (id)
	);

/*English Evaluation*/
CREATE TABLE `usthoms`.`English Evaluation` (
	`id` INT(10) NOT NULL AUTO_INCREMENT,
	`datetime` DATE NOT NULL,
	`result` VARCHAR(30) NOT NULL,
	`overall` INT(30) NOT NULL,	
	`fluency_coherence_mark` INT(30) NOT NULL,	
	`resource_mark` INT(30) NOT NULL,	
	`grama_accuracy_mark` INT(30) NOT NULL,	
	`pronunciation_mark` INT(30) NOT NULL,

	
	`student_id` INT(10) NOT NULL,
	FOREIGN KEY (`student_id`) REFERENCES `usthoms`.`Student` (`id`)
    ON UPDATE CASCADE
    ON DELETE NO ACTION,
	`jury_id` INT(10) NOT NULL,
	FOREIGN KEY (`jury_id`) REFERENCES `usthoms`.`Jury` (`id`)
    ON UPDATE CASCADE
    ON DELETE NO ACTION,

	PRIMARY KEY (id)
	);

