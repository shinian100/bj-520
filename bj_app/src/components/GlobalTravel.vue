<template>
  <div class="container">
    <div class="global_travel">
      <h1>LATEST CUSTOMER PHOTOS</h1>
      <p>铂爵旅拍最新微电影</p>
      <span>FRIEND IS WHO CAN GIVE YOU STRENGTH AT LAST LOVE IS A LAMP,WHILE FRIENDSHIP IS THE SHADOW.WHEN WHE LAMP IS OFF.YOU WILL</span>
      <span>FIND THE SHADOW EVERYWHERE.FRIEND IS WHO CAN GIVE YOU STRENGTH AT LAST.</span>
    </div>
    <div class="video_intro">
      <video controls name="media" src="../../public/images/moviehd_hq.mp4">您的浏览器不支持 video 标签。</video>
    </div>
    <div class="video-area-text">
      <p>RECORD YOUR WEAR A WEDDING DRESS IN THE JOURNEY</p>
      <span>FRIEND IS WHO CAN GIVE YOU STRENGTH AT LAST LOVE IS A LAMP,WHILE FRIENDSHIP IS THE SHADOW.WHEN WHE LAMP IS OFF.YOU WILL</span>
      <span>FIND THE SHADOW EVERYWHERE.FRIEND IS WHO CAN GIVE YOU STRENGTH AT LAST.</span>
    </div>
  </div>
</template>

<script>
export default {
  data() {
    return {};
  }
};
</script>

<style lang="scss" scoped>
.container {
  max-width: 11.8rem;
  .global_travel {
    margin-top: 0.92rem;
    text-align: center;
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
  .video_intro {
    width: 100%;
    height: auto;
    margin-top: 0.6rem;
  }
  .video-area-text {
    text-align: center;
    margin-top: 6.7%;
    p {
      font-family: Didot;
      font-size: 0.2rem;
      margin-bottom: 2%;
    }
    span {
      font-family: Arial;
      font-size: 0.12rem;
      display: block;
      width: 100%;
      transform: scale(0.64);
    }
  }
}
</style>