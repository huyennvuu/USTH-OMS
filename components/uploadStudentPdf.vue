<template>
  <div class="container">
    <el-row>
      <el-col :span="12">
        <img
          src="~/static/usth-logo.png"
          width="250"
          height="120"
          class="logo"
        />
      </el-col>
      <el-col :span="12">
        <p class="university-infor">
          Trường Đại học Khoa học và Công nghệ Hà Nội
          <br />
          University of Science and Technology of Hanoi
        </p>
      </el-col>
    </el-row>
    <!-- <el-row>
        <el-col :span="24">
          <el-upload
            class="upload-demo"
            action="https://jsonplaceholder.typicode.com/posts/"
            :on-change="handleChange"
            :file-list="fileList">
            <el-button size="small" type="primary">Click to upload</el-button>
            <div slot="tip" class="el-upload__tip">jpg/png files with a size less than 500kb</div>
          </el-upload>
        </el-col>
      </el-row> -->
    <el-row>
      <el-col :span="24">
        <div class="upload-space">
          <p class="input-title">
            26. Các thành tích nổi bật (học bổng, giải thưởng … không bắt buộc)/
            Awards and Distinctions( optional):
          </p>
          <br />
          <div>
            <input type="file" id="file_adward" ref="file_adward" />
            <div slot="tip" class="el-upload__tip">
              File có tên dạng: adward.pdf/ File with format: adward.pdf
            </div>
          </div>
          <br />
          <br />
          <p class="input-title">
            27. Thư trình bày mục đích, nguyện vọng/ Motivation letter:
          </p>
          <div slot="tip" class="el-upload__tip left-align">
            (Trình bày bằng tiếng Anh hoặc Tiếng Việt (khoảng 300 từ) nêu rõ mục
            đích và lý do đăng ký dự tuyển vào Trường ĐHKHCNHN, mục tiêu nghề
            nghiệp và lý do chọn ngành, vv… /Please explain within 300 words in
            English or Vietnamese,the purpose of your application and reasons
            for applying to USTH, detailing your career objectives and the
            reason for which you choose the above-mentioned specialty, etc.)
          </div>
          <br />
          <div>
            <input type="file" id="file_motivation" ref="file_motivation" />
            <div slot="tip" class="el-upload__tip">
              File có tên dạng: motivation.pdf/ File with format: motivation.pdf
            </div>
          </div>
        </div>
      </el-col>
    </el-row>
    <div class="btn-container">
      <el-button
        class="button--grey"
        @click="
        uploadAdwardFile(),
        uploadMotivationFile(),
        sendHome()
        "
        >Submit</el-button
      >
    </div>
  </div>
</template>

<script>
import axios from "axios";

export default {
  props: {
    currentIdUpload: {
      type: String,
      default: "0"
    }
  },

  data() {
    return {
      student_id: "",
      file_motivation: "",
      file_adward: ""
    };
  },

  mounted: function(value) {
    console.log("Meo:", this.currentIdUpload);
    this.getStudentId();
  },

  methods: {
    async getStudentId() {
      try {
        console.log("This is currentIdUpdate", this.currentIdUpload);
        const response = await this.$axios.get(
          "http://localhost/process.php?action=getStudentId",
          {
            params: {
              currentIdAdmission: this.currentIdUpload
            }
          }
        );
        console.log(response);
        console.log("This student id is:", response.data.studentId[0].id);

        this.student_id = response.data.studentId[0].id;
        console.log("This student id meomeo:", this.student_id);
      } catch (error) {
        console.error(error);
      }
    },

    sendHome() {
      this.$emit("sendDetail", "studentHome");
      this.$message.success('Your Admisison Form is submitted!!');
      // this.$emit("showDetail", "true");
    },

    uploadAdwardFile() {

      this.file = this.$refs.file_adward.files[0];

      let formData = new FormData();
      formData.append("file", this.file);
      formData.append("student_id", this.student_id);

      // console.log("This is student ID:",this.student_id)

      axios
        .post(
          "http://localhost:80/process.php?action=uploadAdwardFile",
          formData,
          {
            headers: {
              "Content-Type": "multipart/form-data"
              // 'studentId':this.overall_student_id
            }
          }
        )
        .then(function(response) {
          if (!response.data) {
            this.$message.error("File not uploaded!");
          } else {
            this.$message.success("File uploaded successfully!");
            alert("File uploaded successfully.");
          }
        })
        .catch(function(error) {
          console.log(error);
        });
    },

    uploadMotivationFile() {

      this.file = this.$refs.file_motivation.files[0];

      let formData = new FormData();
      formData.append('file', this.file);
      formData.append('student_id', this.student_id)

      // console.log("This is student ID:",this.student_id)

      axios.post('http://localhost:80/process.php?action=uploadMotivationFile', formData,
      {
          headers: {
            'Content-Type': 'multipart/form-data',
            // 'studentId':this.overall_student_id
          }
      })
      .then(function (response) {

        if(!response.data){
          this.$message.error('File not uploaded!');
        }else{
          this.$message.success('File uploaded successfully!');
          alert('File uploaded successfully.');
        }
      })
      .catch(function (error) {
        console.log(error);
      });
    }
  }
};
</script>

<style scoped>
.university-infor {
  padding: 3.5em;
}

.logo {
  margin: 2% 30%;
}

p {
  text-align: left;
  font-size: 14px;
  color: #606266;
}

.upload-space {
  padding: 3em 15em;
}

.btn-container {
  float: right;
  margin-right: 15em;
}

.left-align {
  text-align: left;
}
</style>
