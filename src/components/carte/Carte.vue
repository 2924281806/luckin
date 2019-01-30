<template>
    <div class="carte">
      <menu-carousel></menu-carousel>
      <menu-goods :goods="goods"></menu-goods>
      <home-footer></home-footer>
    </div>
</template>

<script>
import MenuCarousel from './page/Carousel.vue'
import HomeGoods from './page/Goods.vue'
import HomeFooter from '../common/Footer.vue'
import axios from 'axios'
export default {
  name: 'carte',
  data () {
    return {
      goods: []
    }
  },
  components: {
    'menu-carousel': MenuCarousel,
    'menu-goods': HomeGoods,
    'home-footer': HomeFooter
  },
  methods: {
    getGoodsInfo () {
      axios.get('api/goods.json').then(this.getGoodsInfoSucc)
    },
    getGoodsInfoSucc (res) {
      const data = res.data
      this.goods = data.goods
      console.log(this.goods)
    }
  },
  mounted () {
    this.getGoodsInfo()
  }
}
</script>

<style scoped lang="stylus" rel="stylesheet/stylus">

</style>
