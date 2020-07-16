<template>
  <div class="container">
    <login 
      v-if="currentComponent === 'login'" 
      @sendStudentHome = "currentComponent = $event" 
      @sendId = "userId = $event" 
      @sendRegister="currentComponent = $event" 
      :username="this.username"
    />
    <register 
      v-if="currentComponent === 'register'" 
      @sendLogin = "currentComponent = $event"
    />
    <studentHome 
      v-if="currentComponent === 'studentHome'"
      :currentStudentId ="this.userId"
      @sendStudentId = "studentId = $event" 
      @sendAF = "currentComponent = $event"
      @actionAF = "actionAF = $event"
      @sendDetail = "currentComponent = $event"
      @showDetail = "showDetail = $event"
    />
    <studentAddmission 
      v-if="currentComponent === 'studentAddmission'" 
      :currentIdAdmission="this.userId"
      @sendUpload = "currentComponent = $event" 
    />
    <div v-if="currentComponent === 'studentDetail'" id="printPart" > 
      <studentDetail 
        :currentIdDetail="this.studentId"
        :showDetail="this.showDetail"
        :print="this.print"
      />
      <button v-show="this.button == 'true'" class="button--grey" @click=" hideButton()"> export PDF </button>
    </div>
    <uploadPDF 
      v-if="currentComponent === 'uploadPDF'"
      :currentIdUpload="this.userId"
      @sendDetail = "currentComponent = $event"  
      @showDetail = "showDetail = $event"  
    />
  </div>
</template>

<script>
import studentAddmission from "~/components/addmission-form.vue"
import studentDetail from "~/components/student-detail.vue"
import login from "~/components/login.vue"
import register from "~/components/register.vue"
import uploadPDF from "~/components/uploadStudentPdf.vue"
import studentHome from "~/components/student-home-page.vue"

export default {
  components:{
    studentAddmission,
    studentDetail,
    login,
    register,
    uploadPDF,
    studentHome
  },
  data: function() {
    return {
      currentComponent: "login",
      userId: "", 
      username: "",
      button: "true",
      print: "",
      showDetail:"",
      actionAF: "",
      studentId: "",
    };
  },

  methods: {
    hideButton(){
      this.button = 'hide'
      this.print = '1'
      window.setTimeout(this.printForm, 1000)

    },
    printForm(){
      window.print()
      this.button = 'true'

    }
  }
}
</script>

<style scoped>
  
.button--grey {
  border-radius: 4px;
  border: 1px solid #35495e;
  color: #35495e;
  text-decoration: none;
  padding: 20px 30px;
  margin: 0em 15em 5em 5em ;
  float: right;
}

.button--grey:hover {
  color: #fff;
  background-color: #35495e;
}

</style>