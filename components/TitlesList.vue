<template>
  <Paginator :page-count="10" />
  <div class="titles-list-container">
    <TitleCard v-for="(item, index) in titlesData" :key="item.name + index" :item="item" />
  </div>
</template>

<script setup lang="ts">
import testImage from '../assets/friren.webp';
const testName = "Название крутого тайтла";
const testLink = "1";

const titlesData = [
  {
  img: testImage,
  name: testName,
  link: testLink,
  type: "Ранобэ",
  year: 2022
}, {
  img: testImage,
  name: `${testName}_1`,
  link: "2",
  type: "Сериал",
  year: 2025
}, {
  img: testImage,
  name: "Оооооооооооочень длинное название тайтла отправило меня в другой мир, где я стал библиотекарем собрания манги мультиверса",
  link: "3",
  type: "Новелла",
  year: 2020
}, {
  img: testImage,
  name: testName,
  link: "testLink",
  type: "Ранобэ",
  year: 2022
}, {
  img: testImage,
  name: testName,
  link: testLink,
  type: "Ранобэ",
  year: 2022
}, {
  img: testImage,
  name: testName,
  link: testLink,
  type: "Ранобэ",
  year: 2022
}, {
  img: testImage,
  name: testName,
  link: testLink,
  type: "Ранобэ",
  year: 2022
}, {
  img: testImage,
  name: testName,
  link: testLink,
  type: "Ранобэ",
  year: 2022
}, {
  img: testImage,
  name: testName,
  link: testLink,
  type: "Ранобэ",
  year: 2022
}, 
{
  img: testImage,
  name: testName,
  link: testLink
}, 
];

</script>
<style scoped lang="scss">
.titles-list-container {
  display: flex;
  flex-wrap: wrap;
  gap: 20px 30px;
}
</style>