<template>
  <div class="container">
    <div class="logo">
      <img src="~/static/usth-logo.png" width="250" height="120">
    </div>
    <div class="login">
      <el-form
      :label-position="labelPosition"
      ref="user"
      :model="user"
      label-width="50px"
      style="width: 310px"
      >
        <el-form-item>
          <el-input v-model="user.user_name" placeholder="Username"></el-input>
        </el-form-item>
        <el-form-item>
          <el-input v-on:keyup.enter="this.login()" placeholder="Password" v-model="user.password" show-password ></el-input>
        </el-form-item>
      </el-form>

      <div class="container-button">
        <el-button
          class="button--grey"
          @click="login()"
        >Login
        </el-button>
      </div>
    </div>
    
    <div class="new-account">
      <el-link @click="sendRegister()" >Create new account</el-link>
    </div>
  </div>
</template>
<script>
export default {

  data: function(){
    return{
      labelPosition: "top",
      user:{
        user_name: "",
        password: ""
      },
    }
  },
  methods: {
    async login() {
      try {
        const response = await this.$axios.get(
          "http://localhost/process.php?action=login",
          {
            params: {
              user_name: this.user.user_name,
              password: this.user.password,
            }
          }
        );

        if(response.data.user == 0){
          this.$message.error('Oops, the user not found.');
          this.user.user_name = ""
          this.user.password = ""
        }
        else if( response.data.user[0].type == 'lecturer') {
          this.$emit('sendStudentList', 'studentList');
          this.$emit('sendId', response.data.user[0].id);
          this.$emit('sendType', response.data.user[0].type);
        }
        else{
          this.$emit('notLecturer', 'cucu');
          this.$emit('sendAddmission', 'studentAddmission');
          this.$emit('sendId', response.data.user[0].id);
          this.$emit('sendType', response.data.user[0].type);
          this.user.user_name = ""
          this.user.password = ""
        }
        
      } catch (error) {
        console.error(error);
      }
    },
    sendRegister(){
      this.$emit('sendRegister', 'register');
    }
  }
}
</script>

<style scoped>
  .container {
    width: 60vh;
    margin: 100px 370px 100px 500px;
    min-height: 70vh;
    display: block;
    justify-content: center;
    align-items: center;
    text-align: left;
    padding: 50px;
    box-shadow: 0 8px 50px 0 rgba(0, 0, 0, 0.1);
  }

  .logo{
    padding: 2em;
  }

  .container-button{
    padding-left: 13em;
  }

  .new-account{
    padding: 3em 0em 0em 5.5em;
  }

</style>