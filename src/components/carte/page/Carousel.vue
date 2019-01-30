<template>
  <div class="carousel">
    <div class="title">选择咖啡和小食</div>
    <div>
      <swiper :options="swiperOption">
        <swiper-slide>
          <img class="img" src="http://localhost:8080/img/h1.jpg" alt="">
        </swiper-slide>
        <swiper-slide>
          <img class="img" src="http://localhost:8080/img/h2.jpg" alt="">
        </swiper-slide>
        <swiper-slide>
          <img class="img" src="http://localhost:8080/img/h3.jpg" alt="">
        </swiper-slide>
      </swiper>
    </div>
  </div>
</template>

<script>
export default {
  name: 'MenuCarousel',
  data () {
    return {
      swiperOption: {
        autoplay: 1000,
        speed: 200,
        loop: true
      }
    }
  }
}
</script>

<style scoped lang="stylus" rel="stylesheet/stylus">
  .carousel >>> .swiper-pagination-bullet-active
    background #ffffff
  .carousel
    overflow :hidden
    width :100%
    height:0
    padding-bottom :50%
    .title
      font-size .4rem
      text-align center
      line-height .8rem
    .img
      width 100%
</style>
