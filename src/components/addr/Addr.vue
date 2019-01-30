
<template>
  <div class="addr">
    <addr-header></addr-header>
    <addr-list></addr-list>
  </div>
</template>

<script>
import AddrHeader from './page/Header.vue'
import AddrList from './page/List.vue'
export default {
  name: 'addr',
  components:{
    'addr-header':AddrHeader,
    'addr-list':AddrList
  }
}
</script>

<style scoped lang="stylus" rel="stylesheet/stylus">

</style>
