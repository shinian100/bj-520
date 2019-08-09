<template>
     <!-- 客户评价列表 -->
     
       <div class="onelist" style="text-align:left" >
              <div ><img :src="imgUrl" alt=""></div>
              <div class="textwidth">
                  <div  class="text" > 
                    <div class="titleflex"><span class="title">{{title}}</span><span class="city">{{city}}</span></div>
                    <p class="subtitle">{{subtitle}}</p>
                  </div>
                  <div class="date titleflex">
                      <span>{{updateTime}}</span><img src="../../assets/cuslist/news_jh.png" alt="" style="width:36px;height:36px">
                  </div>
              </div>
      </div> 
</template>
<script>
export default {
    data(){
        return{}
    },
    props:["imgUrl","title","subtitle","updateTime","city"]
}
</script>
<style>
  /* 边框阴影 */
    .onelist{
        box-shadow:0px 0px 10px 5px #f3f3f3;
        margin-bottom:50px;
        display: flex;
    }
    /* 1200以下换行 */
    @media screen and (max-width:1200px){
         .onelist{
             flex-wrap: wrap;
         }
         .textwidth{
             width:70%;
         }
    }
    .text{
        margin:30px 40px;
    }
    /* 标题 */
    .titleflex{
        display:flex;
        justify-content: space-between;
    }
   .title{
       font-size:24px;
       color:#111111;
       margin-bottom:23px;
   }
   .city{
       color:#333333;
       font-size:18px
   }
   /* 副标题 */
   div>p.subtitle{
       font-family:"宋体";
       font-size:17px;
       height:55px;
       color:#333333;
   }
   /* 日期 */
   .date{
       background-color:#2f2f2f;
       padding:15.5px 40px;
       color:#d1d1d1;
       font-size:30px;
       font-family: "[Helvetica]";
       align-items: center;
   }
</style>


