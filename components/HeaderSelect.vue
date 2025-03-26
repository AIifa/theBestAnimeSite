<template>
  <div id="header-select">
    <div class="current"><span>Текущая стр.</span></div>
    <div class="options">
      <div><p>Аниме</p></div>
      <div><p>Манга</p></div>
      <div><p>Етс</p></div>
      <div><p>Прочее</p></div>
      <div><p>. . .</p></div>
    </div>
  </div>
</template>
<script setup lang="ts">
const props = defineProps({
  data: {
    type: Array,
    default: () => []
  }
})

</script>
<style lang="scss">
#header-select {
  height: 100%;
}

.current {
  height: 100%;
  align-content: center;
  background-color: #5D266B;
  text-align: center;
}
.options {
  list-style-type: none;
  // position: absolute;

  div {
    height: 50px;
    padding: 0px 30px;
    background-color: #5D266B;
    border: 1px solid #9941af; // временно, потом границы не будет
  }
}
</style>