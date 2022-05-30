import Vue from 'vue'
import Vuex from 'vuex'
import desks from './modules/desks'
import users from './modules/users'

Vue.use(Vuex)

export default new Vuex.Store({
  modules: {
    desks,
    users,
  }
})
