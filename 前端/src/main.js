import Vue from 'vue'
import App from './App.vue'
import router from './router'
import iView from 'iview';
import 'iview/dist/styles/iview.css';
import axios from 'axios'
axios.defaults.baseURL = 'http://localhost:8080/'
Vue.prototype.$ajax=axios;

Vue.use(iView);

new Vue({
  router,
  render: h => h(App)
}).$mount('#app')
