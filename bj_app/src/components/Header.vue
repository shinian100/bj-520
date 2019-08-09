<template>
  <div class="bar flex">
    <div class="navbar flex">
      <a href="/" class="navbar-brand">
        <img src="../../public/images/logo.png" alt>
      </a>
      <el-menu
        class="el-menu-demo flex"
        mode="horizontal"
        background-color="#000"
        text-color="#fff"
        active-text-color="#fff"
      >
        <el-menu-item index="1">
          <router-link to="/">首页</router-link>
        </el-menu-item>
        <el-submenu index="2" text-color="#fff">
          <template slot="title">公司简介</template>
          <el-menu-item index="2-1">
            <router-link to="/">品牌介绍</router-link>
          </el-menu-item>
          <el-menu-item index="2-2">
            <router-link to="/">明星作品</router-link>
          </el-menu-item>
          <el-menu-item index="2-3">
            <router-link to="/">服务保障</router-link>
          </el-menu-item>
          <el-menu-item index="2-4">
            <router-link to="/">自选摄影师</router-link>
          </el-menu-item>
          <el-menu-item index="2-5">
            <router-link to="/">分店介绍</router-link>
          </el-menu-item>
          <el-menu-item index="2-6">
            <router-link to="/">360全景探店</router-link>
          </el-menu-item>
          <el-menu-item index="2-7">
            <router-link to="/">品牌活动</router-link>
          </el-menu-item>
        </el-submenu>
        <el-menu-item index="3">
          <router-link to="/">当季特惠</router-link>
        </el-menu-item>
        <el-menu-item index="4">
          <router-link to="/travel/1">旅拍城市</router-link>
        </el-menu-item>
        <el-menu-item index="5">
          <router-link to="/photoshow/1">客照欣赏</router-link>
        </el-menu-item>
        <el-menu-item index="6">
          <router-link to="/">客户微电影</router-link>
        </el-menu-item>
        <el-menu-item index="7">
          <router-link to="/customerList">客户评价</router-link>
        </el-menu-item>
        <el-menu-item index="8">
          <router-link to="/">尚品旅拍</router-link>
        </el-menu-item>
        <el-menu-item index="9">
          <router-link to="/">奶茶旅拍</router-link>
        </el-menu-item>
        <el-menu-item index="10">
          <router-link to="/">会员登陆</router-link>
        </el-menu-item>
      </el-menu>
    </div>
  </div>
</template>
<script>
export default {
  data() {
    return {
      activeIndex: "",
      activeIndex2: ""
    };
  },
  methods: {
    handleSelect(key, keyPath) {
      console.log(key, keyPath);
    }
  }
};
</script>

<style lang="scss" scoped>
.bar {
  text-align: center;
  background-color: #000;
  .navbar {
    height: 0.8rem;
    margin: 0 auto;
    line-height: 0.8rem;
    // align-items: center;

    .navbar-brand {
      margin-right: 0.8rem;
      line-height: 0.7rem;
    }
    .el-menu--horizontal {
      border: 0;
      align-items: center;
      justify-content: flex-start;
      width: 8.8rem;
      height: 0.8rem;
      .el-submenu {
        .el-submenu__title {
          padding: 0 0.1rem;
          border-bottom: 0;
        }
      }
      .el-menu-item {
        border: 0;
        padding: 0 0.1rem;
        a {
          font-size: 0.1rem;
        }
      }
      .el-menu-item.is-active {
        border: 0;
      }
    }
  }
}
a {
  color: #fff;
}
</style>