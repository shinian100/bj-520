<template>
  <div>
    <my-header></my-header>
    <div class="container">
      <!-- 导航 -->
      <el-breadcrumb class="nav" separator=">">
        <el-breadcrumb-item>您的当前位置:</el-breadcrumb-item>
        <el-breadcrumb-item :to="{path:'/'}">铂爵(伯爵)旅拍婚纱摄影首页</el-breadcrumb-item>
        <el-breadcrumb-item>婚纱摄影评价</el-breadcrumb-item>
      </el-breadcrumb>
      <!-- 客户评价列表 -->
      <cuslist
        v-for="(item,index) of list"
        :imgUrl="'http://127.0.0.1:3000/cuslist/'+item.img"
        :key="index"
        :title="item.title"
        :subtitle="item.subtitle"
        :updateTime="item.updateTime"
        :city="item.city"
        @click.native="skip(item.id)"
      ></cuslist>
      <!-- 分页 -->
      <el-pagination
        layout="prev,pager,next"
        small
        :total="30"
        background
        :page-size="6"
        @current-change="loadlist"
      ></el-pagination>
    </div>
    <my-footer></my-footer>
  </div>
</template>
<script>
import cuslist from "../components/customer/cuslist.vue";
import MyHeader from "@/components/Header";
import MyFooter from "@/components/Footer";
export default {
  components: {
    cuslist,
    MyHeader,
    MyFooter
  },
  data() {
    return {
      pnum: 0,
      psize: 6,
      list: []
    };
  },
  created() {
    this.loadlist();
  },
  methods: {
    loadlist(val) {
      console.log(val);
      this.pnum = val;
      var pnum = this.pnum;
      var psize = this.psize;
      console.log(pnum, psize);
      var obj = { pnum: pnum, psize: psize };
      this.axios.get("list", { params: obj }).then(result => {
        var list = result.data.data;
        this.list = list;
      });
    },
    skip(cid) {
      console.log(cid);
      //    Bus.$emit('send',cid)
      this.$router.push(`/customerdetails/${cid}`);
    }
  }
};
</script >
<style scoped>
.container {
  max-width: 19.2rem;
  margin: 0 auto;
}
/* 容器响应式 */
@media screen and (min-width: 1200px) {
  .container {
    max-width: 1200px;
  }
}

@media screen and (min-width: 992px) and (max-width: 1200px) {
  .container {
    max-width: 960px;
  }
}
@media screen and (min-width: 768px) and (max-width: 991px) {
  .container {
    max-width: 720px;
  }
}
@media screen and (min-width: 576px) and (max-width: 768px) {
  .container {
    max-width: 540px;
  }
}

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
/* 分页 */
.el-pagination.is-background .el-pager li:not(.disabled).active {
  background-color: #2f2f2f !important;
  color: #fff;
}
li {
  width: 40px;
  height: 40px;
}
</style>

