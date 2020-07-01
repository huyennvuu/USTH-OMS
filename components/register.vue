<template>
  <div class="container">
    <div class="logo">
      <img src="~/static/usth-logo.png" width="250" height="120">
    </div>

    <div class="login">
      <el-form
      :label-position="labelPosition"
      ref="newUserData"
      :model="newUserData"
      label-width="50px"
      style="width: 310px"
      >
        <el-form-item>
          <el-input v-model="newUserData.user_name" placeholder="Username"></el-input>
        </el-form-item>
        <el-form-item>
          <el-input v-model="newUserData.email" placeholder="Email"></el-input>
        </el-form-item>
        <el-form-item>
          <el-input placeholder="Password" v-model="newUserData.password" show-password></el-input>
        </el-form-item>
      </el-form>

      <div class="container-button">
        <el-button
          class="button--grey"
          @click="addNewUser()"
        >Sign Up
        </el-button>
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
    width: 53vh;
    margin: 8em 36em;
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