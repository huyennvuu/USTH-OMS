<template>
  <div class="container">
    <!-- <h2 class="subtitle">Addmission Form</h2> -->
    <el-form :label-position="labelPosition" ref="form" :model="form" label-width="100px">

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
          <td></td>
          <td class="input-title table-grade table-title">Xếp loại/ Grade</td>
          <td class="input-title table-grade table-title">ĐTB năm/ Final GPA</td>
          <td class="input-title table-grade table-title">Toán/ Maths</td>
          <td class="input-title table-grade table-title">Vật lý/ Physics</td>
          <td class="input-title table-grade table-title">Hóa học/ Chemistry</td>
          <td class="input-title table-grade table-title">Sinh học/ Biology</td>
          <td class="input-title table-grade table-title">Tin học/ IT</td>
          <td class="input-title table-grade table-title">Tiếng Anh/ English</td>
        </tr>
        <tr>
          <td class="input-title table-grade table-title"> Lớp 10/ Grade 10 </td>
          <td>
            <el-form-item class="table-grade">
              <el-input v-model="form.grade_mark_10"></el-input>
            </el-form-item>
            <el-form-item class="table-grade">
              <el-input v-model="form.gpa_mark_10"></el-input>
            </el-form-item>
            <el-form-item class="table-grade">
              <el-input v-model="form.grade_math_10"></el-input>
            </el-form-item>
            <el-form-item class="table-grade">
              <el-input v-model="form.grade_physics_10"></el-input>
            </el-form-item>
            <el-form-item class="table-grade">
              <el-input v-model="form.grade_chemistry_10"></el-input>
            </el-form-item>
            <el-form-item class="table-grade">
              <el-input v-model="form.grade_biology_10"></el-input>
            </el-form-item>
            <el-form-item class="table-grade">
              <el-input v-model="form.grade_it_10"></el-input>
            </el-form-item>
            <el-form-item class="table-grade">
              <el-input v-model="form.grade_english_10"></el-input>
            </el-form-item>
          </td>
        </tr>
        <tr>
          <td class="input-title table-grade table-title"> Lớp 11/ Grade 11:</td>
          <td>
            <el-form-item class="table-grade">
              <el-input v-model="form.grade_mark_11"></el-input>
            </el-form-item>
            <el-form-item class="table-grade">
              <el-input v-model="form.gpa_mark_11"></el-input>
            </el-form-item>
            <el-form-item class="table-grade">
              <el-input v-model="form.grade_math_11"></el-input>
            </el-form-item>
            <el-form-item class="table-grade">
              <el-input v-model="form.grade_physics_11"></el-input>
            </el-form-item>
            <el-form-item class="table-grade">
              <el-input v-model="form.grade_chemistry_11"></el-input>
            </el-form-item>
            <el-form-item class="table-grade">
              <el-input v-model="form.grade_biology_11"></el-input>
            </el-form-item>
            <el-form-item class="table-grade">
              <el-input v-model="form.grade_it_11"></el-input>
            </el-form-item>
            <el-form-item class="table-grade">
              <el-input v-model="form.grade_english_11"></el-input>
            </el-form-item>
          </td>
        </tr>
        <tr>
          <td class="input-title table-grade table-title"> Lớp 12/ Grade 12:</td>
          <td>
            <el-form-item class="table-grade">
              <el-input v-model="form.grade_mark_12"></el-input>
            </el-form-item>
            <el-form-item class="table-grade">
              <el-input v-model="form.gpa_mark_12"></el-input>
            </el-form-item>
            <el-form-item class="table-grade">
              <el-input v-model="form.grade_math_12"></el-input>
            </el-form-item>
            <el-form-item class="table-grade">
              <el-input v-model="form.grade_physics_12"></el-input>
            </el-form-item>
            <el-form-item class="table-grade">
              <el-input v-model="form.grade_chemistry_12"></el-input>
            </el-form-item>
            <el-form-item class="table-grade">
              <el-input v-model="form.grade_biology_12"></el-input>
            </el-form-item>
            <el-form-item class="table-grade">
              <el-input v-model="form.grade_it_12"></el-input>
            </el-form-item>
            <el-form-item class="table-grade">
              <el-input v-model="form.grade_english_12"></el-input>
            </el-form-item>
          </td>
        </tr>
      </table>
      <br>
      <p class="input-title">* Với thí sinh sẽ tốt nghiệp năm 2020, nếu chưa có điểm trung bình năm lớp 12, vui lòng điền và ghi rõ điểm trung bình học kỳ 1 năm lớp 12/ For candidate who will graduate from high school in 2019, please clearly mention the average mark of the 1st semester of Grade 12 in case the mark for full year is not released</p>
      <br>
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
              <el-input v-model="eng_certi"></el-input>
            </el-form-item>
          </td>
          <td>
            <el-form-item class="table-lang">
              <el-input v-model="eng_score"></el-input>
            </el-form-item>
          </td>
        </tr>
        <tr>
          <td class="input-title table-lang">French/ Tiếng Pháp</td>
          <td>
            <el-form-item class="table-lang">
              <el-input v-model="french_certi"></el-input>
            </el-form-item>
          </td>
          <td>
            <el-form-item class="table-lang">
              <el-input v-model="french_score"></el-input>
            </el-form-item>
          </td>
        </tr><tr>
          <td class="input-title table-lang">Tiếng Việt/ Vietnamese</td>
          <td>
            <el-form-item class="table-lang">
              <el-input v-model="viet_certi"></el-input>
            </el-form-item>
          </td>
          <td>
            <el-form-item class="table-lang">
              <el-input v-model="viet_score"></el-input>
            </el-form-item>
          </td>
        </tr>
      </table>
    </el-form>
  </div>
</template>


<script>
export default {
  data() {
    return {
      labelPosition: 'top',
      form: {
        fullname: '',
        region: '',
        date1: '',
        date2: '',
        delivery: false,
        type: [],
        resource: '',
      desc: ''
      }
    }
  },
  methods: {
    onSubmit() {
      console.log('submit!');
    }
  }
}
</script>

<style scoped>
  .container {
  margin: 0 auto;
  min-height: 100vh;
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
    font-size: 15px;
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
  
</style>