<template>
  <div>
  <div>
    <user/>
  </div>
  <br>
  <div>
    <el-row>
      <el-col :span="24">
        <p class="subtitle big">
          Trường Đại học Khoa học và Công nghệ Hà Nội
        </p>
        <p class="subtitle medium">
          University of Science and Technology of Hanoi
        </p>
      </el-col>
    </el-row>
    <br>
    <el-row>
      <el-col :span="24"><p class="subtitle small">Jury {{currentJuryId}} Wave {{currentWaveId}} Year {{this_year}}</p></el-col>
    </el-row>
    <div class="student-table">
      <el-row>
        <el-col :span="24">
          <el-table
            :data="
              tableData.filter(
                data =>
                  !search ||
                  data.full_name.toLowerCase().includes(search.toLowerCase())
              )
            "
            style="width: 100%"
            class="center"
          >
            <el-table-column prop="id" label="ID" width="60" align="center"> </el-table-column>
            <!-- <el-table-column 
              prop="imgsrc"
              label="Avatar"
              width="80">
              <img src="~/static/img/user.png" width="42" height="42" class="ava">
            </el-table-column> -->
            <el-table-column prop="full_name" label="Full Name" width="180">
            </el-table-column>
            <el-table-column prop="school_name" label="High School" width="180">
            </el-table-column>
            <el-table-column
              prop="training_program"
              label="Training Program"
              width="170"
            >
            </el-table-column>
            <el-table-column prop="dob" label="Date of birth" width="140">
            </el-table-column>
            <el-table-column prop="gender" label="Gender" width="110">
            </el-table-column>
            <el-table-column width="240">
              <template slot="header" slot-scope="scope">
                <el-input
                  v-model="search"
                  size="mini"
                  placeholder="Type to search"
                />
              </template>
              <template slot-scope="scope">
                <el-button
                  style="margin-left: 12px"
                  size="medium"
                  type="info"
                  plain
                  @click="handleDetail(scope.$index, scope.row)"
                  >Detail</el-button
                >
                <el-button
                  size="medium"
                  type="primary"
                  @click="handleEvaluate(scope.$index, scope.row)"
                  >Evaluate</el-button
                >
              </template>
            </el-table-column>
          </el-table>
        </el-col>
        <el-col :span="24">
          <GEF
            v-if="currentComponent === 'GEF'"
            :currentIdGeneralEvaluate="this.currentIdGeneralEvaluate"
            :currentEmployeeId="this.currentEmployeeId"
          />
          <EEF
            v-if="currentComponent === 'EEF'"
            :currentIdEnglishEvaluate="this.currentIdEnglishEvaluate"
            :currentEmployeeId="this.currentEmployeeId"
          />
          <studentDetail
            v-if="currentComponent === 'studentDetail'"
            :currentIdDetail="this.currentIdDetail"
          />
        </el-col>
      </el-row>
    </div>
  </div>
  </div>
</template>

<script src="//unpkg.com/vue/dist/vue.js"></script>
<script src="//unpkg.com/element-ui@2.13.2/lib/index.js"></script>

<script>
import GEF from "~/components/general-evaluation-form.vue";
import EEF from "~/components/english-evaluation-form.vue";
import studentDetail from "~/components/student-detail.vue";
import user from "~/components/user.vue"

export default {
  //user id
  props: {
    currentIdList: {
      type: String,
      default: "0"
    }
  },
  components: {
    GEF,
    EEF,
    studentDetail,
    user
  },
  data() {
    return {
      tableData: [
        {
          id: "",
          full_name: "",
          school_name: "",
          training_program: "",
          dob: "",
          gender: ""
        }
      ],
      search: "",
      currentIdDetail: "",
      currentIdGeneralEvaluate: "",
      currentIdEnglishEvaluate: "",
      currentComponent: "",
      currentJuryId: "",
      currentWaveId: "",
      currentEmployeeId: "",
      this_year:""
    };
  },

  // created:function() {
  //     this.studentData.user_id = this.currentIdList
  //     this.getStudentId()
  // },

  mounted: function() {
    this.getJuryId();
    this.isEnglishTeacher();
    this.getEmployeeId();
    this.getYear()
  },

  watch: {
    currentJuryId: function(value) {
      this.listStudent();
    }
  },
  methods: {
    getYear(){
      this.this_year = new Date().getFullYear()
      console.log("This year is:", this.this_year)
    },

    async listStudent() {
      try {
        const response = await this.$axios.get(
          "http://localhost/process.php?action=ListStudent",
          {
            params: {
              currentJuryId: this.currentJuryId
            }
          }
        );
        console.log(response);

        this.tableData = response.data.studentList;
      } catch (error) {
        console.error(error);
      }
    },

    handleDetail(index, row) {
      this.currentComponent = "studentDetail";
      console.log("this is row id:", row.id)
      this.currentIdDetail = row.id;
      console.log("this is id:", this.currentIdDetail)
    },

    handleEvaluate(index, row) {
      if (this.isEnglishTeacher == "1") {
        this.currentComponent = "EEF";
        this.currentIdEnglishEvaluate = row.id;
      } else {
        this.currentComponent = "GEF";
        this.currentIdGeneralEvaluate = row.id;
      }
    },

    async getJuryId() {
      try {
        const response = await this.$axios.get(
          "http://localhost/process.php?action=getJuryId",
          {
            params: {
              currentIdList: this.currentIdList
            }
          }
        );
        console.log("meo",response);

        this.currentJuryId = response.data.juryId[0].id;
        this.currentWaveId = response.data.juryId[0].wave_id;
        console.log("wave", this.currentWaveId);
        
      } catch (error) {
        console.error(error);
      }
    },

    async getEmployeeId() {
      try {
        const response = await this.$axios.get(
          "http://localhost/process.php?action=getEmployeeId",
          {
            params: {
              currentIdList: this.currentIdList
            }
          }
        );
        console.log(response);

        this.currentEmployeeId = response.data.currentEmployeeId[0].id;
        console.log("This is this.currentEmployeeId", this.currentEmployeeId);
      } catch (error) {
        console.error(error);
      }
    },

    async isEnglishTeacher() {
      try {
        const response = await this.$axios.get(
          "http://localhost/process.php?action=isEnglishTeacher",
          {
            params: {
              currentIdList: this.currentIdList
            }
          }
        );

        this.isEnglishTeacher =
          response.data.isEnglishTeacher[0].is_english_teacher;
        console.log("Is this English teacher?", this.isEnglishTeacher);
      } catch (error) {
        console.error(error);
      }
    }
  }
};
</script>

<style scoped>
tel-table-columnd{
  text-align: center;
}
.student-table {
  margin: 3em 5em;
  align-content: center;
  box-shadow: 0 8px 50px 0 rgba(0, 0, 0, 0.1);
  padding: 0.5em;
}

.subtitle{
  text-align: center;
}

.big{
  font-weight: 450;
}

.medium{
  font-weight: 350;
  font-size: 32px;
}

.small{
  font-size: 18px;
}
</style>
