<template>
  <el-container>
    <div>
      <h1 class="title">
        University of Science and Technology of Hanoi
      </h1>
      <h2 class="subtitle">
        Are you a Student or a Lecturer?
      </h2>
      <div class="links">
        <nuxt-link 
          to="/Student"
          class="button--green"
        >
          Student
        </nuxt-link>
        <nuxt-link
          to="/Lecturer"
          class="button--grey"
        >
          Lecturer
        </nuxt-link>
      </div>
    </div>
  </el-container>
</template>

<script>
export default {
}
</script>

<style>
.container {
  /* margin: 12em 7em; */
  /* margin-top: 12em; */
  /* min-height: 100vh; */
  /* display: flex; */
  justify-content: center;
  align-items: center;
  text-align: center;
}

.title {
  font-family:'Quicksand', 'Source Sans Pro', -apple-system, BlinkMacSystemFont,'Segoe UI', Roboto, 'Helvetica Neue', Arial, sans-serif;
  display: block;
  text-align: center;
  padding: 1em 1em 0em 1em;
  font-weight: 300;
  font-size: 100px;
  color: #35495e;
  letter-spacing: 1px;
}

.subtitle {
  font-weight: 300;
  text-align: center;
  font-size: 42px;
  color: #526488;
  word-spacing: 5px;
  /* padding-bottom: 15px; */
}

.links{
  padding-top:2em ;
  text-align: center;

}

</style>


