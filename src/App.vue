<script setup>

const pages = [
  {
    name: "Apple Homepage",
    github: "https://github.com/jbsiddall/portfolio-apple-homepage",
    screenshot: "/apple_homepage.png",
  }
]
</script>

<template>
  <h1>Portfolio</h1>
  <div class="grid">
    <div v-for="page in pages" class="card__container" :key="page.name">
      <img class="card__image" :src="page.screenshot" />
      <div class="card__info">
        <p>{{page.name}}</p>
        <a :href="page.github">github</a>
      </div>
    </div>
  </div>
</template>

<style scoped>
.grid {
  display: grid;
  grid-template-columns: repeat(3, 1fr);
  width: 100%;
  max-width: 1100px;
  margin: 100px auto;
}

.card__container {
  width: 200px;
  box-shadow: 0px 5px 10px rgba(0, 0, 0, 0.3);
}

.card__image {
  width: 200px;
  height: 200px;
}

.card__info {
  padding: 16px;
}
</style>
