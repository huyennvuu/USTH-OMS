<template>
  <div class="container">
    <login 
      v-if="currentComponent === 'login'" 
      @sendAddmission = "currentComponent = $event" 
      @sendId = "userId = $event" @sendRegister="currentComponent = $event" 
      :username="this.username"
    />
    <register 
      v-if="currentComponent === 'register'" 
      @sendLogin = "currentComponent = $event"
    />
    <studentAddmission 
      v-if="currentComponent === 'studentAddmission'" 
      :currentIdAdmission="this.userId" 
      @sendDetail = "currentComponent = $event" 
    />
    <div v-if="currentComponent === 'studentDetail'" > 
      <studentDetail :currentIdDetail="this.userId" />
      <button class="button--grey" @click="pdf()"> export PDF </button>
    </div>
  </div>
</template>

<script>
import studentAddmission from "~/components/addmission-form.vue"
import studentDetail from "~/components/student-detail.vue"
import login from "~/components/login.vue"
import register from "~/components/register.vue"
export default {
  components:{
    studentAddmission,
    studentDetail,
    login,
    register
  },
  data: function() {
    return {
      currentComponent: "login",
      userId: "", 
      username: ""
    };
  },
  methods: {
    pdf(){
      window.print()
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
  padding: 20px 50px;
  margin: 0em 10em 5em 5em ;
  float: right;
}

.button--grey:hover {
  color: #fff;
  background-color: #35495e;
}

</style>