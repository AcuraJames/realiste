<template>
  <div class="footer">
    <ul class="footer-menu">
      <li class="footer-menu__item">
        <img src="../assets/appartments-flat.svg" height="30px">
        <p>Квартиры</p>
      </li>
      <li class="footer-menu__item">
        <img src="../assets/deals-flat.svg" height="30px">
        <p>Сделки</p>
      </li>
      <li class="footer-menu__item">
        <img src="../assets/grade-flat.svg" height="30px">
        <p>Оценка</p>
      </li>
      <li class="footer-menu__item">
        <img src="../assets/exchange-flat.svg" height="30px">
        <p>Обмен</p>
      </li>
      <li class="footer-menu__item">
        <img src="../assets/index-flat.svg" height="30px">
        <p>Индекс</p>
      </li>
    </ul>
  </div>
</template>

<script>
export default {};
</script>

<style>
.footer {
  margin: 40px 0;
  padding: 0 10px;
}
.footer-menu {
  display: flex;
  justify-content: space-between;
  align-items: center;
  padding: 0;
}
.footer-menu__item {
  list-style-type: none;
}

@media screen and (min-width: 640px) {
  .footer-menu {
    justify-content: center;
  }
  .footer-menu__item {
    margin: 0 5px;
  }    
}
</style>
