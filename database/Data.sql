use usthoms;

/*User*/
INSERT INTO user ( id, user_name, password, email, type)
VALUES (1, 'motconvit', 'motconvit', 'motconvit@gmail.com', 'student');

INSERT INTO user ( id, user_name, password, email, type)
VALUES (2, 'xoera', 'xoera', 'xoera@gmail.com', 'student');

INSERT INTO user ( id, user_name, password, email, type)
VALUES (3, 'haicaicanh', 'haicaicanh', 'haicaicanh@gmail.com', 'student');

INSERT INTO user ( id, user_name, password, email, type)
VALUES (4, 'quacquac', 'quacquac', 'quacquac@gmail.com', 'lecturer');

INSERT INTO user ( id, user_name, password, email, type)
VALUES (5, 'vaycanh', 'vaycanh', 'vaycanh@gmail.com', 'staff');

/*Employee*/
INSERT INTO employee( id, full_name, phone_number, user_id)
VALUES ('1', 'Đoàn Nhật Quang', '0937482647', '4');

INSERT INTO employee( id, full_name, phone_number, user_id)
VALUES ('2', 'Trịnh Thu Trang', '0993742647', '5');

/*Address*/
INSERT INTO `Address`( id, house_number, street, ward, districy, province)
VALUES ('1', '17', 'Lê Văn Lương', 'Từ Liêm', 'Cầu Giấy','Hà Nội');

INSERT INTO `Address`( id, house_number, street, ward, districy, province)
VALUES ('2', '19', 'Đức Giang', 'Đức Giang', 'Long Biên','Hà Nội');

INSERT INTO `Address`( id, house_number, street, ward, districy, province)
VALUES ('3', '20', 'Hoàng Quốc Việt', 'Cầu Giấy', 'Cầu Giấy','Hà Nội');

/*Training Program*/
INSERT INTO `Training Program` ( id, name)
VALUES ('1' , 'Pharmacological, Medical and Agronomical Biotechnology');

INSERT INTO `Training Program` ( id, name)
VALUES ('2' , 'Information and Communication Technology');

INSERT INTO `Training Program` ( id, name)
VALUES ('3' , 'Advanced Materials Science and Nanotechnology');

INSERT INTO `Training Program` ( id, name)
VALUES ('4' , 'Space and Applications');

INSERT INTO `Training Program` ( id, name)
VALUES ('5' , 'Electrical Engineering and Renewable Energy');

INSERT INTO `Training Program` ( id, name)
VALUES ('6' , 'Water - Environment – Oceanography');

INSERT INTO `Training Program` ( id, name)
VALUES ('7' , 'Food Science and Technology');

INSERT INTO `Training Program` ( id, name)
VALUES ('8' , 'Medical Science and Technology');

INSERT INTO `Training Program` ( id, name)
VALUES ('9' , 'Cyber Security');

INSERT INTO `Training Program` ( id, name)
VALUES ('10' , 'Chemistry');

INSERT INTO `Training Program` ( id, name)
VALUES ('11' , 'Applied Mathematics');

INSERT INTO `Training Program` ( id, name)
VALUES ('12' , 'Engineering Physics and Electronics');

INSERT INTO `Training Program` ( id, name)
VALUES ('13' , 'Aeronautical maintenance Engineering');

INSERT INTO `Training Program` ( id, name)
VALUES ('14' , 'Mechatronics Engineering Technology');

/*Application Infor*/
INSERT INTO `Application Information`( id, usth_applied, usth_applied_year, usth_applied_wave, diff_university_applied, diff_university_applied_year, diff_university_applied_mark, diff_university_applied_group, diff_university_applied_name, national_exam_student_number, national_exam_math_result, national_exam_physics_result, national_exam_chemistry_result, national_exam_biology_result, national_exam_english_result, motivation_letter, first_training_program_id, second_training_program_id, third_training_program_id, fourth_training_program_id)
VALUES('1', '0', null, null, null, null, null, null, null, '1', '8', '9', '8', '9', '9','/01/motivation', '1', '3', '2', '5');

INSERT INTO `Application Information`( id, usth_applied, usth_applied_year, usth_applied_wave, diff_university_applied, diff_university_applied_year, diff_university_applied_mark, diff_university_applied_group, diff_university_applied_name, national_exam_student_number, national_exam_math_result, national_exam_physics_result, national_exam_chemistry_result, national_exam_biology_result, national_exam_english_result, motivation_letter, first_training_program_id, second_training_program_id, third_training_program_id, fourth_training_program_id)
VALUES('2', '0', null, null, null, null, null, null, null, '2', '8', '9', '8', '9', '9','/02/motivation', '2', '3', '4', '5');

INSERT INTO `Application Information`( id, usth_applied, usth_applied_year, usth_applied_wave, diff_university_applied, diff_university_applied_year, diff_university_applied_mark, diff_university_applied_group, diff_university_applied_name, national_exam_student_number, national_exam_math_result, national_exam_physics_result, national_exam_chemistry_result, national_exam_biology_result, national_exam_english_result, motivation_letter, first_training_program_id, second_training_program_id, third_training_program_id, fourth_training_program_id)
VALUES('3', '0', null, null, null, null, null, null, null, '3', '8', '9', '8', '9', '9','/03/motivation', '2', '4', '7', '5');

/* Accademic History*/
INSERT INTO `Academic History`( id, school_name, class, school_address, grade_mark_10, gpa_mark_10, maths_mark_10, physics_mark_10, chemistry_mark_10, biology_mark_10, it_mark_10, english_mark_10, grade_mark_11, gpa_mark_11, maths_mark_11, physics_mark_11, chemistry_mark_11, biology_mark_11, it_mark_11, english_mark_11, grade_mark_12, gpa_mark_12, maths_mark_12, physics_mark_12, chemistry_mark_12, biology_mark_12, it_mark_12, english_mark_12, english_certi, english_score,french_certi, french_score, viet_certi, viet_score)
VALUES ('1', 'Chuyên Sư Phạm', 'A1', '78 Xuân Thủy, Hà Nội','9','8','9','9','9','8','9','9','9','8','9','9','9','8','9','9','9','8','9','9','9','8','9','9', null, null, null, null, null, null);

INSERT INTO `Academic History`( id, school_name, class, school_address, grade_mark_10, gpa_mark_10, maths_mark_10, physics_mark_10, chemistry_mark_10, biology_mark_10, it_mark_10, english_mark_10, grade_mark_11, gpa_mark_11, maths_mark_11, physics_mark_11, chemistry_mark_11, biology_mark_11, it_mark_11, english_mark_11, grade_mark_12, gpa_mark_12, maths_mark_12, physics_mark_12, chemistry_mark_12, biology_mark_12, it_mark_12, english_mark_12, english_certi, english_score,french_certi, french_score, viet_certi, viet_score)
VALUES ('2', 'Nguyễn Gia Thiều', 'A2', '89 Ngọc Lâm, Hà Nội','9','8','9','9','9','8','9','9','9','8','9','9','9','8','9','9','10','8','9','9','9','8','9','9', null, null, null, null, null, null);

INSERT INTO `Academic History`( id, school_name, class, school_address, grade_mark_10, gpa_mark_10, maths_mark_10, physics_mark_10, chemistry_mark_10, biology_mark_10, it_mark_10, english_mark_10, grade_mark_11, gpa_mark_11, maths_mark_11, physics_mark_11, chemistry_mark_11, biology_mark_11, it_mark_11, english_mark_11, grade_mark_12, gpa_mark_12, maths_mark_12, physics_mark_12, chemistry_mark_12, biology_mark_12, it_mark_12, english_mark_12, english_certi, english_score,french_certi, french_score, viet_certi, viet_score)
VALUES ('3', 'Phạm Hồng Thái', 'A1', '89 Cầu Giấy, Hà Nội','9','8','9','9','9','10','9','9','9','8','9','9','9','8','9','9','9','8','9','9','9','8','9','9', null, null, null, null, null, null);

/*Jury*/
INSERT INTO `Jury` (id, time)
VALUES ('1', '2017-04-01-09-30-0');

INSERT INTO `Jury` (id, time)
VALUES ('2', '2017-06-01-09-30-0');

INSERT INTO `Jury` (id, time)
VALUES ('3', '2016-06-01-09-30-0');

/*Jury Detail*/
INSERT INTO `Jury Detail` ( id, jury_id, employee_id)
VALUES ('1', '1', '1');

INSERT INTO `Jury Detail` ( id, jury_id, employee_id)
VALUES ('2', '2', '1');

INSERT INTO `Jury Detail` ( id, jury_id, employee_id)
VALUES ('3', '3', '1');

/*Wave*/
INSERT INTO `Wave` ( id, date_start, date_end)
VALUES ('1', '2017-02-01', '2017-03-25');

INSERT INTO `Wave` ( id, date_start, date_end)
VALUES ('2', '2017-04-01', '2017-05-25');

INSERT INTO `Wave` ( id, date_start, date_end)
VALUES ('3', '2017-04-01', '2017-05-25');

/*Student*/
INSERT INTO student ( id, ava, full_name, id_number, id_date, id_place, gender, DOB, POB, nationality, ethnicity, mail_address, phone, home_phone, parent_phone, marital_status, application_id, academic_id, address_id, user_id, jury_id, wave_id)
VALUES ('1', '/01/ava.png','Đỗ Thị Minh Ngọc', '1', '2010-05-01','Hanoi', 'female', '1999-02-04','Hanoi','Vietbnamese', 'Kinh','06 Cầu Giấy, Hà Nội', '0936472836', '093647813', '0936486384', 'single', '1', '1', '1', '1','1','1');

INSERT INTO student ( id, ava, full_name, id_number, id_date, id_place, gender, DOB, POB, nationality, ethnicity, mail_address, phone, home_phone, parent_phone, marital_status, application_id, academic_id, address_id, user_id, jury_id, wave_id)
VALUES ('2', '/02/ava.png', 'Vũ Khánh Huyền', '2', '2010-06-01','Hanoi', 'female', '1999-08-09','Hanoi','Vietbnamese', 'Kinh','07 Đức Giang, Hà Nội', '0974829472', '093729813', '0973436384', 'single', '2', '2', '2', '2','2','2');

INSERT INTO student ( id, ava, full_name, id_number, id_date, id_place, gender, DOB, POB, nationality, ethnicity, mail_address, phone, home_phone, parent_phone, marital_status, application_id, academic_id, address_id, user_id, jury_id, wave_id)
VALUES ('3', '/03/ava.png', 'Lương Hùng Sơn', '3', '2008-06-01','Hanoi', 'male', '1999-02-04','Hanoi','Vietbnamese', 'Kinh','08 Hoàng Quốc Việt, Hà Nội', '0931112836', '093213813', '0974839253', 'single', '3', '3', '3', '3','3','3');

/*English Evaluation*/
INSERT INTO `English Evaluation` ( id, datetime, result, overall, fluency_coherence_mark, resource_mark, grama_accuracy_mark, pronunciation_mark, student_id, jury_id)
VALUES ('1', '2017-04-01-09-30-0', '3-year-program', '87','20', '22', '21', '24', '1', '1');

INSERT INTO `English Evaluation` ( id, datetime, result, overall, fluency_coherence_mark, resource_mark, grama_accuracy_mark, pronunciation_mark, student_id, jury_id)
VALUES ('2', '2017-06-01-09-30-0', '3-year-program', '90','23', '22', '21', '24', '1', '1');

INSERT INTO `English Evaluation` ( id, datetime, result, overall, fluency_coherence_mark, resource_mark, grama_accuracy_mark, pronunciation_mark, student_id, jury_id)
VALUES ('3', '2015-06-01-09-30-0', '3-year-program', '90','22', '22', '21', '25', '1', '1');

/*General Evaluation*/
INSERT INTO `General Evaluation` (id, datetime, academic_transcripts, standard_question_1_mark, standard_question_2_mark, standard_question_3_mark, advance_question_mark, motivation, other_achievements, remarks, student_id, jury_id)
VALUES ('1', '2017-04-01-09-30-0', '25', '12', '12', '12', '8', '20', '0', null, '1','1');

INSERT INTO `General Evaluation` (id, datetime, academic_transcripts, standard_question_1_mark, standard_question_2_mark, standard_question_3_mark, advance_question_mark, motivation, other_achievements, remarks, student_id, jury_id)
VALUES ('2', '2017-06-01-09-30-0', '25', '12', '12', '12', '8', '20', '0', null, '2','2');

INSERT INTO `General Evaluation` (id, datetime, academic_transcripts, standard_question_1_mark, standard_question_2_mark, standard_question_3_mark, advance_question_mark, motivation, other_achievements, remarks, student_id, jury_id)
VALUES ('3', '2016-06-01-09-30-0', '25', '12', '12', '12', '8', '20', '0', null, '3','3');



