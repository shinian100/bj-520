<template>
  <div>
    <my-header></my-header>
    <div class="container">
      <el-row :gutter="20">
        <el-col :span="16" v-for="(item,index) of list" :key="index">
          <!-- 导航组件 -->
          <cusnav :classnav="item.classnav" :navtitle="item.title"></cusnav>
          <!--标题 -->
          <p class="title1">{{item.title}}</p>
          <p class="subtitle1">{{item.subtitle}}</p>
          <!-- 文字和图片 -->
          <div style="text-align:left" v-for="(item,index) of arr" :key="index">
            <div class="details">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;{{item.text}}</div>
            <img :src="`http://127.0.0.1:3000/cusdetails/${item.img}`" alt style="width:100%">
          </div>
          <div @click="pre" class="prenex">上一篇</div>
          <div @click="nex" class="prenex">下一篇</div>
          <input type="button" value="返回上一级" class="bt" @click="bt">
        </el-col>
        <!-- 右边 -->
        <el-col :span="8">
          <!-- <img src="../../assets/cuslist/list2.jpg" alt=""> -->
          <evali class="evposition" :a="cid"></evali>
        </el-col>
      </el-row>
    </div>
    <my-footer></my-footer>
  </div>
</template>
<script>
import cusnav from "./cusnav";
import evali from "./evali";
import MyHeader from "../Header";
import MyFooter from "../Footer";
export default {
  data() {
    return {
      // cid:"",
      list: [],
      arr: []
    };
  },
  props: ["cid"],
  created() {
    // var cid=this.cid
    //  console.log(cid)
    this.loaddetails();
    //  Bus.$on('send',function(val){this.cid=val})
  },
  methods: {
    loaddetails() {
      //var cid=this.cid
      var cid = this.cid;
      this.axios
        .get("details", {
          params: { cid }
        })
        .then(result => {
          var list = result.data.data;
          this.list = list;
          //console.log(list)
          var strtext = list[0].details;
          var strimgs = list[0].img;
          //  var strtext=list[cid].details
          //  var strimgs=list[cid].img
          var arrtext = strtext.split("|");
          var arrimg = strimgs.split(",");
          var arr = [];
          for (var i = 0; i < arrtext.length; i++) {
            var obj = {};
            obj.text = arrtext[i];
            obj.img = arrimg[i];
            arr[i] = obj;
          }
          //console.log(arrtext,arrimg[0],)
          //console.log(arr)
          this.arr = arr;
        });
    },
    //    按钮  返回上一级
    bt() {
      history.go(-1);
      console.log(1111);
    },
    //    上下页
    pre() {
      this.cid--;
      this.loaddetails();
    },
    nex() {
      this.cid++;
      this.loaddetails();
    }
  },
  // 组件
  components: {
    cusnav,
    evali,
    MyHeader,
    MyFooter
  }
};
</script>
<style>
/* 容器响应式 */
.container {
  max-width: 19.2rem;
  margin: 0 auto;
}
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
/* 左右组件定位 */
.evposition {
  position: fixed;
  left: 63%;
  top: 10%;
}
/* 标题 */
p.title1 {
  font-size: 25px;
  color: #505050;
  margin-top: 60px;
  margin-bottom: 10px;
}
/* 副标题 */
p.subtitle1 {
  font-family: "宋体";
  font-size: 12px;
  color: #999;
  margin-bottom: 20px;
}
/* 详细内容 */
.details {
  font-size: 16px;
  margin: 15px 0;
}
/* 返回上一级按钮 */
.bt {
  width: 160px;
  height: 45px;
  margin-left: 60%;
  color: #fff;
  font-size: 18px;
  background: #000;
  border: 0;
  display: block;
  margin-bottom: 130px;
}
.prenex {
  font-size: 22px;
  text-align: left;
  margin: 0 0 5px 30px;
}
.prenex:hover {
  cursor: pointer;
}
</style>


