<template>
  <div class="container">
    <div class="logo">
      <img src="~/static/usth-logo.png" width="250" height="120">
    </div>

    <div class="login">
      <el-form
      :label-position="labelPosition"
      :model="newUserData"
      label-width="50px"
      style="width: 310px"
      :rules="rules" 
      ref="ruleForm"
      >
        <el-form-item prop="user_name">
          <el-input v-model="ruleForm.user_name"  placeholder="username"></el-input>
        </el-form-item>
        <el-form-item prop="email">
          <el-input v-model="ruleForm.email" placeholder="email@gmail.com"></el-input>
        </el-form-item>
        <el-form-item prop="password">
          <el-input placeholder="password" v-model="ruleForm.password" show-password></el-input>
        </el-form-item>
      </el-form>

      <div class="container-button">
        <el-button
          class="button--grey"
          @click="addNewUser()"
        >Sign Up
        </el-button>
      </div>
    <div class="home">
      <el-link href="/">Already has an account</el-link>
    </div>
    </div>
  </div>
</template>
<script>
export default {

  data: function(){
    return{
      labelPosition: "top",
      newUserData:{
        user_name: "",
        password: "",
        email: "",
        type: "student"
      },
      ruleForm: {
          user_name: '',
          password: '',
          email: ''
        },
        rules: {
          user_name: [
            { user_name: true, message: 'Please input user name', trigger: 'blur' }
          ],
          password: [
            { required: true, message: 'Please input password', trigger: 'change' }
          ],
          email: [
            { required: true, message: 'Please input email', trigger: 'change' }
          ]
        }
    }
  },
  methods: {
    addNewUser(){
      console.log("This is new user data", this.newUserData)
      this.$axios.post("http://localhost:80/process.php?action=newUserData", this.newUserData)
      .then(function (response) {
        console.log("this is response newUser data:",response.data);
      })
      .catch(function (error) {
        console.log("this is error:",error.data);
      });
      this.$emit('sendLogin', 'login');
      this.$message.success('You are registed! Log in now');
    },
  }
}
</script>

<style scoped>
  .container {
    width: 60vh;
    margin: 3.5em 28em;
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

  .type{
    padding-left: 2em;
  }
</style>