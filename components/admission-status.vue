<template>
  <div style="text-align: center">
    <p>Your <strong>Addmission Form </strong>status:</p>
    <el-progress :percentage="per" :status="status" :color="color"></el-progress>
    <em>{{status_name}}</em>
  </div>
</template>
<script>
export default {

  props: {
    student_id: {
      type: String,
      default: "0"
    }
  },

  data(){
    return{
      status_name: "",
      per: "",
      color: ""
    }
  },

  // watch: {
  //   student_id: function(value) {
  //     console.log("this is getting olddd")
  //     this.getFormStatus();
  //   }
  // },

  mounted: function() {
    // console.log("This is user id", this.currentIdAdmission)
    //console.log("this is student id from meo meo", this.student_id)
    this.getFormStatus()
  },
  
  methods: {
    async getFormStatus() {
      try {
        console.log("this is getting status")
        const response = await this.$axios.get(
          "http://localhost/process.php?action=getFormStatus",
          {
            params: {
              student_id: this.student_id
            }
          }
        );
        console.log(response);

        if(response.data.status[0].status == '1'){
          this.status_name = "Approved";
          this.status = "success";
          this.per = 100
        }else if(response.data.status[0].status == '0'){
          this.status_name = "Submited/ Pending...";
          this.color = "paleturquoise"
          this.per = 50
        }

        console.log("This is status", this.status);
        console.log("This is per", this.per);
      } catch (error) {
        console.error(error);
      }
    },
  }
}
</script>

<style scoped>
  p{
    margin: 0.5em;
  }

</style>
