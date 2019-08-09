<template>
  <div>
    <my-header></my-header>
    <img src="../../public/images/banner1.jpg" width="100%">
    <div class="container">
      <!-- 顶部面包屑导航 -->
      <div class="t-breadcrumbs">
        <el-breadcrumb separator-class="el-icon-arrow-right">
          <el-breadcrumb-item>
            您当前位置：
            <a href="/">铂爵(伯爵)旅拍婚纱摄影</a>
          </el-breadcrumb-item>
          <el-breadcrumb-item>
            <a href="/">客户婚纱照</a>
          </el-breadcrumb-item>
        </el-breadcrumb>
      </div>
      <!-- 图片列表 -->
       <div class="photoList flex">
        <my-photo
          v-for="(item,i) of list"
          :key="i"
          @click="clickPhoto($event)"
          :data-msg="i"
          :imgUrl="`http://127.0.0.1:3000/travel/${item.del}/${item.pics[0]}.jpg`"
          :imgTitle="`${item.address}`"
          :listHref="`http://127.0.0.1:8080/#/travel/${item.href}`"
        ></my-photo>
      </div>
    </div>
    <hr>
    <my-footer></my-footer>
  </div>
</template>

<script>
import myPhoto from "../components/Photo.vue";
import myHeader from "../components/Header.vue";
import myFooter from "../components/Footer.vue";
export default {
  data() {
    return {
      list: [],
      href:""
    };
  },
  components: {
    myPhoto,
    myHeader,
    myFooter
  },
  created() {
    this.loadPhoto();
  },
  methods: {
    loadPhoto() {
      this.axios.get("travelList/").then(result => {
        this.list = result.data.data;
        //console.log(result.data.data);
      });
    },
    clickPhoto(e) {
      // this.address=e.target.innerText;
      // console.log(address);
      // this.axios.get("travel/",{params:{address}}).then(result => {
      //   console.log(result.data.data);
      //   this.href=result.data.data[0].href
        
      // })
    }
  }
};
</script>

<style lang="scss" scoped>
.container {
  max-width: 12.04rem;
  margin: auto;
  // 顶部面包屑
  .t-breadcrumbs {
    margin-top: 36px;
    font-family: 宋体;

    .el-breadcrumb {
      .el-breadcrumb__item {
        a,
        span {
          font-size: 0.15rem;
          font-weight: 500;
        }
      }
    }

    a:hover {
      color: #f00;
    }
  }

  // 图片列表
  .photoList {
    flex-wrap: wrap;
  }

  // 底部分页
  div.el-pagination {
    margin-top: 36px;
    color: #aaa;
  }
}
hr{
  margin-top:1rem;
  border-color: #ccc;
}
</style>