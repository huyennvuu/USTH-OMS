<template>
  <div class="container">
    <div>
      <table>
        <tr>
          <td>
            <img src="~/static/usth-logo.png" width="250" height="120">
          </td>
          <td class="university-infor">
            Trường Đại học Khoa học và Công nghệ Hà Nội
            <br>
            University of Science and Technology of Hanoi
          </td>
        </tr>
      </table>
      
    </div>
    <br>
    <h2 class="subtitle">
      ĐƠN ĐĂNG KÝ DỰ TUYỂN HỆ CỬ NHÂN NĂM 2020
      <br>
      APPLICATION FORM FOR BACHELOR COURSES INTAKE 2020
    </h2>
    <br>
    <p class="part-title">
    THÔNG TIN CÁ NHÂN/ PERSONAL INFORMATION
    </p>
    <p class="input-title">
      1. Họ và tên/ Full name: {{ studentData.full_name }} <br /><br />
      2. Số chứng minh thư nhân dân/ ID number: {{ studentData.id_number }}
      <br /><br />
    </p>
      <div class="part-container">
        <p class="input-title">
          Ngày cấp: {{ studentData.id_date }} <br /><br />
          Nơi cấp: {{ studentData.id_place }} <br /><br />
        </p>
      </div>
    <p class="input-title">
      3. Ngày sinh/ Date of birth: {{ studentData.DOB }} <br /><br />
      4. Giới tính/ Gender: {{ studentData.gender }} <br /><br />
      5. Nơi sinh/ Place of birth: {{ studentData.POB }} <br /><br />
      6. Quốc tịch / Nationality: {{ studentData.nationality }} <br /><br />
      7. Dân tộc/ Ethnicity: {{ studentData.ethnicity }} <br /><br />
      8. Địa chỉ gửi thư/ Current mailing address for correspondence:
      {{ studentData.mail_address }} <br /><br />
      9. Di động/Mobile phone: {{ studentData.phone }} <br /><br />
      10. E-mail: {{ studentData.email }} <br /><br />
      11. Điện thoại/ Home phone: {{ studentData.home_phone }} <br /><br />
      12. Số di động của bố, mẹ/ Parent’s mobile No:
      {{ studentData.parent_phone }} <br /><br />
      13. Tình trạng hôn nhân/ Marital status: {{ studentData.marital_status }}
      <br /><br />
      14. Hộ khẩu thường trú/ Permanent Resident Address:
      <br /><br />
    </p>
      <div class="part-container">
        <p class="input-title">
        Số nhà/ House No.: {{ addressData.house_number }} <br /><br />
        Đường/ Street: {{ addressData.street }} <br /><br />
        Phường,xã/ Ward, commune: {{ addressData.ward }} <br /><br />
        Quận, huyện/ District: {{ addressData.district }} <br /><br />
        Tỉnh, thành phố/ Province: {{ addressData.province }} <br /><br />
        </p>
      </div>
    <p class="part-title">
    QUÁ TRÌNH HỌC TẬP BẬC TRUNG HỌC PHỔ THÔNG / ACADEMIC HISTORY
    </p>
    <p class="input-title">
      15. Tên trường/ School name: {{ academicHistoryData.school_name }}
      <br /><br />
      16. Lớp/ Class: {{ academicHistoryData.class }} <br /><br />
      17. Địa chỉ đầy đủ/ Address: {{ academicHistoryData.school_address }}
      <br /><br />
      18. Kết quả học tập/ Result:
      <br /><br />

    <table>
      <tr>
        <td class="table-title">Kết quả (theo Học bạ) Result</td>
        <td class="table-title">Xếp loại/ Grade</td>
        <td class="table-title">ĐTB năm/ Final GPA</td>
        <td class="table-title">Toán/ Maths</td>
        <td class="table-title">Vật lý/ Physics</td>
        <td class="table-title">Hóa học/ Chemistry</td>
        <td class="table-title">Sinh học/ Biology</td>
        <td class="table-title">Tin học/ IT</td>
        <td class="table-title">Tiếng Anh/ English</td>
      </tr>
      <tr>
        <td>
          Lớp 10/ Grade 10
        </td>
        <td>
          {{ academicHistoryData.grade_mark_10 }}
        </td>
        <td>
          {{ academicHistoryData.gpa_mark_10 }}
        </td>
        <td>
          {{ academicHistoryData.maths_mark_10 }}
        </td>
        <td>
          {{ academicHistoryData.physics_mark_10 }}
        </td>
        <td>
          {{ academicHistoryData.chemistry_mark_10 }}
        </td>
        <td>
          {{ academicHistoryData.biology_mark_10 }}
        </td>
        <td>
          {{ academicHistoryData.it_mark_10 }}
        </td>
        <td>
          {{ academicHistoryData.english_mark_10 }}
        </td>
      </tr>
      <tr>
        <td>
          Lớp 11/ Grade 11
        </td>
        <td>
          {{ academicHistoryData.grade_mark_11 }}
        </td>
        <td>
          {{ academicHistoryData.gpa_mark_11 }}
        </td>
        <td>
          {{ academicHistoryData.maths_mark_11 }}
        </td>
        <td>
          {{ academicHistoryData.physics_mark_11 }}
        </td>
        <td>
          {{ academicHistoryData.chemistry_mark_11 }}
        </td>
        <td>
          {{ academicHistoryData.biology_mark_11 }}
        </td>
        <td>
          {{ academicHistoryData.it_mark_11 }}
        </td>
        <td>
          {{ academicHistoryData.english_mark_11 }}
        </td>
      </tr>
      <tr>
        <td>
          Lớp 12/ Grade 12
        </td>
        <td>
          {{ academicHistoryData.grade_mark_12 }}
        </td>
        <td>
          {{ academicHistoryData.gpa_mark_12 }}
        </td>
        <td>
          {{ academicHistoryData.maths_mark_12 }}
        </td>
        <td>
          {{ academicHistoryData.physics_mark_12 }}
        </td>
        <td>
          {{ academicHistoryData.chemistry_mark_12 }}
        </td>
        <td>
          {{ academicHistoryData.biology_mark_12 }}
        </td>
        <td>
          {{ academicHistoryData.biology_mark_12 }}
        </td>
        <td>
          {{ academicHistoryData.english_mark_12 }}
        </td>
      </tr>
    </table>

    <br />
    * Với thí sinh sẽ tốt nghiệp năm 2020, nếu chưa có điểm trung bình năm lớp
    12, vui lòng điền và ghi rõ điểm trung bình học kỳ 1 năm lớp 12/ For
    candidate who will graduate from high school in 2019, please clearly mention
    the average mark of the 1st semester of Grade 12 in case the mark for full
    year is not released
    <br /><br />
    19. Các thành tích nổi bật (học bổng, giải thưởng …)/ Awards and
    Distinctions:
    <br /><br />
    20. Chứng chỉ (nếu có)/ Certificates (if any):
    <table>
      <tr>
        <td class="table-title">Ngoại ngữ/ Languages</td>
        <td class="table-title">Chứng chỉ/ Certificate</td>
        <td class="table-title">Điểm/Score</td>
      </tr>
      <tr>
        <td>Tiếng Anh/ English</td>
        <td>
          {{ academicHistoryData.english_certi }}
        </td>
        <td>
          {{ academicHistoryData.english_score }}
        </td>
      </tr>
      <tr>
        <td>French/ Tiếng Pháp</td>
        <td>
          {{ academicHistoryData.french_certi }}
        </td>
        <td>
          {{ academicHistoryData.french_score }}
        </td>
      </tr>
      <tr>
        <td>Tiếng Việt/ Vietnamese</td>
        <td>
          {{ academicHistoryData.viet_certi }}
        </td>
        <td>
          {{ academicHistoryData.viet_score }}
        </td>
      </tr>
    </table>
    </p>
    <p class="part-title">
    NỘI DUNG DỰ TUYỂN/ APPLICATION INFORMATION
    </p>
    <p class="input-title">
    24. Bạn đã từng đăng ký tham gia dự tuyển tại trường ĐH Khoa học và Công
    nghệ Hà Nội chưa?/ Have you ever applied for admissions to University of
    Science and Technology of Hanoi (USTH) before?
    {{ applicationData.usth_applied }}
    </p>
    <div v-if="applicationData.usth_applied == 'true'" class="container-flex">
      Năm/ Year: {{ applicationData.usth_applied_year }} <br /><br />
      Đợt/ Wave: {{ applicationData.usth_applied_wave }}
    </div>
    <br />
    <p class="input-title">
      25. Trước đây bạn có từng đăng ký một trường Đại học nào khác không?/ Have
      you ever registered for any University else before?
    {{ applicationData.diff_university_applied }}
    </p>
    <br>
    <div
      v-if="applicationData.diff_university_applied == 'true'"
      class="container-flex"
    >
      Năm/ Year: {{ applicationData.diff_university_applied_year }} <br /><br />
      Khối/ Group: {{ applicationData.diff_university_applied_group }}
      <br /><br />
      Điểm/ Mark: {{ applicationData.diff_university_applied_mark }}
      <br /><br />
      Tên trường/ University name:
      {{ applicationData.diff_university_applied_mark }}
    </div>

    <p class="input-title">
      26. Thông tin về kỳ thi THPT Quốc Gia dành cho thí sinh thi tốt nghiệp
      trước năm 2020/ National Exam Information for student graduated before
      2020:(thí sinh đang học lớp 12 hoặc theo học chương trình quốc tế không
      phải điền mục này/Student who is studying in grade 12 or international
      program do not have to fill this part)
      <br>
    </p>
      <div class="part-container">
        <p class="input-title">
          Số báo danh/ Student Exam No: {{ applicationData.national_exam_student_number }}
          <br>
          <div class="part-container">
            <p class="input-title">
            Toán/ Mathematics: {{ applicationData.national_exam_math_result }}
            <br>
            Vật lý/ Physics: {{ applicationData.national_exam_physics_result }}
            <br>
            Hóa học/ Chemistry: {{ applicationData.national_exam_chemistry_result }}
            <br>
            Sinh học/ Biology: {{ applicationData.national_exam_biology_result }}
            <br>
            Tiếng Anh/ English: {{ applicationData.national_exam_english_result }}
            </p>
          </div>
          <br>
          <p class="input-title">
          Ngành học xếp theo thứ tự ưu tiên/ Training Program in order of priority
          <br>
          </p>
          <div class="part-container">
            <p class="input-title">
              1: {{ applicationData.first_training_program_id }} 
              <br>
              2: {{ applicationData.second_training_program_id }} 
              <br>
              3: {{ applicationData.third_training_program_id }} 
              <br>
              4: {{ applicationData.fourth_training_program_id }}
            </p>
          </div>
      </div>
    <br>
    <p class="input-title national_exam_table">
      <strong>Lưu ý/ Note: </strong> <br /><br />
      (*) Đối với các ngành không đủ số lượng sinh viên theo điều kiện mở ngành
      thì sinh viên sẽ được chuyển nguyện vọng sang các ngành theo thứ tự đã
      đăng ký (trừ ngành Kỹ thuật Hàng không). For program which does not
      recruit enough students as the regulation, student will be transferred to
      other program in the order of registration (except for Aeronautical
      maintenance and Engineering program).
      <br /><br />
      (**) Do đặc thù của chương trình đào tạo nên thí sinh có nguyện vọng học
      ngành Kỹ thuật Hàng không thì thứ tự ưu tiên số 1 bắt buộc phải là ngành
      Kỹ thuật hàng không. Students who apply for Aeronautical maintenance and
      Engineering program must select Aeronautical Engineering program as the 1
      st priority.
    </p>

    <br /><br />
    <p class="input-title" style="text-align: center; font-weight: bold">
      CAM KẾT CỦA ỨNG VIÊN/ CERTIFICATION OF ACCURACY
    </p>
    <div style="padding-top: 1em; text-align: center ">
      <p class="input-title">
        Tôi cam đoan rằng toàn bộ thông tin trong bản đăng ký đính kèm là hoàn
        toàn chính xác và đầy đủ, và có thể được kiểm chứng bằng văn bản gốc.<br /><br />
      </p>
      <p class="input-title">
        I certify that all information included with the application is accurate
        and complete, and may be verified with an original document/official
        source.
      </p>
    </div>

    <table>
      <tr>
        <td>
          <div style="padding: 2em">
            <p class="input-title">
              <strong>LƯU Ý:</strong> Xin lưu ý rằng ĐHKHCNHN hoàn toàn có quyền
              từ chối không cho sinh viên nhập học hoặc chấm dứt việc học tập
              của sinh viên nếu phát hiện anh/chị cung cấp thông tin không chính
              xác hoặc thiếu sót. <br /><br />
              Nếu được trúng tuyển, thí sinh sẽ bắt buộc phải cung cấp đầy đủ
              các hồ sơ yêu cầu <br /><br />
            </p>
          </div>
        </td>
        <td>
          <p class="input-title">
            <strong>NOTE: </strong> Please note that USTH reserves the right to
            refuse admission or to terminate a student’s attendance should it be
            discovered that he/she has made a false statement or has omitted
            significant information. <br /><br />
            If you are selected, you will be required to provide evidence proof
            of your qualifications. <br /><br />
          </p>
        </td>
      </tr>
    </table>

    <p class="input-title" style="text-align: center">
      Đơn đăng ký dự tuyển và hồ sơ đăng ký dự tuyển nộp trực tiếp hoặc gửi qua
      đường bưu điện tại địa chỉ <br /><br />
      Application Form and Application Dossier shall be delivered in person or
      by post to:<br /><br />
      <strong
        >Phòng Quản lý Đào tạo - TRƯỜNG ĐẠI HỌC KHOA HỌC VÀ CÔNG NGHỆ HÀ NỘI
        (USTH)</strong
      ><br /><br />
      Phòng 102, Tầng 1, Tòa nhà A21, Viện Hàn Lâm Khoa học và Công nghệ Việt
      Nam<br /><br />
      18 Hoàng Quốc Việt, Cầu Giấy, Hà Nội <br /><br />
      Tel. / ĐT: +84-24-3791 7748<br /><br />
      Hotline: +84- 8-8855 7748<br /><br />
      Các hồ sơ không đầy đủ sẽ không được xem xét/ Incomplete applications will
      not be considered
    </p>

    <p
      class="input-title"
      style="text-align: center; padding-top: 3em; padding-bottom: 1em; font-weight: bold"
    >
      APPLICATION CHECKLIST / HỒ SƠ ỨNG TUYỂN BAO GỒM
    </p>
    <p class="input-title" style="padding-left: 2em">
      o Đơn đăng ký dự tuyển năm 2020, theo mẫu tải tại website của Trường điền
      đầy đủ thông tin và có dán ảnh 4x6/ Application Form for Bachelor Course
      Intake 2020 (available on USTH website): filled in and signed with 4x6
      portrait photo attached <br /><br />
      o Thư trình bày mục đích, nguyện vọng/ Motivation letter <br /><br />
      o Bản sao chứng minh thư nhân dân, căn cước hoặc hộ chiếu còn giá trị sử
      dụng/ Copy of ID card or password <br /><br />
      o Bản sao học bạ THPT. Điểm số không theo thang điểm 10 cần nộp một văn
      bản của cơ quan có thẩm quyền giải thích thang điểm áp dụng và/hoặc cách
      tính tương đương sang thang điểm 10/ Certified copy of High School
      Transcript. If the grading system is different than the 0-10 scale applied
      in Vietnam, a document explaining the applied grading system is
      required;<br /><br />
      o Bảng điểm học kỳ 1 lớp 12 (đồi với các thí sinh đang học lớp 12 và sẽ
      tốt nghiệp THPT năm 2020)/ Transcipt of 1st semester – grade 12 (for high
      school student at grade 12 and graduated in 2020) <br /><br />
      o Bản sao giấy báo kết quả thi THPT Quốc gia (đối với thí sinh đăng ký dự
      tuyển sau kỳ thi THPT Quốc gia hoặc đã tốt nghiệp THPT trước năm 2020)/
      Copy Official Certificate of National Exam Result (for Applicants
      graduated before 2020 or Applicants graduated in 2020 and interviewed
      after the National Exam)<br /><br />
      o Bản sao bằng tốt nghiệp THPT/Certified copy of High School Diploma
      <br /><br />
      o Giấy xác nhận sinh viên (cho thí sinh đang là sinh viên các trường Đại
      học khác)/ Student Certificate (for student of other university)
      <br /><br />
      o Bản sao chứng chỉ đánh giá năng lực Tiếng Anh, bằng khen, bằng chứng
      nhận thành tích học tập, học bổng, thư giới thiệu, v.v. (nếu có)/
      Certificate of merits, certificate of English, and letter of
      recommandation (if any)..<br /><br />
    </p>
  </div>
</template>

<script>
export default {
  props: {
    currentIdDetail: {
      type: String,
      default: "0"
    }
  },
  data() {
    return {
      currentId: "",
      student_id: "",
      address_id: "",
      studentData: {
        //Information Form
        full_name: "",
        id_number: "",
        id_date: "",
        id_place: "",
        DOB: "",
        gender: "",
        POB: "",
        nationality: "",
        ethnicity: "",
        mail_address: "",
        email: "",
        phone: "",
        home_phone: "",
        parent_phone: "",
        marital_status: "",
        user_id: "",
        jury_id: "",
        wave_id: ""
      },

      addressData: {
        house_number: "",
        street: "",
        ward: "",
        district: "",
        province: ""
      },

      academicHistoryData: {
        school_name: "",
        class: "",
        school_address: "",
        grade_mark_10: "",
        gpa_mark_10: "",
        maths_mark_10: "",
        physics_mark_10: "",
        chemistry_mark_10: "",
        biology_mark_10: "",
        it_mark_10: "",
        english_mark_10: "",

        grade_mark_11: "",
        gpa_mark_11: "",
        maths_mark_11: "",
        physics_mark_11: "",
        chemistry_mark_11: "",
        biology_mark_11: "",
        it_mark_11: "",
        english_mark_11: "",

        grade_mark_12: "",
        gpa_mark_12: "",
        maths_mark_12: "",
        physics_mark_12: "",
        chemistry_mark_12: "",
        biology_mark_12: "",
        it_mark_12: "",
        english_mark_12: "",

        english_certi: "",
        english_score: "",
        french_certi: "",
        french_score: "",
        viet_certi: "",
        viet_score: "",
        adward: ""
      },

      applicationData: {
        usth_applied: "",
        usth_applied_year: "",
        usth_applied_wave: "",
        diff_university_applied: "",
        diff_university_applied_year: "",
        diff_university_applied_mark: "",
        diff_university_applied_group: "",
        diff_university_applied_name: "",
        national_exam_student_number: "",
        national_exam_math_result: "",
        national_exam_physics_result: "",
        national_exam_chemistry_result: "",
        national_exam_biology_result: "",
        national_exam_english_result: "",
        first_training_program_id: "",
        second_training_program_id: "",
        third_training_program_id: "",
        fourth_training_program_id: "",
        motivation_letter: ""
      },
    };
  },

  created:function() {
      this.currentId = this.currentIdDetail;
      console.log("This is current user id from Detail:", this.currentId);
  },

  mounted: function(){
    this.getStudentData();
  },

  watch: {
    student_id: function(value){
      this.getAcademicHistoryData();
      this.getApplicationData();
    },
    address_id: function(value){
      this.getAddressData();
    }
  },

  methods: {
    async getStudentData() {
      try {
        const response = await this.$axios.get(
          "http://localhost/process.php?action=getStudentData",
          {
            params: {
              currentId:this.currentId
            }
          }
        );
        console.log("This is studentData response",response);
        // console.log(currentId);

        this.studentData = response.data.studentData[0]
        this.student_id = response.data.studentData[0].id
        this.address_id = response.data.studentData[0].address_id

        console.log("This is student id:", this.student_id)
        console.log("This is studentData: ", this.studentData);
        //console.log("This is student's name:", this.studentData.full_name);
      } catch (error) {
        console.error(error);
      }
    },
    async getAddressData() {
      try {
        const response = await this.$axios.get(
          "http://localhost/process.php?action=getAddressData",
          {
            params: {
              address_id: this.address_id
            }
          }
        );
        console.log("This is AddressData response",response);

        this.addressData = response.data.addressData[0];
        console.log("This is addressData: ", this.addressData);
      } catch (error) {
        console.error(error);
      }
    },
    async getAcademicHistoryData() {
      try {
        const response = await this.$axios.get(
          "http://localhost/process.php?action=getAcademicHistoryData",
          {
            params: {
              student_id: this.student_id
            }
          }
        );
        console.log("This is AcademicHistoryData: ",response);

        this.academicHistoryData = response.data.academicHistoryData[0];
        console.log("This is academicHistoryData: ", this.academicHistoryData);
      } catch (error) {
        console.error(error);
      }
    },
    async getApplicationData() {
      try {
        let response = await this.$axios.get(
          "http://localhost/process.php?action=getApplicationData",
          {
            params: {
              student_id: this.student_id
            }
          }
        )
        this.applicationData = response.data.applicationData[0];
        var application = response.data.applicationData[0]
          response = await this.$axios.get(
            "http://localhost:80/process.php?action=getTraningProgram", 
            {
              params: {
              'firstId': application.first_training_program_id,
              'secondId': application.second_training_program_id, 
              'thirdId': application.third_training_program_id, 
              'fourthId': application.fourth_training_program_id,
              }
            })
        var programResponse = response.data
        console.log("this is response program: ",programResponse);
        this.applicationData.first_training_program_id = programResponse.trainingProgram[0].name;
        this.applicationData.second_training_program_id = programResponse.trainingProgram[1].name;
        this.applicationData.third_training_program_id = programResponse.trainingProgram[2].name;
        this.applicationData.fourth_training_program_id = programResponse.trainingProgram[3].name;
        console.log("This is applicationData: ", this.applicationData); 

      } catch (error) {
        console.error(error);
      }
      
    }
  }
};
</script>

<style scoped>
h2 {
  margin-bottom: 30px;
}
.container {
  margin: 30px 100px 0px 100px;
  min-height: 100vh;
  /* display: block; */
  justify-content: center;
  align-items: center;
  text-align: left;
  padding: 50px 100px 50px 100px;
}

.input-title {
  font-size: 14px;
  color: #606266;
  /* font-weight: 300; */
}

.subtitle {
  font-weight: 450;
  font-size: 30px;
  color: #526488;
  word-spacing: 5px;
  padding-bottom: 15px;
  text-align: center;
  padding: 1em;
}

.part-container{
  padding-left: 1.5em;
}

.university-infor{
  font-size: 18px;
  color: #606266;
  text-align: center;
  margin-left: 7em;
}

.part-title{
  font-size: 17px;
  color: #606266;
  font-weight: 500;
  padding-top: 1em;
  padding-bottom: 1em;
}

table{
  margin-left: 3em;
}

img{
  margin-right: 5em;
}

.table-title{
  border-bottom: groove;
}


</style>
