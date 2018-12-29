<template>
  <div class="swiper">
    <swiper :options="swiperOption">
    <!-- slides -->
    <swiper-slide v-for="item of SwiperList" :key="item.id">
      <img class="swiper-img" :src="item.imgUrl" alt="">
    </swiper-slide>

    <!-- Optional controls -->
    <div class="swiper-pagination"  slot="pagination"></div>

  </swiper>
  </div>
</template>

<script>
export default {
  name: 'HelloWorld',
  data () {
    return {
      swiperOption:{
        pagination:'.swiper-pagination',
        loop:true
      },
      SwiperList:[
        {
          id:'0001',
          imgUrl:'https://s2.luckincoffeecdn.com/luckywebrm/images/index/cooperation/part5_picture1.png'
        },
        {
          id:'0002',
          imgUrl:'https://s2.luckincoffeecdn.com/luckywebrm/images/index/cooperation/part5_picture2.png'
        },
        {
          id:'0001',
          imgUrl:'https://s2.luckincoffeecdn.com/luckywebrm/images/index/cooperation/part5_picture1.png'
        }
      ]
    }
  }
}
</script>

<!-- Add "scoped" attribute to limit CSS to this component only -->
<style scoped lang="stylus">
  .swiper >>> .swiper-pagination-bullet
    border: 1px solid #fff
  .swiper >>> .swiper-pagination-bullet-active
    background:#fff !important
  .swiper
    overflow:hidden
    width: 100%
    height:0
    padding-bottom:49%
    .swiper-img
      width:100%
</style>
