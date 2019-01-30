<template>
    <div class="carousel">
      <swiper :options="swiperOption" v-if="showSwiper">
        <swiper-slide  v-for="item of list" :key="item.id">
          <img class="img" :src="item.imgUrl" alt="">
        </swiper-slide>
        <div class="swiper-pagination"  slot="pagination"></div>
      </swiper>
    </div>
</template>

<script>
export default {
  name: 'HomeCarousel',
  props: {
    list:Array
  },
  data () {
    return {
      swiperOption: {
        pagination: '.swiper-pagination',
        autoplay: 1000,
        speed: 500,
        loop: true
      }
    }
  },
  computed:{
    showSwiper(){
      return this.list.length
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
    padding-bottom :83%
    background :#eee
    .img
      width 100%
      height 100%
</style>
