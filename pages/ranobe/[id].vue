<template>
  <TitlePage />
</template>

<script setup lang="ts">
const emits = defineEmits(['loading']);

onMounted(() => {
  console.log(`the component is now mounted.`);
  // для теста ждет 3 сек типа загрузки, потом отсылает ивент что загрузилось
  setTimeout(function() { emits('loading'); }, 300);
})
</script>