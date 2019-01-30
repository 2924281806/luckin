<template>
    <div class="list">
      <div class="addr">
        <router-link  to="/city" class="location-left">
          {{this.city}}
          <span class="iconfont">&#xe62b;</span>
        </router-link>
        <div class="location-right">
          <span class="iconfont icon">&#xe61b;</span>
          <input class="search-input" type="text" placeholder="输入地址">
        </div>
      </div>
      <div class="wrapper">
        <div class="title">附近地址</div>
        <div class="list-name" v-if="this.city.children">
          <addr-list :list="this.city.children"></addr-list>
        </div>
      </div>

    </div>
</template>

<script>
  import { mapState } from 'vuex'
  export default {
    name: 'addr-list',
    computed:{
      ...mapState(['city'])
    }
  }
</script>

<style scoped lang="stylus" rel="stylesheet/stylus">
.addr
  width 90%
  margin 0 auto
  border .01rem solid #eee
  line-height .6rem
  height .6rem
  margin-top .1rem
  .location-left
    float left
    width 30%
    color black
    text-align center
    border-right .01rem solid #eee
  .location-right
    float left
    .icon
      font-size .45rem
    .search-input
      margin-bottom .1rem

.wrapper
  padding-top .1rem
  .title
    width 100%
    background #eee
    height .8rem
    line-height .8rem
    font-size .3rem
    padding 0 .3rem
  .list-name
    width 100%
    height .8rem
    line-height .8rem
    font-size .3rem
    padding 0 .3rem
    border-top .01rem solid #eee
</style>
