<template>
  <div class="titles-list-container">
    <TitleCard v-for="(item, index) in titlesData" :key="item.name + index" :item="item" />
  </div>
</template>

<script setup lang="ts">
import testImage from '../assets/friren.webp';
const testName = "Название крутого тайтла";
const testLink = "ссылка";

const titlesData = [{
  img: testImage,
  name: testName,
  link: testLink
}, {
  img: testImage,
  name: `${testName}_1`,
  link: testLink
}, {
  img: testImage,
  name: "Оооооооооооочень длинное название тайтла отправило меня в другой мир, где я стал библиотекарем собрания манги мультиверса",
  link: testLink
}, {
  img: testImage,
  name: testName,
  link: testLink
}, {
  img: testImage,
  name: testName,
  link: testLink
}, {
  img: testImage,
  name: testName,
  link: testLink
}, {
  img: testImage,
  name: testName,
  link: testLink
}, {
  img: testImage,
  name: testName,
  link: testLink
}, {
  img: testImage,
  name: testName,
  link: testLink
}, ]

</script>
<style scoped lang="scss">
.titles-list-container {
  display: flex;
  flex-wrap: wrap;
}
</style>