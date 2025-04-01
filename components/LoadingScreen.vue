<template>
  <div>
    <slot name="page"></slot>
    <div v-show="!loaded" class="loader" @loading="console.log('got it!'); loaded = false">
      <p>Loading...</p>
    </div>
  </div>
</template>

<script setup lang="ts">
const loaded = ref<Boolean>(true);

</script>

<style scoped lang="scss">
.loader {
  width: 100%;
  height: 100%;
  position: absolute;
  top: 0;
  background-color: rgb(220, 220, 220);

  text-align: center;
  align-content: center;
  p {
    left: 50%;
    top: 50%;
    font-weight: bold;
    font-family: sans-serif;
    font-size: 30px;
    animation: l1 1s linear infinite alternate;
  }
  @keyframes l1 {to{opacity: 0}}
}

</style>