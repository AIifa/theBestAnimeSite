<template>
  <div style="display: flex" class="search">
    <label for="search-box" class="search-box">
      <span class="search-icon">
        <svg :fill="searchColor" height="20px" width="20px" version="1.1" id="Capa_1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" viewBox="0 0 488.4 488.4" xml:space="preserve"><g id="SVGRepo_bgCarrier" stroke-width="0"></g><g id="SVGRepo_tracerCarrier" stroke-linecap="round" stroke-linejoin="round"></g><g id="SVGRepo_iconCarrier"> <g> <g> <path d="M0,203.25c0,112.1,91.2,203.2,203.2,203.2c51.6,0,98.8-19.4,134.7-51.2l129.5,129.5c2.4,2.4,5.5,3.6,8.7,3.6 s6.3-1.2,8.7-3.6c4.8-4.8,4.8-12.5,0-17.3l-129.6-129.5c31.8-35.9,51.2-83,51.2-134.7c0-112.1-91.2-203.2-203.2-203.2 S0,91.15,0,203.25z M381.9,203.25c0,98.5-80.2,178.7-178.7,178.7s-178.7-80.2-178.7-178.7s80.2-178.7,178.7-178.7 S381.9,104.65,381.9,203.25z"></path> </g> </g> </g></svg>
      </span>
      <input type="search" placeholder="Поиск..." />
      <!-- <span class="clear-icon">
        <svg fill="#000000" height="20px" width="20px" viewBox="0 0 32 32" xmlns="http://www.w3.org/2000/svg"><g id="SVGRepo_bgCarrier" stroke-width="0"></g><g id="SVGRepo_tracerCarrier" stroke-linecap="round" stroke-linejoin="round"></g><g id="SVGRepo_iconCarrier"><path d="M7.004 23.087l7.08-7.081-7.07-7.071L8.929 7.02l7.067 7.069L23.084 7l1.912 1.913-7.089 7.093 7.075 7.077-1.912 1.913-7.074-7.073L8.917 25z"></path></g></svg>
      </span> -->
    </label>
    <div class="search-results"></div><!-- На будущее на всякий -->
  </div>
</template>

<script setup lang="ts">
const searchColor = "#000000";
</script>

<style lang="scss">
.search {
  width: 70%;
  margin-right: 10px;

  .search-box {
    width: 100%;

    .search-icon, .clear-icon {
      position: absolute;
      width: 39px;
      text-align: center;
      vertical-align: middle;
      line-height: 28px;
      
      svg {
        vertical-align: middle;
      }
    }
    .clear-icon {
      // left: 87.5%;
      // right: 109px;
    }
    
    input {
      width: 100%;
      border: 1px solid transparent;
      border-radius: 5px;
      font-size: 14px;
      line-height: 28px;
      padding: 1px 42px 0 38px;
      text-overflow: ellipsis;
      background: $second-color;
      outline: none;

    }
    input::-webkit-search-cancel-button {
      display: none;
    }
  }

}
</style>