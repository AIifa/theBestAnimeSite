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
const selectData = [
  {
    label: "Первая строка",
    tab: 0, // какая-нибудь ссылка на требуемый раздел (айдишник/ссылка/етс)
  },
  {
    label: "Прочее",
    children: [
      {
        label: "Вложенная строка",
        tab: 1,
      },
    ],
  },
];
</script>
<style lang="scss" scoped>
.app-header {
  width: 100%; // vw?
  height: 50px;
  background-color: #4a1d55;

  display: flex;
  justify-content: space-between;
  align-items: center;
}
.login {
  height: 100%;
  background-color: #5d266b;
  padding: 0px 30px;
}
</style>
