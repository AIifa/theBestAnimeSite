<template>
  <div class="title-card" :title="item.name" @click="async () => await navigateTo(`/ranobe/${item.link}`)">
    <img :src="item.img" :alt="item.name">
    <p class="title-name"><a>{{ item.name }}</a></p>
    <div class="title-info">
      <p>{{ item.type || "" }}</p>
      <p>{{ item.year || "" }}</p>
    </div>
  </div>
</template>

<script setup lang="ts">
const props = defineProps(['item']);

</script>

<style scoped lang="scss">
.title-card {
  max-width: 200px;
  cursor: pointer;

  img {
    width: 200px;
    height: 300px;
    object-fit: cover;
  }
  p.title-name {
    margin: 0px;
    white-space: nowrap;
    text-overflow: ellipsis;
    overflow: hidden;

    a {
      color: #5d266b;
      font-weight: bolder;
      text-decoration: none;
    }
  }

  .title-info {
    display: flex;
    justify-content: space-between;
    p {
      margin: 0px;
      font-size: smaller;
    }
  }
}
</style>