import Vue from 'vue';
import Router from 'vue-router';

import Desk from '../pages/desk/desk';

Vue.use(Router)

const router = new Router({
  mode: 'history',
  routes: [
    {
      path: "/",
      component: Desk,
      name: "Desk"
    }
  ]
})

export default router