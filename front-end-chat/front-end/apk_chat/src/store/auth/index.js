import axios from 'axios'
// const { URL } = require('../../helper/env')
const state = () => {
  return {
    token: localStorage.getItem('tokenaccess') || null,
    dataUsers: {
      detailUser: {}
    }
  }
}
const getters = {
  isLogin (state) {
    if (state.token !== null) {
      return true
    } else {
      return alert('Silahkan login terlebih dahulu!')
    }
  },
  getDetailUser (state) {
    return state.dataUsers
  }
}
const mutations = {
  GET_DETAIL_USER (state, payload) {
    state.dataUsers.detailUser = payload
  }
}
const actions = {
  registrasi (context, payload) {
    return new Promise((resolve, reject) => {
      axios.post('http://localhost:3000/users/register', payload)
        .then((result) => {
          resolve(result.data.message)
        }).catch((err) => {
          reject(err)
        })
    })
  },
  login (context, payload) {
    return new Promise((resolve, reject) => {
      axios.post('http://localhost:3000/users/login', payload)
        .then((result) => {
          if (result.data.message === 'Success Login') {
            localStorage.setItem('tokenaccess', result.data.data.tokenaccess)
            localStorage.setItem('refreshtoken', result.data.data.refreshtoken)
            localStorage.setItem('id', result.data.data.id)
            localStorage.setItem('fullname', result.data.data.fullname)
            localStorage.setItem('image', result.data.data.image)
            resolve()
          } else {
            resolve(result.data.message)
            window.location = '/'
          }
        }).catch((err) => {
          alert(err.message)
        })
    })
  },
  actgetDetailUser (context, payload) {
    return new Promise((resolve, reject) => {
      axios.get(`http://localhost:3000/users/getDetail/${payload}`)
        .then((result) => {
          context.commit('GET_DETAIL_USER', result.data.data[0])
          resolve(result.data)
        }).catch((err) => {
          reject(err)
        })
    })
  },
  actUpdateUser (context, payload) {
    return new Promise((resolve, reject) => {
      axios.put(`http://localhost:3000/users/update/${payload.id}`, payload.dataUser)
        .then((result) => {
          console.log(result.config.url)
          resolve(result.data.message)
        }).catch((err) => {
          reject(err)
        })
    })
  },
  logout (context) {
    return new Promise((resolve) => {
      localStorage.removeItem('tokenaccess')
      localStorage.removeItem('refreshtoken')
      resolve()
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
