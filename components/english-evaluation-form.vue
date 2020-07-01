<template>
  <div class="container">
    <div>
      <table>
        <tr>
          <td class="header">
            <img src="~/static/usth-logo.png" width="250" height="120">
          </td>
          <td class="header">
            <p class="university-infor">
              Trường Đại học Khoa học và Công nghệ Hà Nội
              <br>
              University of Science and Technology of Hanoi
            </p>
          </td>
        </tr>
      </table>
    </div>
    
    <h2 class="subtitle">
      English Evaluation
      <br>
      Bachelor Addmission Interview-2020
    </h2>

    <el-form
      :label-position="labelPosition"
      ref="englishEvaluationData"
      :model="englishEvaluationData"
      label-width="100px"
    >

      <div class="result-container">
        <p class="result-title">
          Result:
        </p>
        <el-form-item >
          <el-radio-group v-model="englishEvaluationData.result">
            <el-radio class="result-style" label="3-year program">3-year program</el-radio>
            <el-radio class="result-style" label="4-year program">4-year program</el-radio>
            <el-radio class="result-style" label="3-year program + english intensive course">3-year program + english intensive course </el-radio>
          </el-radio-group>
        </el-form-item>
      </div>

      <table>
        <tr>
          <td class="table-title">CRITERIA</td>
          <td class="table-title">SCORE</td>
          <td class="table-title">REMARKS</td>
        </tr>
        <tr>
          <td >Fluency and Coherence</td>
          <td>
            <el-form-item>
              <el-input
                v-model="englishEvaluationData.fluency_coherence_mark"
              ></el-input>
            </el-form-item>
          </td>
          <td rowspan="4">
            <el-form-item>
              <el-input
                type="textarea"
                v-model="englishEvaluationData.remarks"
                rows="18" cols="45"

              ></el-input>
            </el-form-item>
          </td>
        </tr>
        <tr>
          <td>Lexical Resource</td>
          <td>
            <el-form-item>
              <el-input
                v-model="englishEvaluationData.resource_mark"
              ></el-input>
            </el-form-item>
          </td>
        </tr>
        <tr>
          <td>Grammatical Range and Accuracy</td>
          <td>
            <el-form-item>
              <el-input
                v-model="englishEvaluationData.grama_accuracy_mark"
              ></el-input>
            </el-form-item>
          </td>
        </tr>
        <tr>
          <td>Pronunciation</td>
          <td>
            <el-form-item>
              <el-input
                v-model="englishEvaluationData.pronunciation_mark"
              ></el-input>
            </el-form-item>
          </td>
        </tr>
        <tr>
          <td class="table-title">OVERALL SCORE</td>
          <td>
            <el-form-item>
              <el-input v-model="englishEvaluationData.overall"></el-input>
            </el-form-item>
          </td>
          <td></td>
        </tr>
      </table>

      <el-form-item>
        <div class="container-button">
          <el-button class="button--grey" @click="submitEEF()"
            >Submit</el-button
          >
          <!-- <el-button class="button--green" @click="resetForm('ruleForm')">Reset</el-button>     -->
        </div>
      </el-form-item>
    </el-form>

    <div class="information">
      <p>
        Date:{{this.englishEvaluationData.datetime}}
        <br>
        Student ID:{{this.englishEvaluationData.student_id}}
        <br>
        Lecturer ID:{{this.englishEvaluationData.employee_id}}
      </p>
    </div>
  </div>
</template>

<script>
export default {
  props: {
    currentIdEnglishEvaluate: {
      type: String,
      default: ''
    },
    currentEmployeeId: {
      type: String,
      default: ''
    }
  },
  data() {
    return {
      labelPosition: "top",
      englishEvaluationData: {
        employee_id: "",
        datetime: "",
        result: "",
        fluency_coherence_mark: "",
        remarks: "",
        resource_mark: "",
        grama_accuracy_mark: "",
        pronunciation_mark: "",
        overall: "",
        student_id: "",
      }
    };
  },
  mounted: function(){
    this.getTime();
  },

  watch: {
    currentIdEnglishEvaluate: function(){
      this.englishEvaluationData.student_id = this.currentIdEnglishEvaluate;
    },
    currentEmployeeId: function(){
      this.englishEvaluationData.employee_id = this.currentEmployeeId;
    }
  },

  created:function() {
    this.englishEvaluationData.student_id = this.currentIdEnglishEvaluate;
    this.englishEvaluationData.employee_id = this.currentEmployeeId;
  },

  methods:{
    getTime() {
      var d = new Date();
      var day = d.getDate();
      var month = d.getMonth();
      var year = d.getFullYear();
      var finalDate = year+"-"+month+"-"+day;

      this.englishEvaluationData.datetime = finalDate;
    },

    submitEEF() {
    console.log("This is EEF data", this.englishEvaluationData);

    this.$axios
      .post(
        "http://localhost:80/process.php?action=AddEEF",
        this.englishEvaluationData
      )
      .then(function(response) {
        console.log("this is response EEF: ", response.data);
      })
      .catch(function(error) {
        console.log("this is error: ", error.data);
      })
    this.$message.success('English evaluation form submited!');
  }
  }
  
};
</script>

<style scoped>

.subtitle {
  font-weight: 400;
  font-size: 30px;
  color: #526488;
  word-spacing: 5px;
  padding-bottom: 2em;
  padding-top: 1em;
  text-align: center;
}

.container {
  margin: 30px 50px 70px 50px;
  min-height: 100vh;
  display: block;
  justify-content: center;
  align-items: center;
  text-align: left;
  padding: 50px 50px 50px 50px;
}

td {
  text-align: left;
  padding: 1em;
  vertical-align: center;
  font-weight: 300;
  font-size: 15px;
  color: #526488;
  border-top-style: groove;
  border-top-width: 1px;
}

.university-infor{
  font-size: 18px;
  color: #606266;
  text-align: center;
  margin-left: 12em;
}

.header{
  border-top-style: none;
}

.input-text{
  height: 450px;
}

.table-title{
  text-align: center;
  font-weight:500 ;
}

.result-style{
  font-weight: 300;
  font-size: 17px;
  color: #526488;
  padding: 1em 0em 1em 4em;
}

.result-title{
  font-weight: 500;
  font-size: 17px;
  color: #526488;
}

.result-container{
  margin: 1.5em;
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

.container-button{
  float: right;
  margin: 20px;
}

.information {
  text-align: right;
  font-weight: 300;
  font-size: 15px;
  color: #526488;
}
</style>
