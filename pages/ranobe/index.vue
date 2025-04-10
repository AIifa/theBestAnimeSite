<template>
  <div class="page" 
    
  >
    <p>ranobe</p>
    <TitlesList />
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
<style scoped lang="scss">
.page {
  padding: 0px 70px;
}
</style>