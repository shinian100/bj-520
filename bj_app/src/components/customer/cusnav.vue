<template>
  <div>
    <!-- 导航 -->
    <el-breadcrumb class="nav" separator=">">
      <el-breadcrumb-item :to="{path:'/'}">铂爵(伯爵)旅拍婚纱摄影首页</el-breadcrumb-item>
      <el-breadcrumb-item :to="{path:'/customerList'}">{{classnav}}</el-breadcrumb-item>
      <el-breadcrumb-item>{{navtitle}}</el-breadcrumb-item>
    </el-breadcrumb>
  </div>
</template>
<script>
export default {
  data() {
    return {};
  },
  props: ["classnav", "navtitle"]
};
</script>
<style>
/* 导航 */
.nav {
  margin: 100px 0 40px 0;
  color: #333333;
  font-size: 16px;
  font-family: "宋体";
  font-weight: normal;
}
.el-breadcrumb__inner a,
.el-breadcrumb__inner.is-link {
  font-weight: normal !important;
  color: #333333 !important;
}
</style>
