<template>
  <div :class="['product-card', {'product-card--nav': isNav}]">
    <template v-if="!isNav">
      <div class="product-card__badge">
        <img src="../assets/bolt.svg" />
        <span>Top {{ item.badge }}</span>
      </div>
      <div class="product-card__title">{{ item.title }}</div>
      <div class="product-card__description">{{ item.description }}</div>
      <button class="product-card__action">Посмотреть</button>
      <div class="product-card__image">
        <template v-if="Array.isArray(item.img)">
          <div class="image-group">
            <img v-for="(img, idx) in item.img" :key="idx" :src="require(`../assets/${img}`)" height="76px" width="138px" />
          </div>
        </template>
        <template v-else>
          <img :src="require(`../assets/${item.img}`)" height="164px" />
        </template>
      </div>
    </template>
    <template v-else>
      <img :src="require(`../assets/${item.icon}`)" class="product-card__nav-icon" />
      <div class="product-card__nav-title">{{ item.title }}</div>
      <div class="product-card__nav-description" v-html="item.description"></div>
    </template>
  </div>
</template>

<script>
export default {
  name: 'ProductCard',
  props: {
    isNav: {
      type: Boolean,
      default: false
    },
    item: {
      type: Object,
      default: () => {}
    },
  }
}
</script>

<style>
.product-card {
  min-width: 300px;
  height: 420px;
  padding: 20px 10px 5px;
  margin-right: 10px;
  border-radius: 20px;
  display: flex;
  flex-direction: column;
  justify-content: space-between;
  text-align: left;
  background-color: rgba(255, 255, 255, 0.4);
  box-shadow: 2px 6px 20px 4px rgb(0 0 0 / 0%);
}
.product-card__badge {
  width: 80px;
  height: 20px;
  padding: 3px 7px;
  display: flex;
  justify-content: space-around;
  align-items: center;
  /* font-size: 12px; */
  font-weight: 700;
  color: #fff;
  border-radius: 50px;
  background-image: url(https://static.tildacdn.com/tild3962-6330-4034-b264-383438626139/ezgif-2-af3868226f.gif);
  transform-origin: center center;
  background-position: center center;
  background-size: cover;
  background-repeat: no-repeat;
}
.product-card__title {
  margin-left: 10px;
  font-size: 24px;
  font-weight: 800;
  color: #202124;
}
.product-card__description {
  margin-left: 10px;
  font-size: 16px;
  font-weight: 500;
  color: #202124;
}
.product-card__action {
  width: 120px;
  height: 34px;
  margin-left: 10px;
  color: #202124;
  font-size: 16px;
  font-family: 'Lato',Arial,sans-serif;
  line-height: 1.55;
  font-weight: 700;
  border-radius: 30px;
  background-color: #ffffff;
  background-position: center center;
  border-color: transparent;
  border-style: solid;
  transition: background-color 0.2s ease-in-out, color 0.2s ease-in-out, border-color 0.2s ease-in-out;
}
.product-card__image img {
  width: 100%;
  border-radius: 20px;
}
.image-group {
  display: flex;
  flex-wrap: wrap;
}
.image-group img {
  width: calc(50% - 10px);
  margin: 5px;
}

.product-card--nav {
  justify-content: center;
  align-items: center;
  text-align: center;
}
.product-card__nav-icon {
  width: 65px;
  height: 65px;
}
.product-card__nav-title {
  margin: 10px 0;
  font-size: 28px;
  font-weight: 800;
  color: #202124;
}
.product-card__nav-description {
  font-size: 18px;
  font-weight: 500;
  color: #202124;
}
</style>