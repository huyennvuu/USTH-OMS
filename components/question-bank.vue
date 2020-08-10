<template>
  <div class="question">
    <el-row>
      <el-col :span="18" :offset="2"><el-input v-on:keyup.enter="getQuestion(); dialogVisible = true" placeholder="Please enter the question ID" v-model="id"></el-input> </el-col>
      <el-col :span="4"><el-button @click="getQuestion(); dialogVisible = true" class="bnt">Search</el-button></el-col>

      <el-dialog
        title="Questions Bank"
        :visible.sync="dialogVisible"
        width="40%"
        center
      >
        <strong>Question:</strong> {{question}}
        <br>
        <br>
        <p class="answer">
          A. {{A}}
          <br>
          B. {{B}}
          <br>
          C. {{C}}
          <br>
          D. {{D}}
        </p>
        <br>
        <strong>answer:</strong> {{answer}}
      </el-dialog>
    </el-row>
  </div>
</template>

<script>
  export default {
    data(){
      return{
        dialogVisible: false,
        id: "",
        subject: "",
        question: "",
        A: "",
        B: "",
        C: "",
        D: "",
        answer: ""
      }
    },
    
    methods: {
      async getQuestion() {
      try {
        const response = await this.$axios.get(
          "http://localhost/process.php?action=getQuestion",
          {
            params: {
              questionId: this.id
            }
          }
        );
        console.log("meo",response);

        this.subject = response.data.thisQuestion[0].subject;
        this.question = response.data.thisQuestion[0].question;
        this.A = response.data.thisQuestion[0].A;
        this.B = response.data.thisQuestion[0].B;
        this.C = response.data.thisQuestion[0].C;
        this.D = response.data.thisQuestion[0].D;
        this.answer = response.data.thisQuestion[0].answer;
        this.id = ""

        } catch (error) {
          console.error(error);
        }
      },
      meo(){
        console.log("meo")
      }
    }
  }
</script>

<style scoped>
  .question{
    margin-top: 4em;
  }
  .bnt{
    margin-left: 1em;
  }
  .answer{
    padding-left: 2em;
  }
</style>