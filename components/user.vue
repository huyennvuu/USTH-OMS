<template>
  <el-dropdown class="user">
    <span class="el-dropdown-link">
      <el-avatar icon="el-icon-user-solid"></el-avatar><i class="el-icon-arrow-down el-icon--right"></i>
    </span>
    <el-dropdown-menu slot="dropdown">
      <el-dropdown-item><nuxt-link to="/">Log out</nuxt-link></el-dropdown-item>
    </el-dropdown-menu>
  </el-dropdown>
</template>
<script>
export default {
  methods: {
  }
}
</script>
<style scoped>
  .user{
    float: right;
    padding: 1em 2em;
  }
</style>