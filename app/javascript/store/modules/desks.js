import axios from '../../plugins/axios'

const state = {
  desks: []
}

const getters =  {
  desks: state => state.desks
}

const mutations = {
  setDesks: (state, desks) => {
    state.desks = desks
  },
  addDesk: (state, desk) => {
    state.desks.push(desk)
  },
  deleteDesk: (state, deleteDesk) => {
    state.desks = state.desks.filter(desk => {
      return desk.id != deleteDesk.id
    })
  },
  updateDesk: (state, updateDesk) => {
    const index = state.desks.findIndex(desk => {
      return desk.id == updateDesk.id
    })
    state.desks.splice(index, 1, updateDesk)
  },
}

const actions = {
  fetchDesks({ commit }) {
    axios.get('desks')
      .then(res => {
        commit('setDesks', res.data)
      })
      .catch(err => console.log(err.response));
  },
  createDesk({ commit }, desk) {
    return axios.post('desks', desk)
      .then(res => {
        commit('addDesk', res.data)
      })
  },
  deleteDesk({commit}, desk) {
    return axios.delete(`desks/${desk.id}`)
      .then(res => {
        commit('deleteDesk', res.data)
      })
  },
  updateDesk({commit}, desk) {
    return axios.patch(`desks/${desk.id}`, desk)
      .then(res => {
        commit('updateDesk', res.data)
      })
  }
}

export default {
  namespaced: true,
  state,
  getters,
  mutations,
  actions
}
