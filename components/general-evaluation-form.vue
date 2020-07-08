<template>
  <div class="container">
    <div >
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
      General Evaluation
      <br>
      Bachelor Addmission Interview-2020
    </h2>

    <el-form
      :label-position="labelPosition"
      ref="generalEvaluationData"
      :model="generalEvaluationData"
      label-width="100px"
    >
      <table>
        <tr>
          <td colspan="2" class="table-title ">CRITERIA</td>
          <td class="table-title">Max score</td>
          <td class="table-title" style="text-align: right">Final score</td>
          <td class="table-title">SCORE SCALE</td>
        </tr>

        <tr>
          <td colspan="2" class="title">A. Academic transcripts</td>
          <td>30</td>
          <td>
            <el-form-item>
              <el-input
                v-model="generalEvaluationData.academic_transcripts"
              ></el-input>
            </el-form-item>
          </td>
          <td>( find detailed assessment in the attachment )</td>
        </tr>

        <tr>
          <td colspan="6" style=" padding-left: 2em" class="title">
            B. Direct academic assessment
          </td>
        </tr>

        <tr>
          <td rowspan="3">1. Standard Question</td>
          <td>1.No</td>
          <td>12</td>
          <td>
            <el-form-item>
              <el-input
                v-model="generalEvaluationData.standard_question_1_mark"
              ></el-input>
            </el-form-item>
          </td>
          <td rowspan="3" style="text-align: left">
            Right andswer: 12 points
            <br />
            Wrong andswer but Right method: 09 points
            <br />
            Wrong andswer: 0 points
            <br />
          </td>
        </tr>
        <tr>
          <td>2.No</td>
          <td>12</td>
          <td>
            <el-form-item>
              <el-input
                v-model="generalEvaluationData.standard_question_2_mark"
              ></el-input>
            </el-form-item>
          </td>
        </tr>
        <tr>
          <td>2.No</td>
          <td>12</td>
          <td>
            <el-form-item>
              <el-input
                v-model="generalEvaluationData.standard_question_3_mark"
              ></el-input>
            </el-form-item>
          </td>
        </tr>

        <tr>
          <td rowspan="3">2. Advanced Question</td>
          <td></td>
          <td>9</td>
          <td>
            <el-form-item>
              <el-input
                v-model="generalEvaluationData.advance_question_mark"
              ></el-input>
            </el-form-item>
          </td>
          <td rowspan="3" style="text-align: left">
            Right andswer: 09 points
            <br />
            Wrong andswer but Right method: 06 points
            <br />
            Wrong andswer: 0 points
            <br />
          </td>
        </tr>
        <tr></tr>
        <tr></tr>
        <tr>
          <td class="title" colspan="2">C. Motiavtion</td>
          <td>20</td>
          <td>
            <el-form-item>
              <el-input v-model="generalEvaluationData.motivation"></el-input>
            </el-form-item>
          </td>
          <td style="text-align: left">
            Strong motivation on choosing major, realistic career goals: 16- 20
            points.
            <br />
            Fair motivation on choosing major: 01- 13 points
            <br />
            No motivation and understanding of the training program: 0 point
          </td>
        </tr>

        <tr>
          <td class="title" colspan="2">D. Other achievemets</td>
          <td>5</td>
          <td>
            <el-form-item>
              <el-input
                v-model="generalEvaluationData.other_achievements"
              ></el-input>
            </el-form-item>
          </td>
          <td style="text-align: left">
            Certifiates on prizers or compliments: 01- 03 points.
            <br />
            Participation in social acticities: 01 point.
            <br />
            Recommendation letter: 1 point.
          </td>
        </tr>

        <tr>
          <td colspan="2" class="title">Remarks</td>
          <td></td>
          <td colspan="2">
            <el-form-item>
              <el-input
                type="textarea"
                v-model="generalEvaluationData.remarks"
              ></el-input>
            </el-form-item>
          </td>
        </tr>
      </table>

      <el-form-item>
        <div class="container-button">
          <el-button
            class="button--grey"
            @click="
              submitGEF();
            "
            >Submit</el-button
          >
          <!-- <el-button class="button--green" @click="resetForm('ruleForm')">Reset</el-button>     -->
        </div>
      </el-form-item>
    </el-form>

    <table>
      <tr>
        <td class="title">GPA:</td>
        <td class="title">Equal Score</td>
      </tr>
      <tr>
        <td>6.5-6.9</td>
        <td>15 points</td>
      </tr>
      <tr>
        <td>7.0-7.9</td>
        <td>20 points</td>
      </tr>
      <tr>
        <td>8.0-8.9</td>
        <td>25 points</td>
      </tr>
      <tr>
        <td>>9.0</td>
        <td>30 points</td>
      </tr>
    </table>
    
    <div class="information">
      <p>Date: {{this.generalEvaluationData.datetime}}</p>
      <p>Student ID:  {{ this.generalEvaluationData.student_id }}</p>
      <p>Lecturer ID:  {{ this.generalEvaluationData.employee_id }}</p>
    </div>
  </div>
</template>

<script>
export default {
  props: {
    currentIdGeneralEvaluate: {
      type: String,
      default: ''
    },
    currentEmployeeId: {
      type: String,
      default: ''
    },
  },
  data() {
    return {
      labelPosition: "rigth",
      generalEvaluationData: {
        datetime: "",
        academic_transcripts: "",
        standard_question_1_mark: "",
        standard_question_2_mark: "",
        standard_question_3_mark: "",
        motivation: "",
        other_achievements: "",
        remarks: "",
        student_id:"",
        employee_id: ""
      }
    };
  },
  
  mounted: function(){
    this.getTime();
  },

  watch: {
    currentIdGeneralEvaluate: function(){
      this.generalEvaluationData.student_id = this.currentIdGeneralEvaluate
      console.log( "This is current student id:",this.generalEvaluationData.student_id)
    },
    currentEmployeeId: function(){
      this.generalEvaluationData.employee_id = this.currentEmployeeId
      console.log( "This is current employee id in EEF:",this.generalEvaluationData.employee_id)
    }
  },

  created:function() {
      this.generalEvaluationData.student_id = this.currentIdGeneralEvaluate
      console.log("This is current student id:", this.generalEvaluationData.student_id)
      this.generalEvaluationData.employee_id = this.currentEmployeeId
      console.log( "This is current employee id in EEF:",this.generalEvaluationData.employee_id)
  },

  methods: {
    getTime() {
      var d = new Date();
      var day = d.getDate();
      var month = d.getMonth();
      var year = d.getFullYear();
      var finalDate = year+"-"+month+"-"+day;

      this.generalEvaluationData.datetime = finalDate;
    },

    submitGEF() {
      console.log("This is GEF data", this.generalEvaluationData);
      // this.generalEvaluationData.student_id = this.currentIdEvaluate;
      this.$axios
        .post(
          "http://localhost:80/process.php?action=AddGEF",
          this.generalEvaluationData
        )
        .then(function(response) {
          console.log("this is response GEF: ", response.data);
        })
        .catch(function(error) {
          console.log("this is error: ", error.data);
        })
      this.$message.success('General evaluation form submited!');
      //this.generalEvaluationData = ""

    },
  }
};
</script>

<style scoped>
.container {
  margin: 30px 50px 70px 50px;
  min-height: 100vh;
  display: block;
  justify-content: center;
  align-items: center;
  text-align: left;
  padding: 50px 50px 50px 50px;
}

.subtitle {
  font-weight: 400;
  font-size: 30px;
  color: #526488;
  word-spacing: 5px;
  padding-bottom: 2em;
  padding-top: 1em;
  text-align: center;
}

.table-title {
  font-weight: 500;
  font-size: 20px;
  color: #526488;
  padding: 1em;
  padding-bottom: 1em;
}

.title {
  font-weight: 500;
  text-align: left;
}

td {
  text-align: center;
  padding: 1em 2em 1em 2em;
  vertical-align: center;
  font-weight: 300;
  font-size: 15px;
  color: #526488;
  border-top-style: groove;
  border-top-width: 1px;
}

.information {
  text-align: right;
  font-weight: 300;
  font-size: 15px;
  color: #526488;
}

.container-button {
  float: right;
  margin: 20px;
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

.university-infor{
  font-size: 18px;
  color: #606266;
  text-align: center;
  margin-left: 9em;
}

.header{
  border-top-style: none;
}

</style>
