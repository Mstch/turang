import Vue from 'vue'
import Router from 'vue-router'
import Turang from './views/Turang.vue'
import Threshold from './views/Threshold.vue'
import Warning from './views/Warning.vue'

Vue.use(Router)

export default new Router({
  routes: [
    {
      path: '/',
      name: 'turang',
      component: Turang
    },
    {
      path: '/threshold',
      name: 'threshold',
      component: Threshold
    },
    {
      path: '/warning',
      name: 'warning',
      component: Warning
    }
  ]
})
