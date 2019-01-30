<template>
    <div class="list">

      <div class="list-wrapper">
        <div class="list-title">
          <div class="title">现在下单</div>
          <div class="away">OREDER NOW</div>
        </div>
        <div class="list-icon">
          <span class="iconfont">&#xe600;</span>
        </div>
      </div>

      <div class="list-wrapper">
        <div class="list-title">
          <div class="title">咖啡钱包</div>
          <div class="away">COFFEE WALLET</div>
        </div>
        <div class="list-icon">
          <span class="iconfont">&#xe60f;</span>
        </div>
      </div>

      <div class="list-wrapper">
        <div class="list-title">
          <div class="title">送Ta咖啡</div>
          <div class="away">SEND COFFEE</div>
        </div>
        <div class="list-icon">
          <span class="iconfont">&#xe61f;</span>
        </div>
      </div>

      <div class="list-wrapper">
        <div class="list-title">
          <div class="title">企业账户</div>
          <div class="away">ENTERPRISE ACCOUNT</div>
        </div>
        <div class="list-icon">
          <span class="iconfont">&#xe79a;</span>
        </div>
      </div>

      <div class="list-img">
        <img class="img" src="http://localhost:8080/img/001.jpg" alt="">
      </div>
    </div>
</template>

<script>
export default {
  name: 'HomeList'
}
</script>

<style scoped lang="stylus" rel="stylesheet/stylus">
.list
  overflow hidden
  height 0
  padding-bottom 94%
  .list-wrapper
    overflow hidden
    border-top .01rem solid #eee
    .list-title
      float left
      width 60%
      margin-top .2rem
      /*background blue*/
      .title
        font-size .3rem
        line-height .46rem
        margin-left  .2rem
      .away
        font-size .24rem
        line-height 25px
        margin-left  .2rem
    .list-icon
      float right
      margin-right: .5rem
      /*background green*/
      margin-top .2rem
      border .01rem solid #333
      border-radius .4rem
      padding .15rem
      .iconfont
        font-size .45rem
        color #333333
  .list-img
    overflow hidden
    .img
      display block
      width 96%
      margin 0 auto
</style>
