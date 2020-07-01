<template>
  <div class="container">
    <div>
      <table>
        <tr>
          <td>
            <img src="~/static/usth-logo.png" width="250" height="120" />
          </td>
          <td>
            <p class="university-infor">
              Trường Đại học Khoa học và Công nghệ Hà Nội
              <br />
              University of Science and Technology of Hanoi
            </p>
          </td>
        </tr>
      </table>
    </div>
    <h2 class="subtitle">
      ĐƠN ĐĂNG KÝ DỰ TUYỂN HỆ CỬ NHÂN NĂM 2020
      <br />
      APPLICATION FORM FOR BACHELOR COURSES INTAKE 2020
    </h2>
    <el-form
      :label-position="labelPosition"
      ref="studentData"
      :model="studentData"
      label-width="100px"
    >
      <!-- Add ava -->
      <!-- <el-form-item> -->
      <!-- <el-upload
          action="#"
          list-type="picture-card"
          :auto-upload="false"
          style="text-align:center"
        >
          <i slot="default" class="el-icon-plus"></i>
          <div slot="file" slot-scope="{ file }">
            <img
              class="el-upload-list__item-thumbnail"
              :src="file.url"
              alt=""
            />
            <span class="el-upload-list__item-actions">
              <span
                class="el-upload-list__item-preview"
                @click="handlePictureCardPreview(file)"
              >
                <i class="el-icon-zoom-in"></i>
              </span>
              <span
                v-if="!disabled"
                class="el-upload-list__item-delete"
                @click="handleDownload(file)"
              >
                <i class="el-icon-download"></i>
              </span>
              <span
                v-if="!disabled"
                class="el-upload-list__item-delete"
                @click="handleRemove(file)"
              >
                <i class="el-icon-delete"></i>
              </span>
            </span>
          </div>
        </el-upload>
        <! <el-dialog :visible.sync="dialogVisible">
          <img width="100%" :src="dialogImageUrl" alt="">
        </el-dialog> -->
      <!-- </el-form-item> -->

      <!-- Input Information -->
      <el-form-item label="1. Họ và tên/ Full name:">
        <el-input v-model="studentData.full_name"></el-input>
      </el-form-item>

      <el-form-item label="2. Số chứng minh thư nhân dân/ ID number:">
        <el-input v-model="studentData.id_number"></el-input>
      </el-form-item>
      <el-form-item label="Ngày cấp:">
        <el-input v-model="studentData.id_date"></el-input>
      </el-form-item>
      <el-form-item label="Nơi cấp:">
        <el-input v-model="studentData.id_place"></el-input>
      </el-form-item>

      <el-form-item label="3. Ngày sinh/ Date of birth:">
        <el-input v-model="studentData.dob"></el-input>
      </el-form-item>

      <el-form-item label="4. Giới tính/ Gender">
        <el-radio-group v-model="studentData.gender">
          <el-radio label="male">Nam/ Male</el-radio>
          <el-radio label="female">Nữ/ Female</el-radio>
        </el-radio-group>
      </el-form-item>

      <el-form-item label="5. Nơi sinh/ Place of birth:">
        <el-input v-model="studentData.pob"></el-input>
      </el-form-item>

      <el-form-item label="6. Quốc tịch / Nationality:">
        <el-input v-model="studentData.nationality"></el-input>
      </el-form-item>

      <el-form-item label="7. Dân tộc/ Ethnicity:">
        <el-input v-model="studentData.ethnicity"></el-input>
      </el-form-item>

      <el-form-item
        label="8. Địa chỉ gửi thư/ Current mailing address for correspondence:"
      >
        <el-input v-model="studentData.mail_address"></el-input>
      </el-form-item>

      <el-form-item label="9. Di động/Mobile phone:">
        <el-input v-model="studentData.phone"></el-input>
      </el-form-item>

      <el-form-item label="11. Điện thoại/ Home phone:">
        <el-input v-model="studentData.home_phone"></el-input>
      </el-form-item>

      <el-form-item label="12. Số di động của bố, mẹ/ Parent’s mobile No:">
        <el-input v-model="studentData.parent_phone"></el-input>
      </el-form-item>

      <el-form-item label="13. Tình trạng hôn nhân/ Marital status:">
        <el-radio-group v-model="studentData.marital_status">
          <el-radio label="single">Độc thân/ Single</el-radio>
          <el-radio label="married">Đã kết hôn/ Mariied</el-radio>
        </el-radio-group>
      </el-form-item>
    </el-form>

    <el-form
      :label-position="labelPosition"
      ref="addressData"
      :model="addressData"
      label-width="100px"
    >
      <p class="input-title">
        14. Hộ khẩu thường trú/ Permanent Resident Address:
      </p>
      <el-form-item label="Số nhà/ House No.:">
        <el-input v-model="addressData.house_number"></el-input>
      </el-form-item>

      <el-form-item label="Đường/ Street:">
        <el-input v-model="addressData.street"></el-input>
      </el-form-item>

      <el-form-item label="Phường,xã/ Ward, commune:">
        <el-input v-model="addressData.ward"></el-input>
      </el-form-item>

      <el-form-item label="Quận, huyện/ District:">
        <el-input v-model="addressData.district"></el-input>
      </el-form-item>

      <el-form-item label="Tỉnh, thành phố/ Province:">
        <el-input v-model="addressData.province"></el-input>
      </el-form-item>
    </el-form>

    <el-form
      :label-position="labelPosition"
      ref="academicHistoryData"
      :model="academicHistoryData"
      label-width="100px"
    >
      <el-form-item label="15. Tên trường/ School name:">
        <el-input v-model="academicHistoryData.school_name"></el-input>
      </el-form-item>

      <el-form-item label="16. Lớp/ Class:">
        <el-input v-model="academicHistoryData.class"></el-input>
      </el-form-item>

      <el-form-item label="17. Địa chỉ đầy đủ/ Address:">
        <el-input v-model="academicHistoryData.school_address"></el-input>
      </el-form-item>

      <p class="input-title">18. Kết quả học tập/ Result:</p>
      <br />
      <br />
      <table>
        <tr>
          <td class="input-title title-lang">Kết quả (theo Học bạ) Result</td>
          <td class="input-title title-lang">Xếp loại/ Grade</td>
          <td class="input-title title-lang">ĐTB năm/ Final GPA</td>
          <td class="input-title title-lang">Toán/ Maths</td>
          <td class="input-title title-lang">Vật lý/ Physics</td>
          <td class="input-title title-lang">Hóa học/ Chemistry</td>
          <td class="input-title title-lang">Sinh học/ Biology</td>
          <td class="input-title title-lang">Tin học/ IT</td>
          <td class="input-title title-lang">Tiếng Anh/ English</td>
        </tr>
        <tr>
          <td class="input-title table-lang ">Lớp 10/ Grade 10</td>
          <td>
            <el-form-item class="table-lang">
              <el-input v-model="academicHistoryData.grade_mark_10"></el-input>
            </el-form-item>
          </td>
          <td>
            <el-form-item class="table-lang">
              <el-input v-model="academicHistoryData.gpa_mark_10"></el-input>
            </el-form-item>
          </td>
          <td>
            <el-form-item class="table-lang">
              <el-input v-model="academicHistoryData.maths_mark_10"></el-input>
            </el-form-item>
          </td>
          <td>
            <el-form-item class="table-lang">
              <el-input
                v-model="academicHistoryData.physics_mark_10"
              ></el-input>
            </el-form-item>
          </td>
          <td>
            <el-form-item class="table-lang">
              <el-input
                v-model="academicHistoryData.chemistry_mark_10"
              ></el-input>
            </el-form-item>
          </td>

          <td>
            <el-form-item class="table-lang">
              <el-input
                v-model="academicHistoryData.biology_mark_10"
              ></el-input>
            </el-form-item>
          </td>

          <td>
            <el-form-item class="table-lang">
              <el-input v-model="academicHistoryData.it_mark_10"></el-input>
            </el-form-item>
          </td>

          <td>
            <el-form-item class="table-lang">
              <el-input
                v-model="academicHistoryData.english_mark_10"
              ></el-input>
            </el-form-item>
          </td>
        </tr>

        <tr>
          <td class="input-title table-lang ">Lớp 11/ Grade 11</td>
          <td>
            <el-form-item class="table-lang">
              <el-input v-model="academicHistoryData.grade_mark_11"></el-input>
            </el-form-item>
          </td>
          <td>
            <el-form-item class="table-lang">
              <el-input v-model="academicHistoryData.gpa_mark_11"></el-input>
            </el-form-item>
          </td>
          <td>
            <el-form-item class="table-lang">
              <el-input v-model="academicHistoryData.maths_mark_11"></el-input>
            </el-form-item>
          </td>
          <td>
            <el-form-item class="table-lang">
              <el-input
                v-model="academicHistoryData.physics_mark_11"
              ></el-input>
            </el-form-item>
          </td>
          <td>
            <el-form-item class="table-lang">
              <el-input
                v-model="academicHistoryData.chemistry_mark_11"
              ></el-input>
            </el-form-item>
          </td>

          <td>
            <el-form-item class="table-lang">
              <el-input
                v-model="academicHistoryData.biology_mark_11"
              ></el-input>
            </el-form-item>
          </td>

          <td>
            <el-form-item class="table-lang">
              <el-input v-model="academicHistoryData.it_mark_11"></el-input>
            </el-form-item>
          </td>

          <td>
            <el-form-item class="table-lang">
              <el-input
                v-model="academicHistoryData.english_mark_11"
              ></el-input>
            </el-form-item>
          </td>
        </tr>

        <tr>
          <td class="input-title table-lang ">Lớp 12/ Grade 12</td>
          <td>
            <el-form-item class="table-lang">
              <el-input v-model="academicHistoryData.grade_mark_12"></el-input>
            </el-form-item>
          </td>
          <td>
            <el-form-item class="table-lang">
              <el-input v-model="academicHistoryData.gpa_mark_12"></el-input>
            </el-form-item>
          </td>
          <td>
            <el-form-item class="table-lang">
              <el-input v-model="academicHistoryData.maths_mark_12"></el-input>
            </el-form-item>
          </td>
          <td>
            <el-form-item class="table-lang">
              <el-input
                v-model="academicHistoryData.physics_mark_12"
              ></el-input>
            </el-form-item>
          </td>
          <td>
            <el-form-item class="table-lang">
              <el-input
                v-model="academicHistoryData.chemistry_mark_12"
              ></el-input>
            </el-form-item>
          </td>

          <td>
            <el-form-item class="table-lang">
              <el-input
                v-model="academicHistoryData.biology_mark_12"
              ></el-input>
            </el-form-item>
          </td>

          <td>
            <el-form-item class="table-lang">
              <el-input v-model="academicHistoryData.it_mark_12"></el-input>
            </el-form-item>
          </td>

          <td>
            <el-form-item class="table-lang">
              <el-input
                v-model="academicHistoryData.english_mark_12"
              ></el-input>
            </el-form-item>
          </td>
        </tr>
      </table>

      <br />
      <p class="input-title">
        * Với thí sinh sẽ tốt nghiệp năm 2020, nếu chưa có điểm trung bình năm
        lớp 12, vui lòng điền và ghi rõ điểm trung bình học kỳ 1 năm lớp 12/ For
        candidate who will graduate from high school in 2019, please clearly
        mention the average mark of the 1st semester of Grade 12 in case the
        mark for full year is not released
      </p>
      <br />

      <!-- Update Adward -->
      <p class="input-title">
        19. Các thành tích nổi bật (học bổng, giải thưởng …)/ Awards and
        Distinctions:
      </p>
      <!-- <el-upload></el-upload>
      <input
        type="file"
        id="file"
        ref="file"
        v-on:change="onChangeFileUpload()"
      />
      <button v-on:click="submitForm()">Upload</button>
      
      <br /><br /> -->

      <!-- <div class="upload-container">
        <el-upload
          class="upload-demo"
          action="https://jsonplaceholder.typicode.com/posts/"
          :on-preview="handlePreview"
          :on-remove="handleRemove"
          :before-remove="beforeRemove"
          multiple
          :limit="3"
          :on-exceed="handleExceed"
          :file-list="fileList">
          <el-button class="button--grey">Click to upload</el-button>
          <div slot="tip" class="el-upload__tip">jpg/png files with a size less than 500kb</div>
        </el-upload>
        </div> -->

      <p class="input-title">20. Chứng chỉ (nếu có)/ Certificates (if any):</p>
      <table style="padding-left: 7em">
        <tr>
          <td class="input-title title-lang">Ngoại ngữ/ Languages</td>
          <td class="input-title title-lang">Chứng chỉ/ Certificate</td>
          <td class="input-title title-lang">Điểm/Score</td>
        </tr>
        <tr>
          <td class="input-title table-lang ">Tiếng Anh/ English</td>
          <td>
            <el-form-item class="table-lang">
              <el-input v-model="academicHistoryData.english_certi"></el-input>
            </el-form-item>
          </td>
          <td>
            <el-form-item class="table-lang">
              <el-input v-model="academicHistoryData.english_score"></el-input>
            </el-form-item>
          </td>
        </tr>
        <tr>
          <td class="input-title table-lang">French/ Tiếng Pháp</td>
          <td>
            <el-form-item class="table-lang">
              <el-input v-model="academicHistoryData.french_certi"></el-input>
            </el-form-item>
          </td>
          <td>
            <el-form-item class="table-lang">
              <el-input v-model="academicHistoryData.french_score"></el-input>
            </el-form-item>
          </td>
        </tr>
        <tr>
          <td class="input-title table-lang">Tiếng Việt/ Vietnamese</td>
          <td>
            <el-form-item class="table-lang">
              <el-input v-model="academicHistoryData.viet_certi"></el-input>
            </el-form-item>
          </td>
          <td>
            <el-form-item class="table-lang">
              <el-input v-model="academicHistoryData.viet_score"></el-input>
            </el-form-item>
          </td>
        </tr>
      </table>
    </el-form>

    <el-form
      :label-position="labelPosition"
      ref="applicationData"
      :model="applicationData"
      label-width="100px"
    >
      <p class="input-title">
        24. Bạn đã từng đăng ký tham gia dự tuyển tại trường ĐH Khoa học và Công
        nghệ Hà Nội chưa?/ Have you ever applied for admissions to University of
        Science and Technology of Hanoi (USTH) before?
      </p>
      <br />
      <el-radio-group v-model="applicationData.usth_applied">
        <el-radio label="true">Có/ Yes</el-radio>
        <div
          v-if="applicationData.usth_applied == 'true'"
          class="container-flex"
        >
          <el-form-item label="Năm/ Year">
            <el-input v-model="applicationData.usth_applied_year"></el-input>
          </el-form-item>
          <el-form-item label="Đợt/ Wave">
            <el-input v-model="applicationData.usth_applied_wave"></el-input>
          </el-form-item>
        </div>
        <el-radio label="false">Không/ No</el-radio>
      </el-radio-group>

      <br /><br /><br />
      <p class="input-title">
        25. Trước đây bạn có từng đăng ký một trường Đại học nào khác không?/
        Have you ever registered for any University else before?
      </p>
      <br />
      <el-radio-group v-model="applicationData.diff_university_applied">
        <el-radio label="true">Có/ Yes</el-radio>
        <div
          v-if="applicationData.diff_university_applied == 'true'"
          class="container-flex"
        >
          <el-form-item label="Năm/ Year:">
            <el-input
              v-model="applicationData.diff_university_applied_year"
            ></el-input>
          </el-form-item>
          <el-form-item label="Khối/ Group:">
            <el-input
              v-model="applicationData.diff_university_applied_group"
            ></el-input>
          </el-form-item>
          <el-form-item label="Điểm/ Mark:">
            <el-input
              v-model="applicationData.diff_university_applied_mark"
            ></el-input>
          </el-form-item>
          <el-form-item label="Tên trường/ University name:">
            <el-input
              v-model="applicationData.diff_university_applied_mark"
            ></el-input>
          </el-form-item>
        </div>
        <el-radio label="false">Không/ No</el-radio>
      </el-radio-group>

      <br /><br /><br />
      <p class="input-title">
        26. Thông tin về kỳ thi THPT Quốc Gia dành cho thí sinh thi tốt nghiệp
        trước năm 2020/ National Exam Information for student graduated before
        2020:(thí sinh đang học lớp 12 hoặc theo học chương trình quốc tế không
        phải điền mục này/Student who is studying in grade 12 or international
        program do not have to fill this part)
      </p>

      <el-form-item class="part-input" label="Số báo danh/ Student Exam No.">
        <el-input
          v-model="applicationData.national_exam_student_number"
        ></el-input>
      </el-form-item>

      <table>
        <tr>
          <td class="part-input">
            <el-form-item label="Toán/ Mathematics">
              <el-input
                v-model="applicationData.national_exam_math_result"
              ></el-input>
            </el-form-item>
          </td>
          <td class="part-input">
            <el-form-item label="Vật lý/ Physics">
              <el-input
                v-model="applicationData.national_exam_physics_result"
              ></el-input>
            </el-form-item>
          </td>
          <td class="part-input">
            <el-form-item label="Hóa học/ Chemistry">
              <el-input
                v-model="applicationData.national_exam_chemistry_result"
              ></el-input>
            </el-form-item>
          </td>
          <td class="part-input">
            <el-form-item label="Sinh học/ Biology">
              <el-input
                v-model="applicationData.national_exam_biology_result"
              ></el-input>
            </el-form-item>
          </td>
          <td class="part-input">
            <el-form-item label="Tiếng Anh/ English">
              <el-input
                v-model="applicationData.national_exam_english_result"
              ></el-input>
            </el-form-item>
          </td>
        </tr>
      </table>

      <p class="input-title" style="padding-left: 1em">
        Ngành học xếp theo thứ tự ưu tiên/ Training Program in order of priority
      </p>
      <div class="part-input">
        <p class="input-title">1<sup>st</sup>:</p>
        <br />
        <el-select
          v-model="applicationData.first_training_program_id"
          placeholder="First Program"
        >
          <el-option
            v-for="item in options"
            :key="item.value"
            :label="item.label"
            :value="item.value"
          >
          </el-option>
        </el-select>
        <br /><br />

        <p class="input-title">2<sup>nd</sup>:</p>
        <br />
        <el-select
          v-model="applicationData.second_training_program_id"
          placeholder="Second Program"
        >
          <el-option
            v-for="item in options"
            :key="item.value"
            :label="item.label"
            :value="item.value"
            :disabled="item.disabled"
          >
          </el-option>
        </el-select>
        <br /><br />

        <p class="input-title">3<sup>th</sup>:</p>
        <br />
        <el-select
          v-model="applicationData.third_training_program_id"
          placeholder="Third Program"
        >
          <el-option
            v-for="item in options"
            :key="item.value"
            :label="item.label"
            :value="item.value"
            :disabled="item.disabled"
          >
          </el-option>
        </el-select>
        <br /><br />

        <p class="input-title">4<sup>th</sup>:</p>
        <br />
        <el-select
          v-model="applicationData.fourth_training_program_id"
          placeholder="Fourth Program"
        >
          <el-option
            v-for="item in options"
            :key="item.value"
            :label="item.label"
            :value="item.value"
            :disabled="item.disabled"
          >
          </el-option>
        </el-select>
      </div>
      <br />
      <p class="input-title national_exam_table">
        <strong>Lưu ý/ Note: </strong>
        <br />
        (*) Đối với các ngành không đủ số lượng sinh viên theo điều kiện mở
        ngành thì sinh viên sẽ được chuyển nguyện vọng sang các ngành theo thứ
        tự đã đăng ký (trừ ngành Kỹ thuật Hàng không). For program which does
        not recruit enough students as the regulation, student will be
        transferred to other program in the order of registration (except for
        Aeronautical maintenance and Engineering program).
        <br />
        (**) Do đặc thù của chương trình đào tạo nên thí sinh có nguyện vọng học
        ngành Kỹ thuật Hàng không thì thứ tự ưu tiên số 1 bắt buộc phải là ngành
        Kỹ thuật hàng không. Students who apply for Aeronautical maintenance and
        Engineering program must select Aeronautical Engineering program as the
        1 st priority.
      </p>

      <br /><br />
      <p class="input-title" style="text-align: center; font-weight: bold">
        CAM KẾT CỦA ỨNG VIÊN/ CERTIFICATION OF ACCURACY
      </p>
      <div style="padding-top: 1em; text-align: center ">
        <p class="input-title">
          Tôi cam đoan rằng toàn bộ thông tin trong bản đăng ký đính kèm là hoàn
          toàn chính xác và đầy đủ, và có thể được kiểm chứng bằng văn bản
          gốc.<br />
        </p>
        <p class="input-title">
          I certify that all information included with the application is
          accurate and complete, and may be verified with an original
          document/official source.
        </p>
      </div>

      <table>
        <tr>
          <td>
            <div style="padding: 2em">
              <p class="input-title">
                <strong>LƯU Ý:</strong> Xin lưu ý rằng ĐHKHCNHN hoàn toàn có
                quyền từ chối không cho sinh viên nhập học hoặc chấm dứt việc
                học tập của sinh viên nếu phát hiện anh/chị cung cấp thông tin
                không chính xác hoặc thiếu sót. <br />
                Nếu được trúng tuyển, thí sinh sẽ bắt buộc phải cung cấp đầy đủ
                các hồ sơ yêu cầu <br />
              </p>
            </div>
          </td>
          <td>
            <p class="input-title">
              <strong>NOTE: </strong> Please note that USTH reserves the right
              to refuse admission or to terminate a student’s attendance should
              it be discovered that he/she has made a false statement or has
              omitted significant information. <br />
              If you are selected, you will be required to provide evidence
              proof of your qualifications. <br />
            </p>
          </td>
        </tr>
      </table>

      <p class="input-title" style="text-align: center">
        Đơn đăng ký dự tuyển và hồ sơ đăng ký dự tuyển nộp trực tiếp hoặc gửi
        qua đường bưu điện tại địa chỉ <br />
        Application Form and Application Dossier shall be delivered in person or
        by post to:<br />
        <strong
          >Phòng Quản lý Đào tạo - TRƯỜNG ĐẠI HỌC KHOA HỌC VÀ CÔNG NGHỆ HÀ NỘI
          (USTH)</strong
        ><br />
        Phòng 102, Tầng 1, Tòa nhà A21, Viện Hàn Lâm Khoa học và Công nghệ Việt
        Nam<br />
        <br />
        18 Hoàng Quốc Việt, Cầu Giấy, Hà Nội <br />
        Tel. / ĐT: +84-24-3791 7748<br />
        Hotline: +84- 8-8855 7748<br />
        Các hồ sơ không đầy đủ sẽ không được xem xét/ Incomplete applications
        will not be considered
      </p>

      <p
        class="input-title"
        style="text-align: center; padding-top: 3em; padding-bottom: 1em; font-weight: bold"
      >
        APPLICATION CHECKLIST / HỒ SƠ ỨNG TUYỂN BAO GỒM
      </p>
      <p class="input-title" style="padding-left: 2em">
        o Đơn đăng ký dự tuyển năm 2020, theo mẫu tải tại website của Trường
        điền đầy đủ thông tin và có dán ảnh 4x6/ Application Form for Bachelor
        Course Intake 2020 (available on USTH website): filled in and signed
        with 4x6 portrait photo attached <br />
        o Thư trình bày mục đích, nguyện vọng/ Motivation letter <br />
        o Bản sao chứng minh thư nhân dân, căn cước hoặc hộ chiếu còn giá trị sử
        dụng/ Copy of ID card or password <br />
        o Bản sao học bạ THPT. Điểm số không theo thang điểm 10 cần nộp một văn
        bản của cơ quan có thẩm quyền giải thích thang điểm áp dụng và/hoặc cách
        tính tương đương sang thang điểm 10/ Certified copy of High School
        Transcript. If the grading system is different than the 0-10 scale
        applied in Vietnam, a document explaining the applied grading system is
        required;<br />
        o Bảng điểm học kỳ 1 lớp 12 (đồi với các thí sinh đang học lớp 12 và sẽ
        tốt nghiệp THPT năm 2020)/ Transcipt of 1st semester – grade 12 (for
        high school student at grade 12 and graduated in 2020) <br />
        o Bản sao giấy báo kết quả thi THPT Quốc gia (đối với thí sinh đăng ký
        dự tuyển sau kỳ thi THPT Quốc gia hoặc đã tốt nghiệp THPT trước năm
        2020)/ Copy Official Certificate of National Exam Result (for Applicants
        graduated before 2020 or Applicants graduated in 2020 and interviewed
        after the National Exam)<br />
        o Bản sao bằng tốt nghiệp THPT/Certified copy of High School Diploma
        <br />
        o Giấy xác nhận sinh viên (cho thí sinh đang là sinh viên các trường Đại
        học khác)/ Student Certificate (for student of other university) <br />
        o Bản sao chứng chỉ đánh giá năng lực Tiếng Anh, bằng khen, bằng chứng
        nhận thành tích học tập, học bổng, thư giới thiệu, v.v. (nếu có)/
        Certificate of merits, certificate of English, and letter of
        recommandation (if any)..<br />
      </p>
      <el-form-item>
        <div class="container-button">
          <el-button
            class="button--grey"
            @click="
              AddStudent();
              AddAddress();
              AddAcademicHistory();
              AddApplicationInfo();
              sendDetail()
            "
            >Submit</el-button
          >
        </div>
      </el-form-item>
    </el-form>
  </div>
</template>

<script>
export default {
  props: {
    currentIdAdmission: {
      type: String,
      default: "0"
    }
  },

  data() {
    return {

      labelPosition: "top",
      options:[{
        value: '1',
        label: 'Công nghệ Sinh học nông y dược/ Pharmacological, Medical and Agronomical Biotechnologyption'
      },
      {
        value: '2',
        label: 'Công nghệ Thông tin và Truyền thông/ Information and Communication Technology'
      },
      {
        value: '3',
        label: 'Khoa học Vật liệu tiên tiến và Công nghệ Nano/ Advanced Materials Science and Nanotechnology'
      },
      {
        value: '4',
        label: 'Vũ trụ và ứng dụng/ Space and Applications'
      },
      {
        value: '5',
        label: 'Kỹ thuật điện và Năng lượng tái tạo/ Electrical Engineering and Renewable Energy'
      },
      {
        value: '6',
        label: 'Nước – Môi trường – Hải dương học/ Water - Environment – Oceanography'
      },
      {
        value: '7',
        label: 'Khoa học và Công nghệ thực phẩm/ Food Science and Technology'
      },
      {
        value: '8',
        label: 'Khoa học và Công nghệ Y khoa/ Medical Science and Technology'
      },
      {
        value: '9',
        label: 'An toàn thông tin/ Cyber Security'
      },
      {
        value: '10',
        label: 'Hóa học/ Chemistry'
      },
      {
        value: '11',
        label: 'Toán ứng dụng/ Applied Mathematics'
      },
      {
        value: '12',
        label: 'Vật lý kỹ thuật và điện tử/ Engineering Physics and Electronics'
      },
      {
        value: '13',
        label: 'Bảo trì và Kỹ thuật hàng không/ Aeronautical maintenance Engineering',
        disabled: true
      },
      {
        value: '14',
        label: 'Công nghệ kỹ thuật cơ điện tử/ Mechatronics Engineering Technology'
      },
      ],
      studentData: {
        //Update adward
        // fileList: [
        //   {
        //     name: "",
        //     url: ""
        //   }
        // ],

        //Add ava
        // dialogImageUrl: '',
        // dialogVisible: false,
        // disabled: false,

        //Information Form
        full_name: "",
        id_number: "",
        id_date: "",
        id_place: "",
        dob: "",
        gender: "",
        pob: "",
        nationality: "",
        ethnicity: "",
        mail_address: "",
        phone: "",
        home_phone: "",
        parent_phone: "",
        marital_status: "",
        address_id: "4",
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
          student_id: "",
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
          student_id: "",
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
          motivation_letter: "",
        }
      }
    },

  // watch: {
  //   currentIdAdmission: function(){
  //     this.studentData.user_id = this.currentIdAdmission
  //     console.log( "Changed", this.currentIdAdmission)
  //     this.getStudentId()
  //   },
  // },


  created:function() {
    this.getWave()
    this.studentData.user_id = this.currentIdAdmission
    this.getStudentId()
  },

  methods: {
    // //Submit Form
    // toForm(obj){
    //   var fd = new FormData();
    //   for(var i in obj){
    //     fd.append(this.academicHistoryDatakeys[i], obj[i]);
    //     console.log("obj: ", this.academicHistoryDatakeys[i]);
    //   }
    //   return fd;
    // },
    async getWave() {
      try {
        const response = await this.$axios.get(
          "http://localhost/process.php?action=getWave"
        );
        //console.log(response);

        this.studentData.wave_id = response.data.waveId[0].id;
        //console.log("This is current wave id: ", this.studentData.wave_id);
      } catch (error) {
        console.error(error);
      }
    },

    AddStudent() {

      this.$axios.post("http://localhost:80/process.php?action=AddStudent", this.studentData)
      .then(function (response) {
        //console.log("this is response Student: ",response.data);
      })
      .catch(function (error) {
        console.log("this is error: ",error.data);
      });
    },

    AddAddress() {

      this.$axios.post("http://localhost:80/process.php?action=AddAddress", this.addressData)
      .then(function (response) {
        //console.log("this is response Address: ",response.data);
      })
      .catch(function (error) {
        console.log("this is error of Address: ",error.data);
      });
    },
    AddAcademicHistory() {

      this.$axios.post("http://localhost:80/process.php?action=AddAcademicHistory", this.academicHistoryData)
      .then(function (responcse) {

        //console.log("this is response Academic History: ", response.data);
      })
      .catch(function (error) {
        console.log("Full response: ", error);
        console.log("this is error of Academic History: ",error.data);
      });
    },
    AddApplicationInfo() {

      this.$axios.post("http://localhost:80/process.php?action=AddApplicationInformation", this.applicationData)
      .then(function (response) {
        //console.log("this is response Application: ",response.data);
      })
      .catch(function (error) {
        console.log("this is error of Application: ",error.data);
      });
    },

    // submitForm(){
    //   let formData = new FormData();
    //     formData.append('file', this.file);

    //       this.axios.post('http://localhost:3000/api.php',
    //         formData,
    //           {
    //             headers: {
    //               'Content-Type': 'multipart/form-data'
    //             }
    //           }
    //         ).then(function(data){
    //           console.log(data.data);
    //         })
    //         .catch(function(){
    //           console.log('FAILURE!!');
    //         });
    // },

    // onChangeFileUpload(){
    //     this.file = this.$refs.file.files[0];
    // },

    async getStudentId() {
      try {
        const response = await this.$axios.get(
          "http://localhost/process.php?action=getStudentId",
          {
            params: {
              currentIdAdmission: this.currentIdAdmission
            }
          }
        );
        //console.log("This student id is:", response.data.studentId[0].id)
        this.academicHistoryData.student_id = response.data.studentId[0].id;
        this.applicationData.student_id = response.data.studentId[0].id;
      } catch (error) {
        console.error(error);
      }
    },

    sendDetail(){
      this.$emit('sendDetail', 'studentDetail');
    },
  }
}
</script>

<style scoped>
h2 {
  margin-bottom: 30px;
}
.container {
  margin: 30px 80px 70px 80px;
  min-height: 100vh;
  display: block;
  justify-content: center;
  align-items: center;
  text-align: left;
  padding: 50px 100px 50px 100px;
}

.input-title {
  font-size: 14px;
  color: #606266;
}

.subtitle {
  font-weight: 300;
  font-size: 35px;
  color: #526488;
  word-spacing: 5px;
  padding-bottom: 2em;
  padding-top: 2em;
  text-align: center;
}

.table-grade {
  position: relative;
  font-size: 14px;
  display: inline-block;
  width: 11%;
  text-align: center;
}

table-title {
  width: 100%;
  text-align: center;
  font-weight: bold;
  font-size: 18px;
  color: #606266;
}

.table-lang {
  position: relative;
  font-size: 14px;
  display: inline-block;
  width: 100%;
  text-align: center;
  padding: 10px;
  vertical-align: middle;
  align-items: center;
}

.title-lang {
  text-align: center;
  font-weight: bold;
  font-size: 15px;
}

.upload-container {
  padding: 20px 50px;
}

.container-flex {
  margin-left: 50px;
}

.container-button {
  float: right;
  margin: 20px;
}

.button--green {
  display: inline-block;
  border-radius: 4px;
  border: 1px solid #3b8070;
  color: #3b8070;
  text-decoration: none;
  padding: 20px 50px;
}

.button--green:hover {
  color: #fff;
  background-color: #3b8070;
}

.button--grey {
  display: inline-block;
  border-radius: 4px;
  border: 1px solid #35495e;
  color: #35495e;
  text-decoration: none;
  padding: 20px 50px;
  margin-left: 15px;
}

.button--grey:hover {
  color: #fff;
  background-color: #35495e;
}

.part-title {
  padding: 2em;
}

.university-infor {
  font-size: 18px;
  color: #606266;
  text-align: center;
  margin-left: 18em;
}
</style>
