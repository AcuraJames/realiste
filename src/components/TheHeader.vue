<template>
  <div class="header">
    <div class="header__logo">
      <img src="../assets/logo.svg" height="34px" />
    </div>
    <div class="header__lang-switch">
      <img src="../assets/global.svg" height="24px" />
    </div>
  </div>
</template>

<script>
export default {};
</script>

<style>
.header {
  width: 100%;
  margin: 20px 0;
  display: flex;
  align-items: center;
}
.header__logo {
  margin-left: auto;
  transform: translateX(25%);
} 
.header__lang-switch {
  margin-left: auto;
  margin-right: 40px;
}
</style>
