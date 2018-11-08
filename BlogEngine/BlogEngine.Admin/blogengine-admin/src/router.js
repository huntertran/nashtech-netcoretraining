import Vue from "vue";
import VueRouter from "vue-router";

import About from "./components/About";
import Home from "./components/Home";

Vue.use(VueRouter);

const router = new VueRouter({
  mode: "history",
  routes: [
    {
      path: "/",
      name: "home",
      component: Home
    },
    {
      path: "/About",
      name: "about",
      component: About
    }
  ]
});

export default router;
