<template>
    <div class="footer">
      <router-link tag="div" to="/" class="tab">
        <div class="icon active">
          <span class="iconfont ">&#xe604;</span>
        </div>
        <div class="title">
          <span>首页</span>
        </div>
      </router-link>

      <router-link tag="div" to="/Carte" class="tab">
        <div class="icon">
          <span class="iconfont">&#xe604;</span>
        </div>
        <div class="title">
          <span>菜单</span>
        </div>
      </router-link>

      <router-link tag="div" to="/Order" class="tab">
        <div class="icon">
          <span class="iconfont">&#xe605;</span>
        </div>
        <div class="title">
          <span>订单</span>
        </div>
      </router-link>

      <router-link tag="div" to="/Cart" class="tab">
        <div class="icon">
          <span class="iconfont">&#xe603;</span>
        </div>
        <div class="title">
          <span>购物车</span>
        </div>
      </router-link>

      <router-link tag="div" to="/Mine" class="tab">
        <div class="icon">
          <span class="iconfont">&#xe606;</span>
        </div>
        <div class="title">
          <span>我的</span>
        </div>
      </router-link>
    </div>
</template>

<script>
export default {
  name: 'HomeFooter'
}
</script>

<style scoped lang="stylus" rel="stylesheet/stylus">
.footer >>> .router-link-exact-active
  color #25a4bb
.footer
  width 100%
  overflow hidden
  height 0
  padding-bottom 13%
  background-color #fff
  position fixed
  left 0px
  bottom 0px
  display flex
  z-index 999
  border-top .01rem solid #eee
  padding-top  .2rem
  .tab
    display flex
    flex 1
    flex-direction column
    align-items center
    .icon
      .iconfont
        font-size .45rem
    .title
      line-height .6rem
      font-size .24rem
      color #666
</style>
