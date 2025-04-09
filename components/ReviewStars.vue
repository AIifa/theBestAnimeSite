<template>
	<div v-if="props.review" class="review-content">
		<div class="review-stars-container"> 
			<div class="review-stars-background"> {{ starsSymbols }} </div>
			<div 
				ref="stars"
				class="review-stars-foreground"
			> {{ starsSymbols }} </div>
		</div>

		<div class="review-score"> 
			<span> {{ reviewScore }} </span>
		</div>

		<div class="awards">
			<div v-for="award in props.awards" :key="award + 'awards'">
        <span> {{ award }} </span>
      </div>
		</div>
	</div>
</template>

<script setup lang="ts">
const props = defineProps({
	review: {
		type: Number,
		default: 0,
	},
	awards: {
		type: Array,
		default: () => [],
	}
});

const starsSymbols = '★★★★★';

const stars = useTemplateRef<HTMLDivElement>('stars');
const setWidthStars = () => {
  const width = Number(stars.value?.clientWidth);
	stars.value?.style.setProperty('width', `${props.review * width / 10}px`);
};

const reviewScore = computed(() => {
  return props.review.toFixed(2);
});

onUpdated(() => {
  setWidthStars();
});
</script>

<style lang="scss" scoped>
.review-content {
	display: flex;
	align-items: center;
	gap: 10px;
}

.review-stars-container {
  font-size: 30px;
  height: 40px;
}
.review-stars-foreground  {
	color: $linkColor;
	position: relative;
	top: -40px;
	overflow: hidden;
}
.review-stars-background {
	color: grey;
}

.review-score {
	font-size: 40px;
}

</style>