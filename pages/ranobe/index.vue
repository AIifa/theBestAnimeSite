<template>
  <div class="page" @click="async () => await navigateTo(`/ranobe/1`)">
    <p>ranobe</p>
  </div>
</template>

<script setup lang="ts">
const emits = defineEmits(['loading']);

onMounted(() => {
  console.log(`the component is now mounted.`);
  // для теста ждет 3 сек типа загрузки, потом отсылает ивент что загрузилось
  setTimeout(function() { emits('loading'); }, 3000);
})
</script>