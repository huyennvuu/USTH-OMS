<template>
  <div style="text-align: center">
    <p>Your <strong>Addmission Form </strong>status:</p>
    <el-progress :text-inside="true" :stroke-width="17" :percentage="80" color="powderblue"></el-progress>
    <em>{{status}}</em>
  </div>
</template>
<script>
export default {
  data(){
    return{
      status: "Submited/ Pending..."
    }
  }
}
</script>

<style scoped>
  p{
    margin: 0.5em;
  }
</style>
