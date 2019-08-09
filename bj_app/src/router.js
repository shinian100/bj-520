import Vue from 'vue'
import Router from 'vue-router'
import CustomerCarousel from './components/CustomerCarousel'
import Index from './views/Index'
import photoShow from './views/photoShow'
import photoList from './views/photoList'
import customerList from './views/customerList'
import cusdetails from './components/customer/cusdetails'
import travel from './views/travel'
import travelList from './views/travelList'

Vue.use(Router)

export default new Router({
  routes: [{
      path: '/',
      name: 'index',
      component: Index
    },
    {
      path: '/Index',
      name: 'index',
      component: Index
    },
    {
      path: '/photoShow/:teng',
      name: 'photoshow',
      component: photoShow,
      props: true
    },
    {
      path: '/photoList',
      name: "photolist",
      component: photoList
    },
    {
      path: '/customerList',
      name: 'customerlist',
      component: customerList
    },
    {
      path: '/customerdetails/:cid',
      name: 'cusdetails',
      component: cusdetails,
      props: true
    },
    {
      path: '/travelList',
      name: "travelList",
      component: travelList
    },
    {
      path: '/travel/:href',
      name: 'travel',
      component: travel,
      props: true
    }
  ]
})