<template>
  <div class="swiper-container">
    <!-- swiper -->
    <swiper :options="swiperOption">
      <swiper-slide>
        <router-link to="/">
          <img src="../../public/images/carousel/1.jpg" alt>
        </router-link>
      </swiper-slide>
      <swiper-slide>
        <router-link to="/">
          <img src="../../public/images/carousel/2.jpg" alt>
        </router-link>
      </swiper-slide>
      <swiper-slide>
        <router-link to="/">
          <img src="../../public/images/carousel/3.jpg" alt>
        </router-link>
      </swiper-slide>
      <swiper-slide>
        <router-link to="">
          <img src="../../public/images/carousel/4.jpg" alt>
        </router-link>
      </swiper-slide>
      <swiper-slide>
        <router-link to="/">
          <img src="../../public/images/carousel/5.jpg" alt>
        </router-link>
      </swiper-slide>
      <div class="swiper-pagination" slot="pagination"></div>
      <div class="swiper-button-prev swiper-button-white" slot="button-prev"></div>
      <div class="swiper-button-next swiper-button-white" slot="button-next"></div>
    </swiper>
  </div>
</template>

<script>
export default {
  name: "",
  data() {
    return {
      swiperOption: {
        autoplay: {
          delay: 3000,
          stopOnLastSlide: false,
          disableOnInteraction: false
        },
        // pagination: {
        //   el: ".swiper-pagination"
        // },
        loop: true,
        navigation: {
          nextEl: ".swiper-button-next",
          prevEl: ".swiper-button-prev"
        }
      }
    };
  }
};
</script>
<style scoped>
.swiper-container .swiper-wrapper a img {
  width: 100%;
  height: 100%;
}
.swiper-container .swiper-button-prev,
.swiper-container .swiper-button-next {
  padding: 0.16rem 0.12rem;
  background-color: rgba(105, 93, 93, 0.2);
  border-radius: 0.07rem;
}
.swiper-container .swiper-button-prev {
  left: 10%;
  padding: 0.16rem 0.12rem;
  background-color: rgba(105, 93, 93, 0.2);
  border-radius: 0.07rem;
}
.swiper-container .swiper-button-next {
  right: 10%;
}
</style>