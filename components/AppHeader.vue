<template>
  <div class="app-header">
    <div class="logo">SOME COOL LOGO</div>
    <HeaderSelect />
    <SearchInput />
    <div class="login">
      <p>Login</p>
    </div>
  </div>
</template>
<script setup lang="ts">

</script>
<style lang="scss" scoped>
.app-header {
  color: $app-header-text-color;
  width: 100%; // vw?
  height: 50px;
  background-color: $main-color;

  display: flex;
  justify-content: space-between;
  align-items: center;
}
.login {
  height: 100%;
  background-color: $main-color;
  padding: 0px 30px;

  &:hover {
    background-color: $focus-color;
  }
}
</style>
