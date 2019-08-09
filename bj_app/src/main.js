import Vue from 'vue'
import App from './App.vue'
import router from './router'
import store from './store'
import axios from 'axios';
import Element from 'element-ui'
import 'element-ui/lib/theme-chalk/index.css'

import VueAwesomeSwiper from "vue-awesome-swiper";
import "swiper/dist/css/swiper.css";

import './assets/fonts/iconfont.css'



Vue.use(VueAwesomeSwiper);

Vue.use(Element);
axios.defaults.withCredentials = true
// 4.设置请求服务器基础路径
axios.defaults.baseURL = "http://127.0.0.1:3000"
axios.defaults.headers.post['Content-Type'] = 'application/x-www-form-urlencoded';
// 5.将axios注册vue实例
Vue.prototype.axios = axios
new Vue({
    router,
    store,
    render: h => h(App)
}).$mount('#app')