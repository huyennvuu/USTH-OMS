-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 30, 2020 at 10:38 AM
-- Server version: 10.1.38-MariaDB
-- PHP Version: 7.1.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `usth`
--

-- --------------------------------------------------------

--
-- Table structure for table `academic history`
--

CREATE TABLE `academic history` (
  `id` int(10) NOT NULL,
  `school_name` varchar(45) NOT NULL,
  `class` varchar(45) NOT NULL,
  `school_address` varchar(200) NOT NULL,
  `grade_mark_10` varchar(10) NOT NULL,
  `gpa_mark_10` int(10) NOT NULL,
  `maths_mark_10` int(10) NOT NULL,
  `physics_mark_10` int(10) NOT NULL,
  `chemistry_mark_10` int(10) NOT NULL,
  `biology_mark_10` int(10) NOT NULL,
  `it_mark_10` int(10) NOT NULL,
  `english_mark_10` int(10) NOT NULL,
  `grade_mark_11` varchar(10) NOT NULL,
  `gpa_mark_11` int(10) NOT NULL,
  `maths_mark_11` int(10) NOT NULL,
  `physics_mark_11` int(10) NOT NULL,
  `chemistry_mark_11` int(10) NOT NULL,
  `biology_mark_11` int(10) NOT NULL,
  `it_mark_11` int(10) NOT NULL,
  `english_mark_11` int(10) NOT NULL,
  `grade_mark_12` varchar(10) NOT NULL,
  `gpa_mark_12` int(10) NOT NULL,
  `maths_mark_12` int(10) NOT NULL,
  `physics_mark_12` int(10) NOT NULL,
  `chemistry_mark_12` int(10) NOT NULL,
  `biology_mark_12` int(10) NOT NULL,
  `it_mark_12` int(10) NOT NULL,
  `english_mark_12` int(10) NOT NULL,
  `english_certi` varchar(45) DEFAULT NULL,
  `english_score` varchar(45) DEFAULT NULL,
  `french_certi` varchar(45) DEFAULT NULL,
  `french_score` varchar(45) DEFAULT NULL,
  `viet_certi` varchar(45) DEFAULT NULL,
  `viet_score` varchar(45) DEFAULT NULL,
  `adward` varchar(255) DEFAULT NULL,
  `student_id` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `academic history`
--

INSERT INTO `academic history` (`id`, `school_name`, `class`, `school_address`, `grade_mark_10`, `gpa_mark_10`, `maths_mark_10`, `physics_mark_10`, `chemistry_mark_10`, `biology_mark_10`, `it_mark_10`, `english_mark_10`, `grade_mark_11`, `gpa_mark_11`, `maths_mark_11`, `physics_mark_11`, `chemistry_mark_11`, `biology_mark_11`, `it_mark_11`, `english_mark_11`, `grade_mark_12`, `gpa_mark_12`, `maths_mark_12`, `physics_mark_12`, `chemistry_mark_12`, `biology_mark_12`, `it_mark_12`, `english_mark_12`, `english_certi`, `english_score`, `french_certi`, `french_score`, `viet_certi`, `viet_score`, `adward`, `student_id`) VALUES
(1, 'Chuyen Su Pham', 'A1', '78 Xuan Thuy, Ha Noi', 'good', 8, 9, 9, 9, 8, 9, 9, 'good', 8, 9, 9, 9, 8, 9, 9, 'good', 8, 9, 9, 9, 8, 9, 9, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(2, 'Nguyen Gia Thieu', 'A2', '89 Ngoc Lam, Ha Noi', 'good', 8, 9, 9, 9, 8, 9, 9, 'good', 8, 9, 9, 9, 8, 9, 9, 'good', 8, 9, 9, 9, 8, 9, 9, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2),
(3, 'Pham Hong Thai', 'A1', '89 Cau Giay, Ha Noi', 'good', 8, 9, 9, 9, 10, 9, 9, 'good', 8, 9, 9, 9, 8, 9, 9, 'good', 8, 9, 9, 9, 8, 9, 9, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3),
(4, 'Viet Duc', 'A4', '4 Phan Dinh Phung, Hanoi', 'good', 9, 8, 9, 9, 9, 9, 8, 'good', 8, 9, 8, 9, 9, 8, 8, 'good', 8, 9, 8, 9, 8, 9, 8, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4),
(5, 'Kim Lien', 'A2', '5 Kim Lien', 'good', 9, 9, 9, 9, 9, 9, 9, 'good', 9, 9, 9, 9, 9, 9, 9, 'good', 9, 9, 9, 9, 9, 9, 9, 'IELTS', '8.0', '', '', '', '', '', 5);

-- --------------------------------------------------------

--
-- Table structure for table `address`
--

CREATE TABLE `address` (
  `id` int(10) NOT NULL,
  `house_number` int(10) NOT NULL,
  `street` varchar(45) NOT NULL,
  `ward` varchar(45) NOT NULL,
  `district` varchar(10) NOT NULL,
  `province` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `address`
--

INSERT INTO `address` (`id`, `house_number`, `street`, `ward`, `district`, `province`) VALUES
(1, 17, 'Le Van Luong', 'Tu Liem', 'Cau Giay', 'Ha Noi'),
(2, 19, 'Duc Giang', 'Duc Giang', 'Long Bien', 'Ha Noi'),
(3, 20, 'Hoang Quoc Viet', 'Cau Giay', 'Cau Giay', 'Ha Noi'),
(4, 21, 'Ngoc Lam', 'Ngoc Lam', 'Long Bien', 'Ha Noi'),
(5, 5, 'Gia Thuy', 'Gia Thuy', 'Long Bien', 'Hanoi');

-- --------------------------------------------------------

--
-- Table structure for table `application information`
--

CREATE TABLE `application information` (
  `id` int(10) NOT NULL,
  `usth_applied` varchar(10) NOT NULL,
  `USTH_applied_year` varchar(10) DEFAULT NULL,
  `USTH_applied_wave` varchar(10) DEFAULT NULL,
  `diff_university_applied` varchar(10) DEFAULT NULL,
  `diff_university_applied_year` int(10) DEFAULT NULL,
  `diff_university_applied_mark` varchar(45) DEFAULT NULL,
  `diff_university_applied_group` varchar(45) DEFAULT NULL,
  `diff_university_applied_name` varchar(45) DEFAULT NULL,
  `national_exam_student_number` int(10) NOT NULL,
  `national_exam_math_result` int(10) NOT NULL,
  `national_exam_physics_result` int(10) NOT NULL,
  `national_exam_chemistry_result` int(10) NOT NULL,
  `national_exam_biology_result` int(10) NOT NULL,
  `national_exam_english_result` int(10) NOT NULL,
  `motivation_letter` varchar(255) NOT NULL,
  `first_training_program_id` int(10) NOT NULL,
  `second_training_program_id` int(10) NOT NULL,
  `third_training_program_id` int(10) NOT NULL,
  `fourth_training_program_id` int(10) NOT NULL,
  `student_id` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `application information`
--

INSERT INTO `application information` (`id`, `usth_applied`, `USTH_applied_year`, `USTH_applied_wave`, `diff_university_applied`, `diff_university_applied_year`, `diff_university_applied_mark`, `diff_university_applied_group`, `diff_university_applied_name`, `national_exam_student_number`, `national_exam_math_result`, `national_exam_physics_result`, `national_exam_chemistry_result`, `national_exam_biology_result`, `national_exam_english_result`, `motivation_letter`, `first_training_program_id`, `second_training_program_id`, `third_training_program_id`, `fourth_training_program_id`, `student_id`) VALUES
(1, 'false', NULL, NULL, 'false', NULL, NULL, NULL, NULL, 1, 8, 9, 8, 9, 9, '/01/motivation', 1, 3, 2, 5, 1),
(2, 'false', NULL, NULL, 'false', NULL, NULL, NULL, NULL, 2, 8, 9, 8, 9, 9, '/02/motivation', 2, 3, 4, 5, 2),
(3, 'false', NULL, NULL, 'false', NULL, NULL, NULL, NULL, 3, 8, 9, 8, 9, 9, '/03/motivation', 2, 4, 7, 5, 3),
(4, 'false', NULL, NULL, 'false', NULL, NULL, NULL, NULL, 4, 9, 8, 9, 8, 9, '/02/motivation', 1, 2, 5, 8, 4),
(5, '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 5, 9, 9, 8, 9, 9, '', 1, 2, 3, 4, 5);

-- --------------------------------------------------------

--
-- Table structure for table `employee`
--

CREATE TABLE `employee` (
  `id` int(10) NOT NULL,
  `full_name` varchar(45) DEFAULT NULL,
  `phone_number` varchar(45) DEFAULT NULL,
  `user_id` int(10) NOT NULL,
  `is_english_teacher` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `employee`
--

INSERT INTO `employee` (`id`, `full_name`, `phone_number`, `user_id`, `is_english_teacher`) VALUES
(1, 'Doan Nhat Quang', '0937482647', 4, 0),
(2, 'Trinh Thi Thu Trang', '0993742647', 5, 0);

-- --------------------------------------------------------

--
-- Table structure for table `english evaluation`
--

CREATE TABLE `english evaluation` (
  `id` int(10) NOT NULL,
  `datetime` date NOT NULL,
  `result` varchar(30) NOT NULL,
  `overall` int(30) NOT NULL,
  `fluency_coherence_mark` int(30) NOT NULL,
  `resource_mark` int(30) NOT NULL,
  `grama_accuracy_mark` int(30) NOT NULL,
  `pronunciation_mark` int(30) NOT NULL,
  `student_id` int(10) NOT NULL,
  `jury_id` int(10) NOT NULL,
  `remarks` varchar(255) DEFAULT NULL,
  `employee_id` int(10) NOT NULL,
  `status` tinyint(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `english evaluation`
--

INSERT INTO `english evaluation` (`id`, `datetime`, `result`, `overall`, `fluency_coherence_mark`, `resource_mark`, `grama_accuracy_mark`, `pronunciation_mark`, `student_id`, `jury_id`, `remarks`, `employee_id`, `status`) VALUES
(1, '2017-04-01', '3-year-program', 87, 20, 22, 21, 24, 1, 1, NULL, 1, 0),
(2, '2017-06-01', '3-year-program', 90, 23, 22, 21, 24, 2, 2, NULL, 1, 0),
(3, '2015-06-01', '3-year-program', 90, 22, 22, 21, 25, 3, 3, NULL, 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `general evaluation`
--

CREATE TABLE `general evaluation` (
  `id` int(10) NOT NULL,
  `datetime` date NOT NULL,
  `academic_transcripts` int(30) NOT NULL,
  `standard_question_1_mark` int(30) NOT NULL,
  `standard_question_2_mark` int(30) NOT NULL,
  `standard_question_3_mark` int(30) NOT NULL,
  `advance_question_mark` int(30) NOT NULL,
  `motivation` int(30) NOT NULL,
  `other_achievements` int(30) NOT NULL,
  `remarks` varchar(500) DEFAULT NULL,
  `student_id` int(10) NOT NULL,
  `jury_id` int(10) NOT NULL,
  `employee_id` int(10) DEFAULT NULL,
  `status` tinyint(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `general evaluation`
--

INSERT INTO `general evaluation` (`id`, `datetime`, `academic_transcripts`, `standard_question_1_mark`, `standard_question_2_mark`, `standard_question_3_mark`, `advance_question_mark`, `motivation`, `other_achievements`, `remarks`, `student_id`, `jury_id`, `employee_id`, `status`) VALUES
(1, '2017-04-01', 25, 12, 12, 12, 8, 20, 0, NULL, 1, 1, 1, NULL),
(2, '2017-06-01', 25, 12, 12, 12, 8, 20, 0, NULL, 2, 2, 1, NULL),
(3, '2016-06-01', 25, 12, 12, 12, 8, 20, 0, NULL, 3, 3, 1, NULL),
(5, '2020-05-24', 25, 12, 12, 12, 9, 17, 0, '', 3, 3, 1, NULL),
(7, '2020-05-29', 0, 0, 0, 0, 0, 0, 0, '', 1, 3, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `jury`
--

CREATE TABLE `jury` (
  `id` int(10) NOT NULL,
  `time` datetime NOT NULL,
  `wave_id` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `jury`
--

INSERT INTO `jury` (`id`, `time`, `wave_id`) VALUES
(1, '2017-04-01 09:30:00', 3),
(2, '2017-06-01 09:30:00', 4),
(3, '2016-06-01 09:30:00', 1),
(4, '2016-04-01 09:30:00', 2),
(5, '2020-09-09 09:30:00', 5);

-- --------------------------------------------------------

--
-- Table structure for table `jury employee detail`
--

CREATE TABLE `jury employee detail` (
  `id` int(10) NOT NULL,
  `jury_id` int(10) NOT NULL,
  `employee_id` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `jury employee detail`
--

INSERT INTO `jury employee detail` (`id`, `jury_id`, `employee_id`) VALUES
(1, 1, 1),
(2, 2, 1),
(3, 3, 1),
(4, 4, 1),
(5, 5, 1);

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `id` int(10) NOT NULL,
  `full_name` varchar(45) NOT NULL,
  `ava` varchar(45) DEFAULT NULL,
  `id_number` int(10) NOT NULL,
  `id_date` date NOT NULL,
  `id_place` varchar(45) NOT NULL,
  `gender` varchar(45) NOT NULL,
  `DOB` varchar(45) NOT NULL,
  `POB` varchar(45) NOT NULL,
  `nationality` varchar(45) NOT NULL,
  `ethnicity` varchar(45) NOT NULL,
  `mail_address` varchar(45) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `home_phone` varchar(20) NOT NULL,
  `parent_phone` varchar(20) NOT NULL,
  `marital_status` varchar(45) NOT NULL,
  `address_id` int(10) NOT NULL,
  `user_id` int(10) NOT NULL,
  `jury_id` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`id`, `full_name`, `ava`, `id_number`, `id_date`, `id_place`, `gender`, `DOB`, `POB`, `nationality`, `ethnicity`, `mail_address`, `phone`, `home_phone`, `parent_phone`, `marital_status`, `address_id`, `user_id`, `jury_id`) VALUES
(1, 'Do Thi Minh Ngoc', '/01/ava.png', 1, '2010-05-01', 'Hanoi', 'female', '1999-02-04', 'Hanoi', 'Vietbnamese', 'Kinh', '06 Cau Giay, Ha Noi', '0936472836', '093647813', '0936486384', 'single', 1, 1, 1),
(2, 'Vu Khanh Huyen', '/02/ava.png', 2, '2010-06-01', 'Hanoi', 'female', '1999-08-09', 'Hanoi', 'Vietbnamese', 'Kinh', '07 Duc Giang, Ha Noi', '0974829472', '093729813', '0973436384', 'single', 2, 2, 2),
(3, 'Luong Hung Son', '/03/ava.png', 3, '2008-06-01', 'Hanoi', 'male', '1999-02-04', 'Hanoi', 'Vietbnamese', 'Kinh', '08 Hoang Quoc Viet, Ha Noi', '0931112836', '093213813', '0974839253', 'single', 3, 3, 3),
(4, 'Doan Lien Huong', NULL, 4, '2010-06-01', 'Hanoi', 'female', '1999-11-12', 'Hanoi', 'Vietnamese', 'Kinh', 'Hanoi', '0903849347', '0437584768', '0934753847', 'single', 4, 7, 4),
(5, 'Le Nhu Chu Hiep', NULL, 5, '2010-05-01', 'Hanoi', 'male', '1999-05-02', 'Hanoi', 'Vietnamese', 'Kinh', 'Hanoi', '094738578', '034857957', '094373855', 'single', 5, 8, 5);

-- --------------------------------------------------------

--
-- Table structure for table `training program`
--

CREATE TABLE `training program` (
  `id` int(10) NOT NULL,
  `name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `training program`
--

INSERT INTO `training program` (`id`, `name`) VALUES
(1, 'PMAB'),
(2, 'ICT'),
(3, 'NANO'),
(4, 'Space'),
(5, 'Energy'),
(6, 'WEO'),
(7, 'Food'),
(8, 'MST'),
(9, 'CS'),
(10, 'Chemistry'),
(11, 'Mathematics'),
(12, 'EPE'),
(13, 'AE'),
(14, 'MET');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(10) NOT NULL,
  `user_name` varchar(45) NOT NULL,
  `password` varchar(45) NOT NULL,
  `email` varchar(45) NOT NULL,
  `type` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `user_name`, `password`, `email`, `type`) VALUES
(1, 'motconvit', 'motconvit', 'motconvit@gmail.com', 'student'),
(2, 'xoera', 'xoera', 'xoera@gmail.com', 'student'),
(3, 'haicaicanh', 'haicaicanh', 'haicaicanh@gmail.com', 'student'),
(4, 'quacquac', 'quacquac', 'quacquac@gmail.com', 'lecturer'),
(5, 'vaycanh', 'vaycanh', 'vaycanh@gmail.com', 'staff'),
(7, 'meomeo', 'meomeo', 'meomeo@gmail.com', 'student'),
(8, 'gaugau', 'gaugau', 'gaugau@gmail.com', 'student');

-- --------------------------------------------------------

--
-- Table structure for table `wave`
--

CREATE TABLE `wave` (
  `id` int(10) NOT NULL,
  `date_start` date NOT NULL,
  `date_end` date NOT NULL,
  `status` tinyint(1) NOT NULL,
  `wave_name` varchar(10) NOT NULL,
  `academic_year` varchar(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `wave`
--

INSERT INTO `wave` (`id`, `date_start`, `date_end`, `status`, `wave_name`, `academic_year`) VALUES
(1, '2016-04-01', '2016-05-25', 0, '1', '2016'),
(2, '2016-02-01', '2016-03-25', 0, '2', '2016'),
(3, '2017-02-01', '2017-03-25', 0, '1', '2017'),
(4, '2017-04-01', '2017-05-25', 0, '2', '2017'),
(5, '2020-06-29', '2020-08-29', 1, '1', '2020');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `academic history`
--
ALTER TABLE `academic history`
  ADD PRIMARY KEY (`id`),
  ADD KEY `academic history_ibfk_1` (`student_id`);

--
-- Indexes for table `address`
--
ALTER TABLE `address`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `application information`
--
ALTER TABLE `application information`
  ADD PRIMARY KEY (`id`),
  ADD KEY `first_training_program_id` (`first_training_program_id`),
  ADD KEY `second_training_program_id` (`second_training_program_id`),
  ADD KEY `third_training_program_id` (`third_training_program_id`),
  ADD KEY `fourth_training_program_id` (`fourth_training_program_id`),
  ADD KEY `student_id` (`student_id`);

--
-- Indexes for table `employee`
--
ALTER TABLE `employee`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `english evaluation`
--
ALTER TABLE `english evaluation`
  ADD PRIMARY KEY (`id`),
  ADD KEY `student_id` (`student_id`),
  ADD KEY `jury_id` (`jury_id`),
  ADD KEY `employee_id` (`employee_id`);

--
-- Indexes for table `general evaluation`
--
ALTER TABLE `general evaluation`
  ADD PRIMARY KEY (`id`),
  ADD KEY `student_id` (`student_id`),
  ADD KEY `jury_id` (`jury_id`),
  ADD KEY `general evaluation_ibfk_3` (`employee_id`);

--
-- Indexes for table `jury`
--
ALTER TABLE `jury`
  ADD PRIMARY KEY (`id`),
  ADD KEY `wave_id` (`wave_id`);

--
-- Indexes for table `jury employee detail`
--
ALTER TABLE `jury employee detail`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jury_id` (`jury_id`),
  ADD KEY `employee_id` (`employee_id`);

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`id`),
  ADD KEY `student_ibfk_1` (`address_id`),
  ADD KEY `student_ibfk_2` (`user_id`),
  ADD KEY `jury_id` (`jury_id`);

--
-- Indexes for table `training program`
--
ALTER TABLE `training program`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wave`
--
ALTER TABLE `wave`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `academic history`
--
ALTER TABLE `academic history`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `address`
--
ALTER TABLE `address`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `application information`
--
ALTER TABLE `application information`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `employee`
--
ALTER TABLE `employee`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `english evaluation`
--
ALTER TABLE `english evaluation`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `general evaluation`
--
ALTER TABLE `general evaluation`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `jury`
--
ALTER TABLE `jury`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `jury employee detail`
--
ALTER TABLE `jury employee detail`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `student`
--
ALTER TABLE `student`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `training program`
--
ALTER TABLE `training program`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `wave`
--
ALTER TABLE `wave`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `academic history`
--
ALTER TABLE `academic history`
  ADD CONSTRAINT `academic history_ibfk_1` FOREIGN KEY (`student_id`) REFERENCES `student` (`id`) ON DELETE NO ACTION ON UPDATE CASCADE;

--
-- Constraints for table `jury`
--
ALTER TABLE `jury`
  ADD CONSTRAINT `jury_ibfk_1` FOREIGN KEY (`wave_id`) REFERENCES `wave` (`id`) ON DELETE NO ACTION ON UPDATE CASCADE;

--
-- Constraints for table `student`
--
ALTER TABLE `student`
  ADD CONSTRAINT `student_ibfk_1` FOREIGN KEY (`address_id`) REFERENCES `address` (`id`) ON DELETE NO ACTION ON UPDATE CASCADE,
  ADD CONSTRAINT `student_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE NO ACTION ON UPDATE CASCADE,
  ADD CONSTRAINT `student_ibfk_3` FOREIGN KEY (`jury_id`) REFERENCES `jury` (`id`) ON DELETE NO ACTION ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
