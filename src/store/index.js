/**
 * Created by cWX585857 on 2018/9/18.
 */
 import Vue from 'vue'
 import Vuex from 'vuex'
 import state from './state'
 import mutations from './mutations'

 Vue.use(Vuex)


 export default new Vuex.Store({
  state,
  mutations
 })
