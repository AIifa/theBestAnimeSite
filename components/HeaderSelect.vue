<template>
  <div class="dropdown">
    <div 
      class="current-dropdown-item"
      @mouseover="show = true"
      @mouseout="show = false"
    >
      <span>{{ current.name }}</span>
      <div class="triangle-icon"></div>
    </div>

    <div 
      v-show="show" 
      class="dropdown-items"
      @mouseover="show = true"
      @mouseout="show = false"
    >
      <template v-for="item in data" :key="item.name + 'block'">
        <div class="dropdown-item-header">
          <span> {{ item.name }} </span>
        </div>

        <template v-for="el in item.refs" :key="el.name + 'item-block'"> 
          <a class="dropdown-item-link" :href='el.ref'>
            <div>
              <span> {{ el.name }} </span>
            </div>
          </a>
        </template>
      </template>
    </div>
  </div>
</template>

<script setup lang="ts">



const data = ref([
  {
    name: 'Основное',
    refs: [
      {
        name: 'Аниме',
        ref: 'temp URL 1',
      },
      {
        name: 'Манга',
        ref: 'temp URL 1',
      },
      {
        name: 'Ранобэ',
        ref: 'temp URL 1',
      },
    ]
  },
  {
    name: 'Разное',
    refs: [
      {
        name: 'О сайте',
        ref: 'temp URL 1',
      },
      {
        name: 'Календаль',
        ref: 'temp URL 1',
      },
      {
        name: 'Ещё что-то',
        ref: 'temp URL 1',
      },
    ]
  },
]);

const current = ref({
  name: 'Главная',
});

const show = ref(false);
</script>

<style lang="scss" scoped>
.dropdown {
  height: 100%;
  width: 100px;
  position: relative;
}

.current-dropdown-item {
  display: flex;
  justify-content: space-between;
  align-items: center;
  align-content: center;
  height: 100%;
  padding: 0 10px;

  .triangle-icon {
    filter: invert(97%) sepia(5%) saturate(1187%) hue-rotate(302deg) brightness(109%) contrast(109%); // делает дефолтный черный цвет треугольника белым
    width: 10px;
    height: 10px;
    background-image: url('~/assets/triangle.svg');
    background-size: contain;
    background-repeat: no-repeat;
    background-position: center;
    transform: rotate(180deg);
    transition: transform 0.5s;
  }
}
.dropdown:hover .triangle-icon {
  transform: rotate(270deg);
  transition: transform 0.5s;
}

.dropdown-items {
  width: 100px;
}

.dropdown-item-header {
  text-align: start;
  height: 25px;
  background-color: $main-color;
  padding: 0 10px;
}

.dropdown-item-link {
  text-align: end;
  text-decoration: none;
  cursor: pointer;
  color: unset;

  div {
    align-content: center;
    background-color: $main-color;
    height: 50px;
    padding: 0 10px;

    &:hover {
      background-color: $focus-color;
    }
  }
}

</style>