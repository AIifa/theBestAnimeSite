<template>
  <div>
    <AppHeader
      @switch-page="switchPage"
    />
    <LoadingScreen>
      <template #page>
        <p>Test 0000</p>
        <NuxtPage />
      </template>
    </LoadingScreen>
  </div>
</template>
<script setup lang="ts">
const switchPage = (page) => {
  
};
</script>
<style lang="scss" src="assets/style.scss"></style>