<template>
  <div id="app">
    <div class="container">
      <TheHeader />
      <div v-if="items1.length" :class="['products', {'products--loaded': items1.length}]">
        <ProductCard v-for="item in items1" :key="item.id" :item="item" />
        <template v-if="items2.length">
          <ProductCard v-for="item in items2" :key="item.id" :item="item" is-nav />
        </template>
      </div>
      <div v-else class="loader">DUBAI</div>
      <TheFooter />
    </div>
  </div>
</template>

<script>
import { items, navItems} from '@/data'

import TheHeader from '@/components/TheHeader.vue'
import TheFooter from '@/components/TheFooter.vue';
import ProductCard from '@/components/ProductCard.vue';

export default {
  name: 'App',
  components: {
    TheHeader,
    TheFooter,
    ProductCard
  },
  data: () => ({
    items1: [],
    items2: []
  }),
  created() {
    setTimeout(() => {
      this.items1 = items
      this.items2 = navItems
    }, 1000);
  }
}
</script>

<style>
body {
  margin: 0;
}
#app {
  width: 100%;
  height: 100%;
  font-family: Avenir, Helvetica, Arial, sans-serif;
  -webkit-font-smoothing: antialiased;
  -moz-osx-font-smoothing: grayscale;
  text-align: center;
  color: #2c3e50;
  box-sizing: border-box;
  background: linear-gradient(120deg,#c4d8f7 50%, #f4efe3 50%);
  overflow: hidden;
}
.container {
  width: 100%;
  height: 100vh;
  display: flex;
  flex-direction: column;
  justify-content: space-between;
  overflow: hidden;
  backdrop-filter: blur(24px);
}
.products {
  margin-left: 10px;
  padding-left: 100px;
  padding: 60px 0;
  display: flex;
  overflow-x: scroll;
  animation: slide-in 0.5s;

}
@keyframes slide-in {
  0% {
    transform: translateX(50%);
  }
  100% {
    transform: translateX(0);
  }
}
.loader {
  font-size: 60px;
}
</style>
