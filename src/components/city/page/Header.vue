<template>
    <div class="header">
      选择城市
      <router-link to="/Addr">
        <div class="iconfont header-back">&#xe607</div>
      </router-link>
    </div>
</template>

<script>
    export default {
        name: 'CityHeader'
    }
</script>

<style scoped lang="stylus" rel="stylesheet/stylus">
  @import '~styles/varibles.styl'
  .header
    position :relative
    overflow :hidden
    height :$headerHeight
    line-height :$headerHeight
    text-align :center
    font-size :.32rem
    .header-back
      position: absolute
      top:0
      left:0
      width :.64rem
      text-align :center
      font-size :.4rem
      color #333333
</style>
