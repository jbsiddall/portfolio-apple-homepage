<script lang="ts" setup>
const learnMoreLink = "https://www.apple.com/iphone-13-pro/";
const buyLink = "https://www.apple.com/shop/buy-iphone/iphone-13-pro";
const navbarLinks = [
  {title: "Store", link: "https://www.apple.com/store"},
  {title: "Mac", link: "https://www.apple.com/mac"},
  {title: "iPad", link: "https://www.apple.com/ipad"},
  {title: "iPhone", link: "https://www.apple.com/iphone"},
  {title: "Watch", link: "https://www.apple.com/watch"},
  {title: "TV", link: "https://www.apple.com/tv"},
  {title: "Music", link: "https://www.apple.com/music"},
  {title: "Support", link: "https://support.apple.com"},
];
const footerLinks = [
  {
    title: "Shop and Learn",
    items: [
      "Mac",
      "iPad",
      "iPhone",
      "Watch",
      "TV",
      "Music",
      "AirPods",
      "HomePod",
      "iPod touch",
      "AirTag",
      "Accessories",
      "Gift Cards",
    ]
  },
  {
    title: "Services",
    items: [
      "Apple Music",
      "Apple TV+",
      "Apple Fitness+",
      "Apple News+",
      "Apple Arcade",
      "iCloud",
      "Apple One",
      "Apple Card",
      "Apple Books",
      "ApplePodcasts",
      "App Store",
    ]
  },
  {
    title: "Account",
    items: [
      "Manage Your Apple ID",
      "Apple Store Account",
      "iCloud.com",
      "Find a Store",
      "Shop Online",
      "Genius Bar",
      "Today at Apple",
      "Apple Camp",
      "Apple Store App",
      "Refurbished and Clearance",
      "Financing",
      "Apple Trade in",
      "Order Status",
      "Shopping Help",
    ]
  },
  {
    title: "For Business",
    items: [
      "Apple and Business",
      "Shop for Business"
    ]
  },
  {
    title: "For Education",
    items: [
      "Apple and Education",
      "Shop for K-12",
      "Shop for College",
    ]
  },
  {
    title: "For Healthcare",
    items: [
      "Apple in Healtcare",
      "Health on Apple Watch",
      "Health Records on iPhone",
    ]
  },
  {
    title: "For Goverment",
    items: [
      "Shop for Goverment",
      "Shop for Veterans and Military",
    ]
  },
  {
    title: "Apple Values",
    items: [
      "Accessibility",
      "Education",
      "Environment",
      "Inclusion and Diversity",
      "Privacy",
      "Racial Equity and Justice",
      "Supplier Responsibility",
    ]
  },
  {
    title: "About Apple",
    items: [
      "Newsroom",
      "Apple Leadership",
      "Career Opportunities",
      "Investors",
      "Ethics & Compliance",
      "Events",
      "Contact Apple",
    ]
  },
] as const;
</script>

<template>
  <GlobalAssets />
  <header>
    <Navbar :links="navbarLinks" />
  </header>

  <main>
    <div class="section__background-wrapper--first">
      <div class="section__container--first">
        <h1 class="text text--h1 text--dark text--center">13 Pro</h1>
        <h2 class="text text--h2 text--dark text--center">IPhone 13 Pro</h2>
        <div class="ctas__container section__ctas">
          <a class="link--dark ctas__item" :href="learnMoreLink">Learn more ></a>
          <a class="link--dark ctas__item" :href="buyLink">Buy ></a>
        </div>
        <img class="section__image--first" src="/iphone_top.jpeg" />
      </div>
    </div>

    <div class="section__background-wrapper--second">
      <div class="section__container--second">
        <h1 class="text text--h1 text--light text--center">13</h1>
        <h2 class="text text--h2 text--light text--center">IPhone 13</h2>
        <div class="ctas__container section__ctas">
          <a class="link--light ctas__item" :href="learnMoreLink">Learn more ></a>
          <a class="link--light ctas__item" :href="buyLink">Buy ></a>
        </div>
        <div class="section__image-wrapper">
          <img class="section__image--second" src="/iphone_bottom.jpeg" />
        </div>
      </div>
    </div>
  </main>

  <footer>
    <Footer :menus="footerLinks" />
  </footer>
</template>

<style scoped lang="scss">
@use "sass:map";
@import "./global.scss";

.section {

  &__container {
    $self: &;
    display: flex;
    flex-direction: column;
    align-content: center;
    width: 100%;

    margin: 0px auto;

    @include responsive(max-width, $mobile: 283px, $tablet: 576px, $desktop: 793px);

    &--first {
      @extend #{$self};
      padding-top: 175px;
      z-index: 10;
    }

    &--second {
      @extend #{$self};
      padding-top: 136px;
      z-index: 20;
    }
  }

  &__background-wrapper {
    $self: &;
    &--first {
      @extend #{$self};
      background-color: map.get($background_colors, light);
      position: relative;
    }

    &--second {
      @extend #{$self};
      background-color: map.get($background_colors, dark);
      position: relative;
    }
  }

  &__ctas {
    margin-top: 11px;
  }

  &__image-wrapper {
    position: relative;
    top: 0px;
  }

  &__image {
    margin: 0px auto;

    &--first {
      position: relative;
      top: 83px;
      @include responsive(width, $mobile: 356px, $tablet: 518px, $desktop: 666px);
    }

    &--second {
      position: relative;
      left: 50%;
      margin-top: 63px;
      @include responsive(margin-left, $mobile: -305px, $tablet: -492px, $desktop: -609px);
      @include responsive(width, $mobile: 610px, $tablet: 985px, $desktop: 1218px);
    }
  }
}

.ctas {

  &__container {
    display: flex;
    flex-direction: row;
    justify-content: center;
  }

  &__item {
    margin: 0px 24px;
  }
} 

</style>
