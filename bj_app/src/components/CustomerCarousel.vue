<template>
  <div class="container">
    <div class="brand_words">
      <h1>LATEST CUSTOMER PHOTOS</h1>
      <p>铂爵旅拍，最新客照</p>
      <span>FRIEND IS WHO CAN GIVE YOU STRENGTH AT LAST LOVE IS A LAMP,WHILE FRIENDSHIP IS THE SHADOW.WHEN WHE LAMP IS OFF.YOU WILL</span>
      <span>FIND THE SHADOW EVERYWHERE.FRIEND IS WHO CAN GIVE YOU STRENGTH AT LAST.</span>
    </div>
    <div class="swiper_container">
      <swiper :options="swiperOption" ref="mySwiper">
        <swiper-slide v-for="(item,i) in list" :key="i">
          <div class="flex">
            <router-link :to="`/travel/${item.did}/`">
              <img
                :src="`http://127.0.0.1:3000/cuspho/${item.pname}/${item.pics}`"
                class="img-fluid"
                alt
              >
              <div class="content">
                <p class="guest-photo-text1">LATEST GUESTBOOK</p>
                <p class="guest-photo-text2">{{item.ptime}}</p>
              </div>
            </router-link>
          </div>
        </swiper-slide>
      </swiper>
    </div>
  </div>
</template>

<script>
export default {
  data() {
    return {
      swiperOption: {
        slidesPerView: 4,
        slidesPerGroup: 4,
        grabCursor: true,
        loop: true,
        // loopFillGroupWithBlank: true,
        autoplay: {
          delay: 3000,
          stopOnLastSlide: false,
          disableOnInteraction: false
        }
      },
      list: []
    };
  },
  created() {
    this.customerphoto();
  },
  methods: {
    customerphoto() {
      this.axios.get("customerphoto/").then(result => {
        this.list = result.data.data;
        // console.log(this.list);
        for (var i = 0; i < this.list.length; i++) {
          this.list[i].pics = this.list[i].pics.substr(0, 5);
          // console.log(this.list[i].pics);
        }
        console.log(this.list);
      });
    }
  }
};
</script>

<style lang="scss" scoped>
.container {
  box-sizing: border-box;
  max-width: 11.8rem;
  .brand_words {
    margin-top: 9.3%;
    margin-bottom: 5%;
    text-align: center;
    h1 {
      font-family: Didot;
      font-size: 0.38rem;
      margin-bottom: 0.15rem;
      font-weight: 400;
    }
    p {
      font-family: 思源黑体;
      font-size: 0.26rem;
      margin-bottom: 2.6%;
    }
    span {
      font-family: Arial;
      font-size: 0.12rem;
      display: block;
      width: 100%;
      transform: scale(0.64);
    }
  }
  .swiper_container {
    margin-top: 5%;
    margin: 0 auto;
    overflow: hidden;
    padding: 0;
    z-index: 1;
    .swiper-wrapper {
      position: relative;
      .swiper-slide {
        margin-right: 0.2rem;
        width: 2.8rem !important;
        height: 100%;
        .content {
          color: #212529;
          text-align: center;
          font-size: 0.16rem;
          .guest-photo-text1 {
            margin-bottom: 4%;
            margin-top: 11%;
            font-family: Myriad Pro;
            font-weight: normal;
            letter-spacing: 1px;
          }
          .guest-photo-text2 {
            font-family: "宋体";
            letter-spacing: 1px;
          }
        }
      }
    }
  }
}
</style>