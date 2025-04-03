<template>
  <div class="title-page">
    <div class="title-header">
      <h1> {{ getFullname }} </h1>

      <div class="title-header-breadcrumbs">
        <template v-for="(item, index) in getBreadcrumbs" :key="item + index">
          <a :href="item">
            <span> {{ item }} </span>
          </a>
        </template>
      </div>
    </div>

    <div class="title-body">
      <div class="title-content">
        <div class="content-image">
          <img :src="titleData?.src" />
        </div>

        <div class="content-information">
          <div class="header-container"> 
            <span> Информация </span> 
          </div>
          <div class="content-container">
            <span> Тип: {{ titleData?.information.type }} </span>
            <span> Статус: {{ titleData?.information.status }} </span>
            <span> Жанры: {{ titleData?.information.genres }} </span>
            <span> Тема: {{ titleData?.information.theme }} </span>
            <span> Лицензия: {{ titleData?.information.license }} </span>
          </div>
        </div>

        <div class="content-review">
          <div class="header-container"> 
            <span> Рейтинг </span> 
          </div>
          <div class="content-container">
            <span>☆☆☆☆ Рейтинг: {{ titleData?.review }} </span>
          </div>
        </div>

        <div class="content-publisher">
          <div class="header-container"> 
            <span> Издатель </span> 
          </div>
          <div class="content-container">
            <span> Издатель: {{ titleData?.publisher }} </span>
          </div>
        </div>

        <div class="content-description">
          <div class="header-container"> 
            <span> Описание </span> 
          </div>
          <span> {{ titleData?.description }} </span>
        </div>
      </div>

      <div class="content-resources">
        <div class="header-container"> 
          <span> Связанное </span> 
        </div>
        <span> {{ titleData?.related }} </span>
      </div>

      <div class="title-content-sidebar"></div>
    </div>
  </div>
</template>

<script setup lang="ts">
import type { Title } from '../types/Title.ts';
import testImage from '../assets/friren.webp';

// temp title data without server
const titleData = ref<Title>();
const mockData: Title = {
  name: 'Провожающая в последний путь Фрирен',
  engName: 'Sousou no Frieren',
  src: testImage,
  information: {
    type: 'Манга',
    volume: 6, // Число томов
    chapters: 11, // число глав
    status: 'Диапазон дат',
    genres: 'Список жанров (с ссылками на них)',
    theme: 'тема тайтла',
    license: 'Лицензия',
    altName: 'Альтернативное название',
  },
  description: 'Отгромыхали салюты и аплодисменты, заглохли радостные крики ликующей толпы, съеден торжественный ужин, награды получены: герои, долго и упорно шедшие к исполнению цели, добились своего. Зло побеждено, невинные спасены и... что дальше? Наверное, надо как-то возвращаться к мирной жизни, да? Подобным вопросом задаётся Фрирен — член команды, одолевшей Короля Демонов. Она не герой, а — маг, и не человек, а — эльф, практически ничего не роднит её с остальными членами группы, к тому же ей отмерен гораздо больший жизненный срок, и ей суждено пережить своих былых товарищей...',
  publisher: 'Издатель',
  review: 8.8, // Рейтинг тайтла
  related: 'связи', // Подумать как сделать
  authors: 'Авторы',
};

const getFullname = computed(() => {
  return `${titleData.value?.name} / ${titleData.value?.engName}`;
});

const breadcrumbs = ref('Аниме/Сериалы/Комедия');
const getBreadcrumbs = computed(() => {
  return breadcrumbs.value.split('/');
});

onMounted(() => {
  // send and get title data
  titleData.value = mockData;
});

</script>

<style lang="scss" scoped>
.title-page {
  display: flex;
  flex-direction: column;
  align-content: center;
  flex-wrap: wrap;
  gap: 20px;
}

.title-header-breadcrumbs {
  a {
    color: $linkColor;
  }
}

.title-body {
  // display: flex;
}

.title-content {
  display: flex;
  flex-direction: row;
  flex-wrap: wrap;
  gap: 20px;
}

.content-information {
  & > * {
    display: flex;
  }
}
.header-container {
  background-color: rgb(197, 196, 196);
  border-left: 5px solid grey;
}
.content-container {
  display: flex;
  flex-direction: column;
}
</style>