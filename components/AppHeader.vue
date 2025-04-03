<template>
  <div class="app-header">
    <div class="logo" @click="async () => await navigateTo(`/`)">the Best Anime Site</div>
    <HeaderSelect />
    <SearchInput />
    <button @click="login" class="login">
      <p>Войти</p>
    </button>
  </div>
</template>
<script setup lang="ts">

const login = () => { console.log("Login"); }; // заглушка на будущее

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
.logo {
  margin-left: 10px;
  margin-right: 5px;
  white-space: nowrap;

  font-size: larger;
  font-weight: 1000;
  font-style: italic;
  
  text-decoration: underline;
  text-underline-position: under;
  
  color: $second-color;
  text-decoration-color: $second-color;
  font-family: Trattatello fantasy;
}
.login {
  height: 100%;
  color: $app-header-text-color;
  background-color: $main-color;
  padding: 0px 30px;
  border: none;

  &:hover {
    background-color: $focus-color;
  }
  &:active {
    background-color: $main-color;
  }
}
</style>