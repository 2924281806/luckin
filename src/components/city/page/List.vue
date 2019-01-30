<template>
    <div class="list" ref="wrapper">
      <div>
        <div class="area">
          <div class="title border-topbottom">当前定位城市</div>
          <div class="button-list">
            <div class="button-wrapper">
              <span class="iconfont arrow_icon">&#xe605;</span>
              <div class="button">{{this.currentCity}}</div>
            </div>
          </div>
        </div>

        <div class="area" v-for="(item,key) of cities" :key="key" :ref="key">
          <div class="title border-topbottom" v-if="item.length != 0">{{key}}</div>
          <div class="item-list">
            <div class="item border-bottom" v-for="innerItem in item" :key="innerItem.id"
                @click="handleCityClick(innerItem.name)">{{innerItem.name}}</div>
          </div>
        </div>
     </div>
    </div>
</template>

<script>
  import Bscroll from 'better-scroll'
  import { mapState,mapMutations } from 'vuex'
    export default {
        name: 'CityList',
        props:{
          cities:Object,
          letter:String
        },
        computed:{
          ...mapState({
            currentCity:'city'
          })
        },
        methods:{
          handleCityClick(city){
            this.changeCity(city)
            this.$router.push('/Addr')

          },
          ...mapMutations(['changeCity'])
        },
        mounted () {
          this.scroll = new Bscroll(this.$refs.wrapper,{
            click:true
          })
        },
        watch:{
          letter(){
            if(this.letter){
              const element = this.$refs[this.letter][0]
              this.scroll.scrollToElement(element)
            }

          }
        }
    }
</script>

<style scoped lang="stylus" rel="stylesheet/stylus">
  .border-topbottom
    &:before
      border-color :#ccc
    &:after
      border-color :#ccc
  .border-bottom
    &:before
      border-color :#ccc
  .list
    overflow :hidden
    position :absolute
    top:.86rem
    left :0
    right:0
    bottom :0
    .title
      line-height :.54rem
      background :#eee
      padding-left :.2rem
      color: #666666
      font-size: .26 rem
    .button-list
      overflow :hidden
      padding :.1rem .6rem .1rem .1rem
      .button-wrapper
        float :left
        width :33.33%
        .button
          display: inline-block
          margin : .1rem
          padding:.1rem
          text-align :center
    .item-list
      .item
        line-height :.76rem
        padding-left :.2rem
</style>
