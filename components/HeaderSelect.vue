<template>
  <div class="dropdown">
    <div class="current-dropdown-item">
      <span>{{ current.name }}</span>
      <div class="triangle-icon"></div>
    </div>

    <div class="dropdown-items">
      <template v-for="item in data" :key="item.name + 'block'">
        <div class="dropdown-item-header">
          <span> {{ item.name }} </span>
        </div>

        <template v-for="el in item.refs" :key="el.name + 'item-block'"> 
          <a 
            class="dropdown-item-link" 
            @click="goToPage(el)"
          >
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
interface DropdownItem {
  name: string,
  ref: string,
};
interface Dropdown {
  name: string,
  refs: DropdownItem[],
};

const emits = defineEmits(['switch-page']);

const data = ref<Dropdown[]>([
  {
    name: 'Основное',
    refs: [
      {
        name: 'Аниме',
        ref: 'anime',
      },
      {
        name: 'Манга',
        ref: 'manga',
      },
      {
        name: 'Ранобэ',
        ref: 'ranobe',
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

const goToPage = async (page: DropdownItem) => {
  current.value.name = page.name;
  emits('switch-page', page);
  await navigateTo(`/${ page.ref }`)
};
</script>

<style lang="scss" scoped>
@use "sass:color";

.dropdown {
  cursor: default;
  height: 100%;
  width: 100px;
  position: relative;
  background-color: color.scale($display-color, $alpha: -50%); // чтоб выделялось, но не как прям при наведении

  &:hover { 
    background-color: $display-color;

    .triangle-icon {
      transform: rotate(180deg);
      transition: transform 0.5s;
    }
    .dropdown-items {
      display: block;
      background-color: $display-color;
    }
  }
}

.current-dropdown-item {
  display: flex;
  justify-content: space-between;
  align-items: center;
  align-content: center;
  height: 100%;
  padding: 0 10px;
}

.triangle-icon {
  width: 20px;
  height: 20px;
  background-image: url('~/assets/triangle.svg');
  background-size: contain;
  background-repeat: no-repeat;
  background-position: center;
  transition: transform 0.5s;
}

.dropdown-items {
  display: none;
  width: 100px;
  background-color: $main-color;
}

.dropdown-item-header {
  text-align: start;
  height: calc($app-header-height / 2);
  padding: 0 10px;
}

.dropdown-item-link {
  cursor: pointer;
  text-align: end;
  text-decoration: none;
  color: unset;

  div {
    align-content: center;
    height: $app-header-height;
    padding: 0 10px;

    &:hover {
      background-color: $focus-color;
    }
  }
}

</style>