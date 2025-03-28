<template>
  <div>
    <AppHeader
      @switch-page="switchPage"
    />
    <NuxtPage />
  </div>
</template>
<script setup lang="ts">
const switchPage = (page) => {
  
};
</script>
<style lang="scss" src="assets/style.scss"></style>