<template>
    <div class="city">
      <city-header></city-header>
      <city-list :cities="cities":letter="letter"></city-list>
      <city-alphabet :cities="cities" @change="handleLetterChange"></city-alphabet>
    </div>
</template>

<script>
    import CityHeader from './page/header'
    import CityList from './page/list'
    import Alphabet from './page/alphabet'
    import axios from 'axios'
    export default {
        name: 'cityHeader',
        components:{
          "city-header":CityHeader,
          "city-list":CityList,
          "city-alphabet":Alphabet
        },
        data(){
          return{
            cities:{},
            letter:''
          }
        },
        methods:{
          getCityInfo(){
            axios.get('/api/city.json')
              .then(this.handleGetCityInfoSucc)
          },
          handleGetCityInfoSucc(res){
            const data = res.data
            this.cities = data.cities
            console.log(this.cities)
          },
          handleLetterChange(letter){
            this.letter = letter
          }
        },

        mounted(){
          this.getCityInfo()
        }
    }
</script>

<style scoped lang="stylus">

</style>
