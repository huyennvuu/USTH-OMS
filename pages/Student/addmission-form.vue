<template>
  <div class="container">
    <h2 class="subtitle">Addmission Form</h2>
    <el-form :label-position="labelPosition" ref="form" :model="form" label-width="100px">
      <!-- Add ava -->
      <el-form-item>
        <el-upload
          action="#"
          list-type="picture-card"
          :auto-upload="false"
          style="text-align:center">
            <i slot="default" class="el-icon-plus"></i>
            <div slot="file" slot-scope="{file}">
              <img
                class="el-upload-list__item-thumbnail"
                :src="file.url" alt=""
              >
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
        <el-dialog :visible.sync="dialogVisible">
          <img width="100%" :src="dialogImageUrl" alt="">
        </el-dialog>
      </el-form-item>
      
      <!-- Input Information -->
      <el-form-item label="1. Họ và tên/ Full name:">
        <el-input v-model="form.full_name"></el-input>
      </el-form-item>

      <el-form-item label="2. Số chứng minh thư nhân dân/ ID number:">
        <el-input v-model="form.ID_number"></el-input>
      </el-form-item>
      <el-form-item label="Ngày cấp:">
        <el-input v-model="form.ID_date"></el-input>
      </el-form-item>
      <el-form-item label="Nơi cấp:">
        <el-input v-model="form.ID_place"></el-input>
      </el-form-item>

      <el-form-item label="3. Ngày sinh/ Date of birth:">
        <el-input v-model="form.DoB"></el-input>
      </el-form-item>

      <el-form-item label="4. Giới tính/ Gender">
        <el-radio-group v-model="form.gender">
          <el-radio label="Nam/ Male" value="male"></el-radio>
          <el-radio label="Nữ/ Female" value="female"></el-radio>
        </el-radio-group>
      </el-form-item>

      <el-form-item label="5. Nơi sinh/ Place of birth:">
        <el-input v-model="form.DoB"></el-input>
      </el-form-item>

      <el-form-item label="6. Quốc tịch / Nationality:">
        <el-input v-model="form.nationality"></el-input>
      </el-form-item>

      <el-form-item label="7. Dân tộc/ Ethnicity:">
        <el-input v-model="form.ethnicity"></el-input>
      </el-form-item>

      <el-form-item label="8. Địa chỉ gửi thư/ Current mailing address for correspondence:">
        <el-input v-model="form.mail_address"></el-input>
      </el-form-item>

      <p class="input-title">9. Hộ khẩu thường trú/ Permanent Resident Address:</p> 
      <el-form-item label="Số nhà/ House No.:">
        <el-input v-model="form.house_number"></el-input>
      </el-form-item>
      
      <el-form-item label="Đường/ Street:">
        <el-input v-model="form.street"></el-input>
      </el-form-item>
      
      <el-form-item label="Phường,xã/ Ward, commune:">
        <el-input v-model="form.ward"></el-input>
      </el-form-item>

      <el-form-item label="Quận, huyện/ District:">
        <el-input v-model="form.district"></el-input>
      </el-form-item>

      <el-form-item label="Tỉnh, thành phố/ Province:">
        <el-input v-model="form.province"></el-input>
      </el-form-item>
      
      <el-form-item label="10. Di động/Mobile phone:">
        <el-input v-model="form.phone"></el-input>
      </el-form-item>

      <el-form-item label="11. E-mail:">
        <el-input v-model="form.email"></el-input>
      </el-form-item>

      <el-form-item label="12. Điện thoại/ Home phone:">
        <el-input v-model="form.home_phone"></el-input>
      </el-form-item>

      <el-form-item label="13. Số di động của bố, mẹ/ Parent’s mobile No:">
        <el-input v-model="form.parent_phone"></el-input>
      </el-form-item>

      <el-form-item label="14. Tình trạng hôn nhân/ Marital status:">
        <el-radio-group v-model="form.marital_status">
          <el-radio label="Độc thân/ Single" value="single"></el-radio>
          <el-radio label="Đã kết hôn/ Mariied" value="married"></el-radio>
        </el-radio-group>
      </el-form-item>
      
      <el-form-item label="15. Tên trường/ School name:">
        <el-input v-model="form.school_name"></el-input>
      </el-form-item>

      <el-form-item label="16. Lớp/ Class:">
        <el-input v-model="form.class_phone"></el-input>
      </el-form-item>

      <el-form-item label="17. Địa chỉ đầy đủ/ Address:">
        <el-input v-model="form.school_address"></el-input>
      </el-form-item>

      <p class="input-title">18. Kết quả học tập/ Result:</p>
      <br>
      <br>
      <table>
        <tr>
          <td class="input-title title-lang">Kết quả (theo Học bạ) Result</td>
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
              <el-input v-model="form.grade_mark_10"></el-input>
            </el-form-item>
          </td>
          <td>
            <el-form-item class="table-lang">
              <el-input v-model="form.gpa_mark_10"></el-input>
            </el-form-item>
          </td>
          <td>
            <el-form-item class="table-lang">
              <el-input v-model="form.grade_maths_10"></el-input>
            </el-form-item>
          </td>
          <td>
            <el-form-item class="table-lang">
              <el-input v-model="form.grade_physics_10"></el-input>
            </el-form-item>
          </td>
          <td>
            <el-form-item class="table-lang">
              <el-input v-model="form.grade_chemistry_10"></el-input>
            </el-form-item>
          </td>
          
          <td>
            <el-form-item class="table-lang">
              <el-input v-model="form.grade_biology_10"></el-input>
            </el-form-item>
          </td>
          
          <td>
            <el-form-item class="table-lang">
              <el-input v-model="form.grade_it_10"></el-input>
            </el-form-item>
          </td>
          
          <td>
            <el-form-item class="table-lang">
              <el-input v-model="form.grade_english_10"></el-input>
            </el-form-item>
          </td>
        </tr>
        
        <tr>
          <td class="input-title table-lang ">Lớp 11/ Grade 11</td>
          <td>
            <el-form-item class="table-lang">
              <el-input v-model="form.grade_mark_11"></el-input>
            </el-form-item>
          </td>
          <td>
            <el-form-item class="table-lang">
              <el-input v-model="form.gpa_mark_11"></el-input>
            </el-form-item>
          </td>
          <td>
            <el-form-item class="table-lang">
              <el-input v-model="form.grade_maths_11"></el-input>
            </el-form-item>
          </td>
          <td>
            <el-form-item class="table-lang">
              <el-input v-model="form.grade_physics_11"></el-input>
            </el-form-item>
          </td>
          <td>
            <el-form-item class="table-lang">
              <el-input v-model="form.grade_chemistry_11"></el-input>
            </el-form-item>
          </td>
          
          <td>
            <el-form-item class="table-lang">
              <el-input v-model="form.grade_biology_11"></el-input>
            </el-form-item>
          </td>
          
          <td>
            <el-form-item class="table-lang">
              <el-input v-model="form.grade_it_11"></el-input>
            </el-form-item>
          </td>
          
          <td>
            <el-form-item class="table-lang">
              <el-input v-model="form.grade_english_11"></el-input>
            </el-form-item>
          </td>
        </tr>

        <tr>
          <td class="input-title table-lang ">Lớp 12/ Grade 12</td>
          <td>
            <el-form-item class="table-lang">
              <el-input v-model="form.grade_mark_12"></el-input>
            </el-form-item>
          </td>
          <td>
            <el-form-item class="table-lang">
              <el-input v-model="form.gpa_mark_12"></el-input>
            </el-form-item>
          </td>
          <td>
            <el-form-item class="table-lang">
              <el-input v-model="form.grade_maths_12"></el-input>
            </el-form-item>
          </td>
          <td>
            <el-form-item class="table-lang">
              <el-input v-model="form.grade_physics_12"></el-input>
            </el-form-item>
          </td>
          <td>
            <el-form-item class="table-lang">
              <el-input v-model="form.grade_chemistry_12"></el-input>
            </el-form-item>
          </td>
          
          <td>
            <el-form-item class="table-lang">
              <el-input v-model="form.grade_biology_12"></el-input>
            </el-form-item>
          </td>
          
          <td>
            <el-form-item class="table-lang">
              <el-input v-model="form.grade_it_12"></el-input>
            </el-form-item>
          </td>

          <td>
            <el-form-item class="table-lang">
              <el-input v-model="form.grade_english_12"></el-input>
            </el-form-item>
          </td>
        </tr>
      </table>
      
      <br>
      <p class="input-title">* Với thí sinh sẽ tốt nghiệp năm 2020, nếu chưa có điểm trung bình năm lớp 12, vui lòng điền và ghi rõ điểm trung bình học kỳ 1 năm lớp 12/ For candidate who will graduate from high school in 2019, please clearly mention the average mark of the 1st semester of Grade 12 in case the mark for full year is not released</p>
      <br>

      <!-- Update Adward -->
      <p class="input-title"> 19. Các thành tích nổi bật (học bổng, giải thưởng …)/ Awards and Distinctions:
      <div class="upload-container">
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
      </div>

      <p class="input-title"> 20. Chứng chỉ (nếu có)/ Certificates (if any):</p>
      <table>
        <tr>
          <td class="input-title title-lang">Ngoại ngữ/ Languages</td>
          <td class="input-title title-lang">Chứng chỉ/ Certificate</td>
          <td class="input-title title-lang">Điểm/Score</td>
        </tr>
        <tr>
          <td class="input-title table-lang ">Tiếng Anh/ English</td>
          <td>
            <el-form-item class="table-lang">
              <el-input v-model="form.eng_certi"></el-input>
            </el-form-item>
          </td>
          <td>
            <el-form-item class="table-lang">
              <el-input v-model="form.eng_score"></el-input>
            </el-form-item>
          </td>
        </tr>
        <tr>
          <td class="input-title table-lang">French/ Tiếng Pháp</td>
          <td>
            <el-form-item class="table-lang">
              <el-input v-model="form.french_certi"></el-input>
            </el-form-item>
          </td>
          <td>
            <el-form-item class="table-lang">
              <el-input v-model="form.french_score"></el-input>
            </el-form-item>
          </td>
        </tr><tr>
          <td class="input-title table-lang">Tiếng Việt/ Vietnamese</td>
          <td>
            <el-form-item class="table-lang">
              <el-input v-model="form.viet_certi"></el-input>
            </el-form-item>
          </td>
          <td>
            <el-form-item class="table-lang">
              <el-input v-model="form.viet_score"></el-input>
            </el-form-item>
          </td>
        </tr>
      </table>

      <p class="input-title">24. Bạn đã từng đăng ký tham gia dự tuyển tại trường ĐH Khoa học và Công nghệ Hà Nội chưa?/ Have you ever applied for admissions to University of Science and Technology of Hanoi (USTH) before? </p>
        <br>
        <el-radio-group v-model="form.usth_applied">
          <el-radio label="Có/ Yes" value="true"></el-radio>
          <div class="container-flex">
            <el-form-item label="Năm/ Year">
              <el-input v-model="form.usth_applied_year"></el-input>
            </el-form-item>
            <el-form-item label="Đợt/ Wave">
              <el-input v-model="form.usth_applied_wave"></el-input>
            </el-form-item>
          </div>
          <el-radio label="Không/ No" value="false"></el-radio>
        </el-radio-group>
      
      <br><br><br>
      <p class="input-title"> 25. Trước đây bạn có từng đăng ký một trường Đại học nào khác không?/ Have you ever registered for any University else before?</p>
        <br>
        <el-radio-group v-model="form.diff_university_applied">
          <el-radio label="Có/ Yes" value="true"></el-radio>
          <div class="container-flex">
          <el-form-item  label="Năm/ Year:">
            <el-input v-model="form.diff_university_applied_year"></el-input>
          </el-form-item>
          <el-form-item label="Khối/ Group:">
            <el-input v-model="form.diff_university_applied_group"></el-input>
          </el-form-item>
          <el-form-item label="Điểm/ Mark:">
            <el-input v-model="form.diff_university_applied_mark"></el-input>
          </el-form-item>
          <el-form-item label="Tên trường/ University name:">
            <el-input v-model="form.diff_university_applied_mark"></el-input>
          </el-form-item>
          </div>
          <el-radio label="Không/ No" value="false"></el-radio>
        </el-radio-group>
        <el-form-item>
        <div class="container-button"> 
          <el-button class="button--grey" @click="submitForm('ruleForm')">Submit</el-button>
          <el-button class="button--green" @click="resetForm('ruleForm')">Reset</el-button>    
        </div>
        </el-form-item>
    </el-form>
  </div>
</template>


<script>
export default {
  data() {
    return {
      labelPosition: 'top',
      form: {
        //Update adward
        fileList: [{
          name: '',
          url: ''
        }], 

        //Add ava
        dialogImageUrl: '',
        dialogVisible: false,
        disabled: false,

        //Information Form
        full_name :'',
        id_number :'',
        id_date: '',
        id_place: '',
        dob: '',
        gender: '',
        pob: '',
        nationality: '',
        ethnicity: '',
        mail_adress: '',
        email: '',
        phone: '',
        home_phone:'',
        parent_phone:'',
        marital_status: '',

        school_name: '',
        class: '',
        school_address: '',
        grade_mark_10: '',
        gpa_mark_10: '',
        maths_mark_10: '',
        physics_mark_10: '',
        chemistry_mark_10: '',
        biology_mark_10: '',
        it_mark_10: '',
        english_mark_10: '',
        
        grade_mark_11: '',
        gpa_mark_11: '',
        maths_mark_11: '',
        physics_mark_11: '',
        chemistry_mark_11: '',
        biology_mark_11: '',
        it_mark_11: '',
        english_mark_11: '',
        
        grade_mark_12: '',
        gpa_mark_12: '',
        maths_mark_12: '',
        physics_mark_12: '',
        chemistry_mark_12: '',
        biology_mark_12: '',
        it_mark_12: '',
        english_mark_12: '',

        english_certi: '',
        english_score: '',
        french_certi: '',
        french_score: '',
        viet_certi: '',
        viet_score: '',

        usth_applied: '',
        usth_applied_year: '',
        usth_applied_wave: '',
        diff_university_applied: '',
        diff_university_applied_year: '',
        diff_university_applied_mark: '',
        diff_university_applied_group: '',
        diff_university_applied_name: '',
        national_exam_student_number: '',
        national_exam_math_result: '',
        national_exam_physics_result: '',
        national_exam_chemistry_result: '',
        national_exam_biology_result: '',
        national_exam_english_result: '',
        motivation_letter:'',
        adward: '',
      }
    }
  },
  methods: {

      //Submit Form
      submitForm(formName) {
        this.$refs[formName].validate((valid) => {
          if (valid) {
            alert('submit!');
          } else {
            console.log('error submit!!');
            return false;
          }
        });
      },
      resetForm(formName) {
        this.$refs[formName].resetFields();
      },
      
      //Update Adward
      handleRemove(file, fileList) {
        console.log(file, fileList);
      },
      handlePreview(file) {
        console.log(file);
      },
      handleExceed(files, fileList) {
        this.$message.warning(`The limit is 3, you selected ${files.length} files this time, add up to ${files.length + fileList.length} totally`);
      },
      beforeRemove(file, fileList) {
        return this.$confirm(`Cancel the transfert of ${ file.name } ?`);
      },

      //Add Ava
      handleRemove(file) {
        console.log(file);
      },
      handlePictureCardPreview(file) {
        this.dialogImageUrl = file.url;
        this.dialogVisible = true;
      },
      handleDownload(file) {
        console.log(file);
      }
    }
}
</script>

<style scoped>
  h2{
    margin-bottom: 30px;
  }
  .container {
  margin: 30px 100px 70px 100px;
  min-height: 100vh;
  display: block;
  justify-content: center; 
  align-items: center; 
  text-align: left;
  padding: 50px 100px 50px 100px;
  }

  .input-title {
    font-size: 14px;
    color:#606266;
  }

  .subtitle {
  font-weight: 300;
  font-size: 42px;
  color: #526488;
  word-spacing: 5px;
  padding-bottom: 15px;
  text-align: center;
  }

  .table-grade{
    position: relative;
    font-size: 14px;
    display: inline-block;
    width: 11%;
    text-align: center;
  }

  table-title{
    width: 100%;
    text-align: center;
    font-weight: bold;
    font-size: 18px;
    color:#606266;
  }

  .table-lang{
    position: relative;
    font-size: 14px;
    display: inline-block;
    width: 100%;
    text-align: center;
    padding: 10px;
    vertical-align: middle;
    align-items: center;
  }

  .title-lang{
    text-align: center;
    font-weight: bold;
    font-size: 15px;
  }
  
  .upload-container{
    padding: 20px 50px;
  }

  .container-flex{
    margin-left: 50px;
  }

  .container-button{
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
</style>