* [laracasts on vue](https://laracasts.com/series/learning-vue-step-by-step/episodes/2?autoplay=true)
* [vue with rails](https://rlafranchi.github.io/2016/03/09/vuejs-and-rails/)
* https://vuejs.org/
* [vuejs mock](https://github.com/vuejs/vueify-example/blob/master/test/unit/a.spec.js#L23-L43)
* [vue-strap](http://yuche.github.io/vue-strap/#tabs)
* [vue js with phonegap](http://devgirl.org/2017/01/10/phonegap-apps-with-vue-js-yes-please/)
* [[Approch to vue with asset pipeline]]
* [dynamic modal with component](https://forum.vuejs.org/t/loading-components-into-modal/2855/10)
* [nice bridge to jQuery tutorial](https://gambardella.info/2016/09/05/guide-how-to-use-vue-js-with-jquery-plugins/)
* [good post on nested data](https://forum.vuejs.org/t/vuex-best-practices-for-complex-objects/10143/4)
* [good post on store](https://medium.com/@bradfmd/vue-vuex-getting-started-f78c03d9f65)
* https://github.com/vuejs/vuex/issues/416 another good intro to vuex
* [nice article on getters](https://laracasts.com/discuss/channels/vue/vuex-getters)

html

<body>
  <div id="App">
    <app />
  </div>
  <script src="/js/main.js"></script>
</body>

main.js

new Vue({
  components: { App },
  el: '#App',
})

App.vue

<template>
  <div>
    <header-area />
    <preloader />
    <transition name="fade" mode="out-in">
      <keep-alive>
        <router-view class="router-view" />
      </keep-alive>
    </transition>
    <footer-area />
    <fixed-feedback />
    <form-builder />
  </div>
</template>

<script>
import Preloader from './partials/Preloader.vue'
import HeaderArea from './partials/HeaderArea.vue'
import FooterArea from './partials/FooterArea.vue'
import FormBuilder from './partials/FormBuilder.vue'
import FixedFeedback from './partials/FixedFeedback.vue'

export default {
  name: 'App',
  components: { FormBuilder, HeaderArea, FooterArea, Preloader, FixedFeedback },
  methods: {
    // ...
  }
}
</script>
