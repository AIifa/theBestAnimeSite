<template>
  <div class="title-card">
    <img :src="item.img" :alt="item.name">
    <p :title="item.name"><a :href="item.link">{{ item.name }}</a></p>
    <!-- Тут еще строка, мб под тип контента (новелла/сериал/ваншот/етс) и год выпуска -->
  </div>
</template>

<script setup lang="ts">
const props = defineProps(['item']);

</script>

<style scoped lang="scss">
.title-card {
  margin-right: 30px;
  max-width: 200px;

  img {
    width: 200px;
    height: 300px;
    object-fit: cover;
  }
  p {
    margin-top: 0px;
    white-space: nowrap;
    text-overflow: ellipsis;
    overflow: hidden;

    a {
      color: #5d266b;
      font-weight: bolder;
      text-decoration: none;

      // white-space: nowrap;
      // text-overflow: ellipsis;
      // overflow: hidden;
    }
  }
}
</style>