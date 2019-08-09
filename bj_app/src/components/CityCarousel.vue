<template>
  <div class="city_carousel swiper-container">
    <swiper :options="swiperOption" ref="mySwiper">
      <swiper-slide v-for="(item,i) in list" :key="i">
        <div class="city flex">
          <router-link :to="`/travel/${item.cid}/`">
            <img :src="`http://127.0.0.1:3000/city/${item.car_img}`" class="img-fluid" alt>
            <div class="city_content">
              <p>
                <span class="span1">{{item.nameEng}}</span>
                &nbsp;
                <span class="span2">{{item.nameCHI}}</span>
              </p>
              <span>最新客照展示</span>
              <div class="tsgd">点击查看</div>
            </div>
          </router-link>
        </div>
      </swiper-slide>
    </swiper>
  </div>
</template>

<script>
// import city from "./city";
export default {
  data() {
    return {
      swiperOption: {
        slidesPerView: 3,
        slidesPerGroup: 3,
        loopFillGroupWithBlank: true,
        autoplay: {
          delay: 3000,
          stopOnLastSlide: false,
          disableOnInteraction: false
        },
        // pagination: {
        //   el: ".swiper-pagination"
        // },
        loop: true
        // navigation: {
        //   nextEl: ".swiper-button-next",
        //   prevEl: ".swiper-button-prev"
        // }
      },
      list: []
    };
  },
  created() {
    this.getCityCarousel();
  },
  components: {
    // city
  },
  methods: {
    getCityCarousel() {
      this.axios.get("city/").then(result => {
        // console.log(result.data.data[1].nameEng);
        this.list = result.data.data;
        // console.log(this.list);
      });
    }
  }
};
</script>

<style lang="scss" scoped>
.swiper-container {
  width: 100%;
  height: 100%;
  .swiper-slide {
    width: 4.78rem;
    height: 100%;
    .city {
      flex-direction: column;
      display: inline-block;
      border: 1px solid #e6e6e6;
      border-left: none;
      padding: 0.2rem;
      a {
        color: #000;
        .city_content {
          font-family: "宋体";
          text-align: center;
          margin: 0.5rem auto 0.2rem;
          span {
            font-size: 0.16rem;
            color: #8d8d8d;
          }
          p {
            margin-top: 0;
            margin-bottom: 0.1rem;
            .span1 {
              font-size: 0.22rem;
              line-height: 0.28rem;
              font-family: "Didot";
              color: #000;
            }
            .span2 {
              font-size: 0.2rem;
              line-height: 0.28rem;
              font-family: "宋体";
              color: #000;
            }
          }
          div {
            font-size: 0.15rem;
            transition: background-color 1s color 1s;
            width: 1.3rem;
            height: 0.4rem;
            border: 1px solid #000;
            text-align: center;
            line-height: 0.4rem;
            letter-spacing: 0.02rem;
            margin: 0.3rem auto 0;
          }
        }
      }
    }
  }
}
</style>