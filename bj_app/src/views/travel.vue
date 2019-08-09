<template>
   <div id="top">
     <my-header></my-header>
     <div class="container">
     <!-- 面包屑导航 -->
     <el-breadcrumb separator=">">
       <el-breadcrumb-item>
         您当前的位置：<a href="/">铂爵（伯爵）旅拍婚纱摄影</a>  
        </el-breadcrumb-item>
       <el-breadcrumb-item><a href="#/travelList">客户婚纱照</a></el-breadcrumb-item>
       <el-breadcrumb-item>{{address}}</el-breadcrumb-item>
     </el-breadcrumb>
    <!-- 顶部导航 -->
     <el-header class="margin_top" >
       <city-list @sendVal='changeAddress' ></city-list>
     </el-header>
     <div v-for="(item,i) of rounter" :key="i" :data-id="i">
       <img :src="`http://127.0.0.1:3000/travel/${del}/${item}`" alt="" class="img">
     </div>
      <div class="button"><a href="#top">返回顶部</a></div>
     </div>
     <my-footer></my-footer>
   </div> 
</template>
<script>
import myHeader from '../components/Header.vue'
import myFooter from '../components/Footer.vue'
import CityList from '../components/CityList.vue'
export default {
    data(){
      return {
          rounter:[],
	        address:"厦门",
          del:"xiamen",
          href:"27"
      } 
    },
    components:{
      "myHeader":myHeader,
      "myFooter":myFooter,
      "CityList":CityList
    },
    created(){

        this.loadMore()
    },
    methods: {
    loadMore(){
       var url="travel/";
       var address ='厦门';
       var obj={address}
       this.axios.get(url,{params:obj}).then(result => {
        //console.log(result.data.data)
         this. rounter = result.data.data[0].pics.split(",");
         this.$router.push(`/travel/${this.href}`);

      })
    },
     changeAddress(city){
      //console.log(city)
      this.rounter = [];
      this.axios
        .get("travel/", { params: { address: city} })
        .then(result => {
          this.rounter = result.data.data[0].pics.split(",");
          //console.log(result.data.data);
         this.del=result.data.data[0].del;
         this.address=result.data.data[0].address;
         this.href=result.data.data[0].href;
         this.$router.push(`/travel/${this.href}`);
        });
    },
    }
    
}
</script>
<style scoped>
  .container {
    width: 100%;
    padding-right: 15px;
    padding-left: 15px;
    margin-right: auto;
    margin-left: auto;
  }
  .el-breadcrumb{
    margin:10.1% auto 3%;
    font-size:16px;
    font-family: 宋体;
    color: #000;
  }
  .city_list{
    max-width: 0 !important;
  }
  .el-header{
   margin-bottom: 8.1%;
    padding: 0 !important;
  }
  .img{
    margin-bottom: 3.39%;
    width:100%;
  }
  div .margin_top{
    padding: 0 !important;
  }
  .button{
    background-color: #000;
    outline: none;
    border: none;
    width:15%;
    line-height:200%;
    margin: 0 auto;
    font-size: 20px;
  }
  a{
     color: #fff;
  }
</style>
