<template>  
  <div class="container">
    <h2 class="subtitle"> Evaluation Form </h2>
    <el-form :label-position="labelPosition" ref="form" :model="form" label-width="100px">
      <el-form-item label="Academic Transcipt">

      </el-form-item>
    </el-form>
  </div>
</template>

<script>
  export default {
    data() {
      return{
        labelPosition: 'top',
      }
    }
  }
</script>

<style scoped>
  .container{
  margin: 30px 100px 70px 100px;
  min-height: 100vh;
  display: block;
  justify-content: center; 
  align-items: center; 
  text-align: left;
  padding: 50px 100px 50px 100px;
  }

  .subtitle {
    font-weight: 300;
    font-size: 42px;
    color: #526488;
    word-spacing: 5px;
    padding-bottom: 15px;
  }

</style>