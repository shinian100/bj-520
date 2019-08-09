<template>
    <div class=" container p1" >
       <div class="evali p2" >
               <p class="title">客户评价</p>
               <div class="rightimg" v-for="(item,index) of list" :key="index" @click="evali(item.id)"> 
                   <img :src="`http://127.0.0.1:3000/cuslist/${item.img}`" alt=""   >
                   <p>{{item.subtitle}}
                   </p>
               </div>
       </div>
 </div>
</template>
<script >
export default {
    data(){
        return{
            // pnum:this.a,
            cid:this.a,
            psize:3,
            list:[]
        }
    },
    created(){
        this.loadlist();
    },
    methods:{
       loadlist(){
        //    var pnum=this.pnum;
        //    var psize=this.psize;
        //    console.log(pnum,psize)
        //    var obj={pnum:pnum,psize:psize}
        var cid=this.cid
           this.axios.get("li",{params:{cid}}).then((result)=>{
                  var list=result.data.data
                  this.list=list
                  console.log(list)
           })
       },
    //    点击跳转事件
    evali(id){
        console.log(id)
           this.$router.push(`/customerdetails/${id}`) 
    }
    },
    props:["a"]
}
</script >
<style>
     .p1{
      display:flex;
      justify-content: flex-end;
    }
    .evali{
         width:70%;
         /* margin:auto; */
    }
     p.title{
         text-align:left;
         color:#505050;
         border-bottom:1px solid #000;
         font-size:20px;
    }
    .evali img{
        width:100%;
        margin-bottom:15px;
        margin-top:15px;
    }
    .rightimg{
        position:relative;
    }
    div.rightimg img+p{
        color:#fff;
        font-size:11px;
        padding:5px 0;
         height:40px; 
        width:238px; 
        text-align:left;
        overflow:hidden;
        position:absolute;
        top:70%;
        background-color: rgba(0, 0, 0, 0.4);
        /* opacity:0.5;   */
    }
</style>