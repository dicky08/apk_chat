import Vue from 'vue'
import Vuex from 'vuex'
import auth from './auth/'
Vue.use(Vuex)

export default new Vuex.Store({
  state: {
    id: localStorage.getItem('id')
  },
  mutations: {
  },
  actions: {
  },
  modules: {
    auth
  }
})
