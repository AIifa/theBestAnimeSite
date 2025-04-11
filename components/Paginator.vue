<template>
  <div class="paginator">
    <p @click="previousPage()"> << </p>
    <p v-if="!inputMode" @dblclick="inputMode = !inputMode"> {{ current }} </p>
    <p v-else @dblclick="inputMode = !inputMode">bla</p>
    <p @click="next()"> >> </p>
  </div>
</template>

<script setup lang="ts">
const props = defineProps(['pageCount']);
const emits = defineEmits(['switch-page']);

const current = ref(1);

const previousPage = async () => {
  if (current.value <= 1) { return; }
  current.value--;
  emits('switch-page', current);
};
const next = async () => {
  if (current.value >= props.pageCount) { return; }
  current.value++;
  emits('switch-page', current);
};

const inputMode = ref(false);

</script>

<style scoped lang="scss">
.paginator {
  display: flex;
  gap: 10px;
}
</style>