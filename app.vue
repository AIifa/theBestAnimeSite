<template>
  <div>
    <AppHeader
      @switch-page="switchPage"
    />
    <LoadingScreen :loaded="loaded">
      <template #page>
        <NuxtPage @loading="console.log('Page loaded'); loaded = true" />
      </template>
    </LoadingScreen>
  </div>
</template>
<script setup lang="ts">
const loaded = ref<Boolean>(false);

const switchPage = (page) => {
  
};
</script>
<style lang="scss" src="assets/style.scss"></style>