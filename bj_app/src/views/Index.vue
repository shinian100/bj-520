<template>
  <el-container>
    <el-header>
      <div class="tabbar">
        <my-header></my-header>
      </div>
    </el-header>
    <el-main>
      <!-- 首页大轮播图 -->
      <my-carousel></my-carousel>
      <div>
        <img class="img-fluid" src="../../public/images/index/index_city.jpg" alt>
      </div>
      <div class="city flex">
        <city-list></city-list>
        <city-carousel/>
      </div>
      <div class="container-fluid">
        <div class="news_spring">
          <a href="https://app.bj520.com/">
            <img class="img-fluid" src="../../public/images/index/new-photo.jpg" alt>
          </a>
          <a href="https://www.bj520.com/page-47.html">
            <img class="news_spring_look" src="../../public/images/index/look.png" alt>
          </a>
        </div>
      </div>
      <!-- 旅拍城市轮播 -->
      <div>
        <customer-carousel></customer-carousel>
      </div>
      <!-- 微电影 -->
      <global-travel></global-travel>
      <!-- 返回顶部 -->
      <el-backtop :bottom="26" :right="200">
        <div v-show="show" class="backTop">
          <i class="el-icon-arrow-up"></i>
        </div>
      </el-backtop>
    </el-main>
    <el-footer>
      <my-footer></my-footer>
    </el-footer>
  </el-container>
</template>

<script>
import MyCarousel from "../components/Carousel";
import MyHeader from "../components/Header";
import MyFooter from "../components/Footer";
import HeaderMv from "../components/HeaderMv";
import CityCarousel from "../components/CityCarousel";
import CityList from "../components/CityList";
import CustomerCarousel from "../components/CustomerCarousel";
import GlobalTravel from "../components/GlobalTravel";
export default {
  name: "Index",
  data() {
    return {
      show: false
    };
  },
  mounted() {
    window.addEventListener("scroll", this.handleScroll);
  },
  methods: {
    handleScroll() {
      this.show = true;
      // console.log(this.show);
    }
  },
  components: {
    MyCarousel,
    MyFooter,
    MyHeader,
    HeaderMv,
    CityCarousel,
    CityList,
    CustomerCarousel,
    GlobalTravel
  }
};
</script>

<style lang="scss" scoped>
.el-container {
  padding: 0;
  .el-header {
    margin: 0 auto;
    height: 0.8rem !important;
    padding: 0;
    width: 100%;
    position: fixed;
    top: 0;
    z-index: 99999;
  }
  .el-main {
    margin-top: 0.8rem;
    overflow: hidden;
    padding: 0;
    .city {
      flex-direction: column;
      justify-content: center;
      align-items: center;
      div {
        margin-top: 5%;
      }
    }
    .container-fluid {
      .news_spring {
        width: 100%;
        margin-top: 1.2rem;
        position: relative;
        .news_spring_look {
          position: absolute;
          width: 9%;
          top: -10%;
          right: 12.5%;
        }
      }
    }
    // 返回顶部

    .backTop {
      height: 100%;
      width: 100%;
      background-color: #414141;
      box-shadow: 0 0 6px rgba(0, 0, 0, 0.12);
      text-align: center;
      line-height: 40px;
      color: #ccc;
      font-size: 30px;
    }
  }
  .el-footer {
    padding: 0;
  }
}
</style>