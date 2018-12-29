<template>
  <div>
    <home-swiper></home-swiper>
  </div>
  
</template>

<script>
import HomeSwiper from './child/Swiper.vue'
export default {
  name: 'Home',
  components:{
    'home-swiper':HomeSwiper
  }
}
</script>

<!-- Add "scoped" attribute to limit CSS to this component only -->
<style scoped lang="stylus">
	
</style>
