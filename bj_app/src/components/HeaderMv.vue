
  

<template>
  <div class="video">
    <div class="header_video">
      <video src="../../public/images/hd_hq.mp4" autoplay muted loop></video>
    </div>
    <div class="index_zw"></div>
    <div class="i_all">
      <div class="i_content flex">
        <img class="img-fluid i_logo" src="../../public/images/logo_1.png" alt>
        <img class="img-fluid i_eng" src="../../public/images/logo_2.png" alt>
        <span class="i_mouse"></span>
        <span class="i_jh"></span>
        <div class="i_scroll">
          <router-link to="/">scroll</router-link>
        </div>
      </div>
    </div>
  </div>
</template>

<script>
export default {
  name: "HeaderMv",
  data() {
    return {
      screenWidth: document.body.clientWidth,
      screenHeight: document.body.clientHeight
    };
  },
  mounted() {
    //   window.onresize = () => {
    //     return () => {
    //       this.screenWidth = document.body.clientWidth;
    //       this.clientHeight = document.body.clientHeight;
    //     };
    //   };
    //   console.log(this.screenWidth, this.screenHeight);
  }
};
</script>
<style lang="scss" scoped>
.video {
  padding: 0;
  margin: 0;
  height: 100%;
  width: 100%;
  position: relative;

  .header_video {
    text-align: center;
    video {
      width: 100%;
      height: auto;
      object-fit: fill;
    }
  }
  .index_zw {
    width: 100%;
    height: 100%;
    background-color: #777;
    position: absolute;
    z-index: 1000;
    top: 0;
    // left: 50%;
    // transform: translate(-50%, -50%);
    opacity: 0.5;
  }
  .i_all {
    position: absolute;
    width: 100%;
    height: 100%;
    z-index: 1100;
    top: 0;
    // left: 100%;
    // transform: translate(-50%, -90%);
    .i_content {
      flex-direction: column;
      flex-wrap: wrap;
      justify-content: center;
      align-items: center;
      opacity: 1;
      .i_logo {
        display: block;
        // margin: 0 auto 0.5rem;
        margin-top: 15%;
      }
      .i_eng {
        display: block;
        margin-top: 2%;
        // margin: 0 auto;
      }
      .i_mouse {
        width: 0.64rem;
        height: 0.64rem;
        margin-top: 10%;
        background: url("../../public/images/mouse.png");
        background-size: 0.64rem 0.64rem;
        display: block;
        // margin: 11% auto 0;
      }
      .i_jh {
        margin-top: .15rem;
        width: 0.32rem;
        height: 0.32rem;
        background: url("../../public/images/logo_jh.png");
        background-size: 0.32rem 0.32rem;
        display: block;
        // margin: 0.5% auto 0;
      }
      .i_scroll {
        margin-top: .1rem;
        // margin: 2% auto;
        text-align: center;
        a {
          color: #fff;
        }
      }
    }
  }
}
</style>