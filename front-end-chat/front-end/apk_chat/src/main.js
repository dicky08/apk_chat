import Vue from 'vue'
import App from './App.vue'
import router from './router'
import store from './store'
import 'bootstrap/dist/css/bootstrap.css'
import 'bootstrap-vue/dist/bootstrap-vue.css'
import '../src/assets/css/index.css'
import { BootstrapVue, IconsPlugin } from 'bootstrap-vue'
import * as vueMaps from 'vue2-google-maps'
Vue.config.productionTip = false

Vue.use(vueMaps, {
  load: {
    key: ' AIzaSyBSraH5JA-j6lLMGSKkYtpBx0OwU9HoI2s'
  }
})
// Install BootstrapVue
Vue.use(BootstrapVue)
// Optionally install the BootstrapVue icon components plugin
Vue.use(IconsPlugin)
new Vue({
  router,
  store,
  render: h => h(App)
}).$mount('#app')
