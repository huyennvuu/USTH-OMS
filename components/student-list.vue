<template>
  <div class="student-table">
    <el-table
      :data="tableData.filter(data => !search || data.full_name.toLowerCase().includes(search.toLowerCase()))"
      style="width: 100%"
      class="center"
    >
      <el-table-column prop="id" label="ID" width="60" class="center">
      </el-table-column>
      <!-- <el-table-column 
        prop="imgsrc"
        label="Avatar"
        width="80">
        <img src="~/static/img/user.png" width="42" height="42" class="ava">
      </el-table-column> -->
      <el-table-column prop="full_name" label="Full Name" width="190">
      </el-table-column>
      <el-table-column prop="school_name" label="High School" width="190">
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
          <el-input v-model="search" size="mini" placeholder="Type to search" />
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
      <GEF v-if="currentComponent === 'GEF'" :currentIdGeneralEvaluate="this.currentIdGeneralEvaluate" @sendEEF= "currentComponent = $event" @sendId= "currentIdEnglishEvaluate = $event" />
      <EEF v-if="currentComponent === 'EEF'" :currentIdEnglishEvaluate="this.currentIdEnglishEvaluate" />
      <studentDetail v-if="currentComponent === 'studentDetail'" :currentIdDetail="this.currentIdDetail" />
  </div>
</template>

<script src="//unpkg.com/vue/dist/vue.js"></script>
<script src="//unpkg.com/element-ui@2.13.2/lib/index.js"></script>

<script>
import GEF from "~/components/general-evaluation-form.vue";
import EEF from "~/components/english-evaluation-form.vue";
import studentDetail from "~/components/student-detail.vue"
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
    studentDetail
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
      search: '',
      currentIdDetail: "",
      currentIdGeneralEvaluate: "",
      currentIdEnglishEvaluate: "",
      currentComponent: "",
      currentJuryId: "",
    };
  },
  
  // created:function() {
  //     this.studentData.user_id = this.currentIdList
  //     this.getStudentId()
  // },

  mounted: function() {
    this.getJuryId()
  },
  
  watch: { 
    currentJuryId: function(value){
      this.listStudent();
    }
  },
  methods: {
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
        console.log(response)

        this.tableData = response.data.studentList
      } catch (error) {
        console.error(error);
      }
    },

    handleDetail(index, row) {
      this.currentComponent = "studentDetail";
      this.currentIdDetail = row.id;
    },

    handleEvaluate(index, row) {
      this.currentComponent = "GEF";
      this.currentIdGeneralEvaluate = row.id;
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
        console.log(response);

        this.currentJuryId = response.data.juryId[0].id;
      } catch (error) {
        console.error(error);
      }
    },
  }
};
</script>

<style scoped>
.student-table {
  margin: 50px 100px 50px 100px;
  text-align: center;
  box-shadow: 0 8px 50px 0 rgba(0, 0, 0, 0.1);
  padding: 10px 30px 0px 60px;
}

.ava {
  width: 2.5rem;
  height: 2.5rem;
  border-radius: 50% !important;
}

.center {
  text-align: center;
}
</style>
