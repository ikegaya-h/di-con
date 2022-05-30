import Vue from 'vue';
import Router from 'vue-router';

import TopIndex from '../pages/top/index';
import DeskIndex from '../pages/desk/desk.vue';

Vue.use(Router)

const router = new Router({
  mode: 'history',
  routes: [
    {
      path: "/",
      component: TopIndex,
      name: "TopIndex",
    },
    {
      path: "/desks",
      component: DeskIndex,
      name: "Desk"
    }
  ]
})

export default router