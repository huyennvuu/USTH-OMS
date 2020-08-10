<template>
  <el-container>
    <el-header>
    <el-row :gutter="20">
      <el-col :span="8"><img class="logo" src="~/static/usth-logo.png" width="240" height="120" /></el-col>
      <el-col :span="12" style="float: right">
        <p class="subtitle small user">
          Hi, {{name}}
          <user/>
        </p>
      </el-col>
    </el-row>
    </el-header>
    <br>
    <br>
    <el-main>
    <el-row>
      <el-col :span="24"><p class="title">Admission Wave {{this_year}}</p></el-col>
    </el-row>
    <el-row :gutter="20">
      <el-col :span="10" :offset="7">
        <div class="block">

          <el-timeline>
            <el-timeline-item :timestamp=wave_data[0].date_start placement="top" >
              <el-card>
                <h4>Wave 1</h4>
                <p class="el-upload__tip">(from {{wave_data[0].date_start}} to {{wave_data[0].date_end}})</p>
                <br>
                <el-tag v-if="wave_data[0].status == '0'" type="danger">Ended</el-tag>
                <div v-if="wave_data[0].status == '1'">
                  <el-tag type="success" >Active</el-tag>
                  <br><br>
                  <div>
                    <el-button plain size="medium" @click="addAF()" v-if="newbie == '1'">Addmission Form</el-button>
                    <el-button plain size="medium" @click="editAF()" v-if="newbie == '0'">Edit Form</el-button>
                    <el-button type="primary" size="medium" v-if="newbie == '0'" @click="sendDetail()">Export Form</el-button>
                    <br><br>
                    <admisionStatus :student_id="this.student_id" v-if="newbie == '0'"/>
                  </div>
                </div>
                <el-tag v-if="wave_data[0].status == '2'" type="warning">Pending</el-tag>
              </el-card>
            </el-timeline-item>
            <el-timeline-item :timestamp=wave_data[1].date_start placement="top">
              <el-card>
                <h4>Wave 2</h4>
                <p class="el-upload__tip">(from {{wave_data[1].date_start}} to {{wave_data[1].date_end}})</p>
                <br>
                <el-tag v-if="wave_data[1].status == '0'" type="danger" >Ended</el-tag>
                <div v-if="wave_data[1].status == '1'">
                  <el-tag type="success">Active</el-tag>
                  <br><br>
                  <div>
                    <el-button plain size="medium" @click="addAF()" v-if="newbie == '1'">Addmission Form</el-button>
                    <el-button plain size="medium" @click="editAF()" v-if="newbie == '0'">Edit Form</el-button>
                    <el-button type="primary" size="medium" v-if="newbie == '0'" @click="sendDetail()">Export Form</el-button>
                    <br><br>
                    <admisionStatus :student_id="this.student_id" v-if="newbie == '0'"/>
                  </div>
                </div>
                <el-tag v-if="wave_data[1].status == '2'" type="warning" >Pending</el-tag>
              </el-card>
            </el-timeline-item>
            <el-timeline-item :timestamp=wave_data[2].date_start placement="top">
              <el-card>
                <h4>Wave 3</h4>
                <p class="el-upload__tip">(from {{wave_data[2].date_start}} to {{wave_data[2].date_end}})</p>
                <br>
                <el-tag v-if="wave_data[2].status == '0'" type="danger" >Ended</el-tag>
                <div v-if="wave_data[2].status == '1'">
                  <el-tag type="success">Active</el-tag>
                  <br><br>
                  <div>
                    <el-button plain size="medium" @click="addAF()" v-if="newbie == '1'">Addmission Form</el-button>
                    <el-button plain size="medium" @click="editAF()" v-if="newbie == '0'">Edit Form</el-button>
                    <el-button type="primary" size="medium" v-if="newbie == '0'" @click="sendDetail()">Export Form</el-button>
                    <br><br>
                    <admisionStatus :student_id="this.student_id" v-if="newbie == '0'"/>
                  </div>
                </div>
                <el-tag v-if="wave_data[2].status == '2'" type="warning">Pending</el-tag>
              </el-card>
            </el-timeline-item>
            <el-timeline-item :timestamp=wave_data[3].date_start placement="top">
              <el-card>
                <h4>Wave 4</h4>
                <p class="el-upload__tip">(from {{wave_data[3].date_start}} to {{wave_data[3].date_end}})</p>
                <br>
                <el-tag v-if="wave_data[3].status == '0'" type="danger" >Ended</el-tag>
                <div v-if="wave_data[3].status == '1'">
                  <el-tag type="success" >Active</el-tag>
                  <br><br>
                  <div>
                    <el-button plain size="medium" @click="addAF()" v-if="newbie == '1'">Addmission Form</el-button>
                    <el-button plain size="medium" @click="editAF()" v-if="newbie == '0'">Edit Form</el-button>
                    <el-button type="primary" size="medium" v-if="newbie == '0'" @click="sendDetail()">Export Form</el-button>
                    <br><br>
                    <admisionStatus :student_id="this.student_id" v-if="newbie == '0'"/>
                  </div>
                </div>
                <el-tag v-if="wave_data[3].status == '2'" type="warning">Pending</el-tag>
              </el-card>
            </el-timeline-item>
          </el-timeline>
        </div>
      </el-col>
    </el-row>
    </el-main>
  </el-container>
</template>
<script>
import user from "~/components/user.vue"
import admisionStatus from "~/components/admission-status.vue"

export default {
  props: {
    currentStudentId: {
      type: String,
      default: "0"
    }
  },

  components: {
    user,
    admisionStatus
  },

  data() {
    return {
      newbie: "",
      user_id: "",
      student_id: "",
      this_year: "",
      name: "",
      wave_data: [{
        academic_year:"",
        date_end:"",
        date_start:"",
        id:"",
        status:"",
        wave_name:""
      },
      {
        academic_year:"",
        date_end:"",
        date_start:"",
        id:"",
        status:"",
        wave_name:""
      },
      {
        academic_year:"",
        date_end:"",
        date_start:"",
        id:"",
        status:"",
        wave_name:""
      },
      {
        academic_year:"",
        date_end:"",
        date_start:"",
        id:"",
        status:"",
        wave_name:""
      },
      ]
    };
  }, 

  methods: {

    getYear(){
      this.this_year = new Date().getFullYear()
      console.log("This year is:", this.this_year)
    },

    async listWave() {
      try {
        const response = await this.$axios.get(
          "http://localhost/process.php?action=listWave",
          {
            params: {
              currentYear: this.this_year
            }
          }
        );
        this.wave_data = response.data.waveData;
        console.log("This is wave data:",this.wave_data); 
      } catch (error) {
        console.error(error);
      }
    },

    checkWaveStatus(){
      // for(i = 0; i < this.wave_data.length; i++){
      //   if( wave_date.status == '1')
      // }
    },

    async checkStudentId(){
      try {
        const response = await this.$axios.get(
          "http://localhost/process.php?action=getStudentId",
          {
            params: {
              currentIdAdmission: this.user_id
            }
          }
        );
        if(response.data.studentId == 0){
          this.newbie = '1'
          console.log("this is newbie :3")
        }
        else{
          this.student_id = response.data.studentId[0].id
          this.newbie = '0'
          this.name = response.data.studentId[0].full_name.split(' ').slice(-1).join(' ')
        }
      } catch (error) {
        console.error(error);
      }
    },

    addAF(){
      this.$emit('sendStudentId', '');
      this.$emit('sendAF', 'studentAddmission');
      this.$emit('actionAF', 'add');
    },

    editAF(){
      this.$emit('sendStudentId', this.student_id);
      this.$emit('sendAF', 'studentAddmission');
      this.$emit('actionAF', 'edit');
    },

    sendDetail(){
      this.$emit('sendDetail', 'studentDetail')
      this.$emit('sendStudentId', this.student_id);
      this.$emit("showDetail", "true");
    }
  },

  created: function() {
    this.getYear()
    console.log("this iss usser id from homeeeee", this.currentStudentId)
  },

  mounted: function() {
    this.listWave(),
    this.user_id = this.currentStudentId
  },

  watch: {
    user_id: function(value) {
      this.checkStudentId()
    }
  },
}
</script>

<style scoped>
  .logo{
    margin: 0.5em;
    text-align: center;
  }

  .title{
    font-weight: 300;
    font-size: 42px;
    color: #526488;
    word-spacing: 5px;
    padding: 0em 0em 1em 1.2em;
    /* padding-bottom: 1em; */
  }

  .small{
  font-size: 18px;
  }

  .user{
    float: right;
    padding: 1em;
    display: flex;
  }
</style>