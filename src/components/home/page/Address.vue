<template>
    <div class="address">
      <div class="address-title">
        <div class="title">岗头发展大厦</div>
        <div class="away">距离51m</div>
      </div>
      <div class="address-select">
        <div class="select"  v-for="(item,index) of select"
           @click="changeClass(index)"
           :class="{'active':ind === index }"
        >{{item.name}}</div>
      </div>
    </div>
</template>

<script>
export default {
  name: 'HomeAddress',
  props:{
    select:Array
  },
  data(){
    return{
      ind: 0
    }
  },
  methods:{
    changeClass(index){
      this.ind = index
      setTimeout(() => {
        if(index === 1){
          this.$router.push('/Addr')
        }
      },100)

    }
  }
}
</script>

<style scoped lang="stylus" rel="stylesheet/stylus">
.address
  overflow hidden
  height 0
  padding-bottom 15%
  .address-title
    float left
    width 60%
    margin-top .2rem
    .title
      font-size .3rem
      line-height 25px
      margin-left  .2rem
    .away
      font-size .24rem
      line-height 25px
      margin-left  .2rem
  .address-select
    float right
    margin-right: .2rem
    margin-top .2rem
    border .01rem solid #25a4bb
    border-radius .4rem
    padding .03rem
    .select
      float left
      font-size .3rem
      line-height .6rem
      padding 0 .2rem 0 .2rem
    .active
      border .01rem solid #25a4bb
      border-radius .4rem
      background #25a4bb
</style>
