<template>
    <div>
      <div class="goods">
        <div class="menu-wrapper">
          <ul>
            <li class="menu-item" v-for="item of goods">
              <span>{{item.name}}</span>
            </li>
          </ul>
        </div>
        <div class="goods-wrapper" ref="wrapper">
          <ul>
            <li class="food-list food-list-hook" v-for="item in goods">
              <h1 class="title">猜你喜欢</h1>
              <ul>
                <li class="food-item border-1px" v-for="food of item.foods">
                  <div class="icon">
                    <img :src="food.image" width="57" height="57">
                  </div>
                  <div class="content">
                    <h2 class="name">{{food.name}}</h2>
                    <p class="desc">Black Tea Latte</p>
                    <div class="price">
                      <span class="now">￥{{food.price}}</span>
                      <span class="old"  v-show='food.oldPrice'>￥{{food.oldPrice}}</span>
                    </div>
                  </div>
                </li>
              </ul>
            </li>
          </ul>
        </div>
      </div>
    </div>
</template>
<script>
import BScroll from 'better-scroll'
export default {
  name: 'Goods',
  props:{
    goods:Array
  },
  mounted(){
    this.scroll = new BScroll(this.$refs.wrapper,{
      click:true
    })
  }
}
</script>
<style scoped lang="stylus" rel="stylesheet/stylus">
.goods
  overflow: hidden
  display: flex
  position: absolute
  top: 4rem
  left 0
  right 0
  bottom: 1.2rem
  .menu-wrapper
    flex: 0 0 1.8rem
    background: #f3f5f7
    float left
    .menu-item
      display: table
      text-align center
      width: 2rem
      padding: .3rem .01rem
      line-height: .3rem
      border-bottom .01rem solid #eee
  .goods-wrapper
    overflow: hidden
    flex: 1
    position: absolute
    top: 0
    left 1.8rem
    right 0
    bottom: 1.2rem
    .title
      padding-left: 14px
      height: 26px
      line-height: 26px
      font-size: 12px
      color: rgb(147, 153, 159)
      background: #f3f5f7
    .food-item
      display: flex
      margin: 10px
      padding-bottom: 10px
      border-bottom .01rem solid #eee
      .icon
        flex: 0 0 1rem
        margin-right: 10px
      .content
        flex: 1
        .name
          margin: 2px 0 8px 0
          height: 14px
          line-height: 14px
          font-size: 14px
          color: rgb(7, 17, 27)
        .desc, .extra
          line-height: 10px
          font-size: 10px
          color: rgb(147, 153, 159)
        .desc
          line-height: 12px
          margin-bottom: 8px
        .price
          font-weight: 700
          line-height: 24px
          vertical-align: middle
          .now
            margin-right: 8px
            font-size: 14px
            color: rgb(240, 20, 20)
          .old
            text-decoration: line-through
            font-size: 10px
            color: rgb(147, 153, 159)
        .cartcontrol-wrapper
          position: absolute
          right: 0
          bottom: 12px
</style>
