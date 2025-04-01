<template>
  <div class="page">
    <p>anime</p>
  </div>
</template>


<script setup>
const emits = defineEmits(['loading']);

onMounted(() => {
  console.log(`the component is now mounted.`);
  emits('loading');
})
</script>