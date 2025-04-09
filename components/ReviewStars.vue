<template>
	<div class="review-content">
		<div class="review-stars-container"> 
			<div class="review-stars-background"> {{ starsSymbols }} </div>
			<div 
				ref="stars"
				class="review-stars-foreground"
			> {{ starsSymbols }} </div>
		</div>

		<div class="review-score"> 
			<span> {{ props.review }} </span>
		</div>

		<div class="awards">
			<span> {{ props.awards }} </span>
		</div>
	</div>
</template>

<script setup lang="ts">
const props = defineProps({
	review: {
		type: Number,
		default: 10,
	},
	awards: {
		type: Array,
		default: () => [],
	}
});

// watch(props.review, (err, result) => { 
// 	return result; 
// });

const stars = useTemplateRef<HTMLDivElement>('stars');
const starsSymbols = '★★★★★';

// const starsForeground = computed(() => {
// 	setWidthStars();
// 	return starsBackground;
// });
const setWidthStars = () => {
	const score = props.review;
	const width = Number(stars.value?.clientWidth);
	stars.value?.style.setProperty('width', `${score * width / 10}px`);
};

onMounted(() => {
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