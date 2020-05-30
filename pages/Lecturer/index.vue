<template>
  <div class="student-table">
    <el-table
      :data="tableData"
      style="width: 100%"
      class="center"
      >
      <el-table-column 
        prop="imgsrc"
        label="Avatar"
        width="80">
        <img :src= "imgscr" width="42" height="42" class="ava">
      </el-table-column>
      <el-table-column
        prop="id"
        label="Student ID"
        width="120"
        class="center">
      </el-table-column>
      <el-table-column
        prop="fullname"
        label="Full Name"
        width="200">
      </el-table-column>
      <el-table-column
        prop="school"
        label="High School"
        width="200">
      </el-table-column>
      <el-table-column
        prop="first_traing_program"
        label="Training Program"
        width="180">
      </el-table-column>
      <el-table-column
        prop="dob"
        label="Date of birth"
        width="140">
      </el-table-column>
      <el-table-column
        prop="gender"
        label="Gender"
        width="70">
      </el-table-column>
      <el-table-column
        width="140">
        <nuxt-link 
            to="/Lecturer/evaluation-form"
            class="button--grey"
        >
          Detail
        </nuxt-link>
      </el-table-column>
      <el-table-column
        width="140">
        <nuxt-link 
            to="/Lecturer/evaluation-form"
            class="button--green"
        >
          Evaluate
        </nuxt-link>
      </el-table-column>
    </el-table>
  </div>
</template>

<script>
  export default {
    data() {
      return {
        tableData: [{
          id: '1',
          fullname: 'Vũ Khánh Huyền',
          school: 'Nguyễn Gia Thiều',
          first_traing_program: 'ICT',
          dob: '09-08-1999',
          gender: 'Female',
          imgsrc: '~/static/img/ava1.jpeg'
        },{
          id: '2',
          fullname: 'Vũ Khánh Huyền',
          school: 'Nguyễn Gia Thiều',
          first_traing_program: 'ICT',
          dob: '09-08-1999',
          gender: 'Female'
        },{
          id: '3',
          fullname: 'Vũ Khánh Huyền',
          school: 'Nguyễn Gia Thiều',
          first_traing_program: 'ICT',
          dob: '09-08-1999',  
          gender: 'Female'
        },{
          id: '4',
          fullname: 'Vũ Khánh Huyền',
          school: 'Nguyễn Gia Thiều',
          first_traing_program: 'ICT',
          dob: '09-08-1999',
          gender: 'Female'
        },{
          id: '5',
          fullname: 'Vũ Khánh Huyền',
          school: 'Nguyễn Gia Thiều',
          first_traing_program: 'ICT',
          dob: '09-08-1999',
          gender: 'Female'
        },
        {
          id: '6',
          fullname: 'Vũ Khánh Huyền',
          school: 'Nguyễn Gia Thiều',
          first_traing_program: 'ICT',
          dob: '09-08-1999',
          gender: 'Female'
        },
        {
          id: '7',
          fullname: 'Vũ Khánh Huyền',
          school: 'Nguyễn Gia Thiều',
          first_traing_program: 'ICT',
          dob: '09-08-1999',
          gender: 'Female'
        }]
      }
    }
  }
</script>

<style scoped>
  .student-table{
    margin: 50px 100px 50px 100px;
    text-align: center;
    box-shadow: 0 8px 50px 0 rgba(0, 0, 0, 0.1);
    padding:10px 30px 0px 30px;
  }

  .ava{
    width: 2.5rem;
    height: 2.5rem;
    border-radius: 50%!important;
  }

  .center{
    text-align: center;
  }
</style>