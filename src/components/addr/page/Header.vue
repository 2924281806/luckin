<template>
  <div class="header">
    <div class="header-top">
      <router-link to="/">
        <span class="iconfont arrow_icon">&#xe607;</span>
      </router-link>
      <span class="country">城市选择</span>
      <span class="iconfont arrow_icon_r">&#xe634;</span>
    </div>


  </div>
</template>

<script>
import { mapState } from 'vuex'
export default {
  name: 'AddrHeader',
  computed:{
    ...mapState(['city'])
  }
}
</script>

<style scoped lang="stylus" rel="stylesheet/stylus">
  .header
    overflow hidden
    height .8rem
    line-height .8rem
    text-align center
    .header-top
      /*background red*/
      border-bottom .01rem solid #eee
      .iconfont
        line-height: 0.48rem;
        margin-left .12rem
        font-weight bold
        margin-top .1rem
      .country
        padding 0 2.5rem
        margin 0 auto
        height .64rem
        line-height .8rem
        font-size .35rem
      .arrow_icon
        color #333333
      .arrow_icon_r
        font-size .5rem

</style>
