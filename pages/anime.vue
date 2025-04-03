<template>
  <div class="page">
    <p>anime</p>
  </div>
</template>


<script setup>
const emits = defineEmits(['loading']);

onMounted(() => {
  console.log(`the component is now mounted.`);
  // для теста ждет 3 сек типа загрузки, потом отсылает ивент что загрузилось
  setTimeout(function() { emits('loading'); }, 3000);
})
</script>