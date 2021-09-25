<script setup>
</script>

<template>
  <header>
  </header>

  <main>
    <div class="bg-light">
      <div class="section section--first">
        <h1 class="text text--h1 text--dark">13 Pro</h1>
        <h2 class="text text--h2 text--dark">IPhone 13 Pro</h2>
        <a class="link link--dark">Learn more ></a>
        <a class="link link--dark">Buy ></a>
      </div>
    </div>

    <div class="bg-dark">
      <div class="section section--second">
        <h1 class="text text--h1 text--light">13</h1>
        <h2 class="text text--h2 text--light">IPhone 13</h2>
        <a class="link link--light">Learn more ></a>
        <a class="link link--light">Buy ></a>
      </div>
    </div>
  </main>

  <footer>
  </footer>
</template>

<style lang="scss">
@use "sass:map";
@import url('https://fonts.googleapis.com/css2?family=Roboto:ital,wght@0,100;0,300;0,400;0,500;0,700;0,900;1,100;1,300;1,400;1,500;1,700;1,900&display=swap');

$breakpoints: (
  mobile: 734px,
  tablet: 1068px,
);

$text_colors: (
  light: #FFF,
  dark: #231f20,
);

$link_colors: (
  light: #fec2eb,
  dark: #06c,
);

$background_colors: (
  light: #f5f5f7,
  dark: #35273c,
);

body {
  margin: 0px;
}

* {
  font-family: Roboto;
}

.text {
  margin: 0px;
  padding: 0px;
}

.text--h1 {
  font-weight: 500;
  font-size: 230px;
}

.text--h2 {
  font-weight: 400;
  font-size: 35px;
}

.text--dark {
  color: map.get($text_colors, dark);
}

.text--light {
  color: map.get($text_colors, light);
}

.link {
  font-weight: 300;
  font-size: 18px;

  &--dark {
    color: map.get($link_colors, dark);
  }

  &--light {
    color: map.get($link_colors, light);
  }
}

.section {
  margin: 175px auto 0px auto;
  display: flex;
  flex-direction: column;
  align-content: center;
  width: 100%;

  @media (max-width: map.get($breakpoints, tablet)) {
    max-width: 576px;
  }

  @media (max-width: map.get($breakpoints, mobile)) {
    max-width: 283px;
  }

  &--first {
  }

  &--second {
  }
}

.bg-light {
    background-color: map.get($background_colors, light);
}

.bg-dark {
    background-color: map.get($background_colors, dark);
}

</style>
