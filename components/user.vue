<template>
  <el-dropdown class="user">
    <span class="el-dropdown-link">
      <i class="el-icon-arrow-down"></i>
    </span>
    <el-dropdown-menu slot="dropdown">
      <el-dropdown-item><el-link href="/">Log out</el-link></el-dropdown-item>
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
  }
</style>