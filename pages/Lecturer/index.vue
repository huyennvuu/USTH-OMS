<template>
  <div>
    <div>
      <login v-if="currentComponent === 'login'" :lecturer="true" @sendStudentList = "currentComponent = $event" @sendId = "userId = $event" @notLecturer = "notLecturer = $event"/>
      <studentList v-if="currentComponent === 'studentList'" :currentIdList="this.userId" />
    </div>
  </div>
</template>

<script>
import login from "~/components/login.vue"
import studentList from "~/components/student-list.vue"

export default {
  components: {
    studentList,
    login,
  },
  data: function() {
    return {
      currentComponent: "login",
      userId: "",
      notLecturer: "",
    };
  },

  watch: { 
    notLecturer: function(value){
      this.$message.error("Oops, you aren't lecturer.");
    }
  },
};
</script>
