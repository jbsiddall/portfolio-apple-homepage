<script lang="ts" setup>
  const props = defineProps<{
      links: {title: string, link: string}[]
  }>();
</script>

<template>
    <nav role="navigation" class="container--desktop">
      <div class="content" >
        <div class="icon--logo" />
        <a
          v-for="item in links"
          :key="item.title"
          class="link"
          :text="item.title"
          :href="item.link"
          />
        <div class="icon--search" />
        <div class="icon--shop" />
      </div>
    </nav>
    <nav role="navigation" class="container--mobile">
      <div class="content" >
        <div class="menu" />
        <div class="icon--logo" />
        <div class="icon--shop" />
      </div>
    </nav>
</template>

<style scoped lang="scss">
@use "sass:map";
@use "../global.scss";

.container {
  $self: &;
  position: fixed;
  top: 0px;
  width: 100%;
  z-index: 30;
  background-color: rgba(0, 0, 0, 0.8);
  backdrop-filter: saturate(180%) blur(20px);

  &--mobile {
    @extend #{$self};
    @include global.responsive(display, $tablet: none, $desktop: none);
  }

  &--desktop {
    @extend #{$self};
    @include global.responsive(display, $mobile: none);
  }

}

.icon {
  $self: &;
  width: 44px;
  height: 44px;
  background-repeat: no-repeat;

  &--logo {
    @extend #{$self};
    background-image: url("/apple_logo.svg");
  }

  &--search {
    @extend #{$self};
    background-image: url("/search_icon.svg");
    background-size: 18px 88px;
  }

  &--shop {
    @extend #{$self};
    background-image: url("/shop_icon.svg");
  }
}

.menu {
  width: 24px;
  height: 10px;
  margin: 12px 10px;
  box-sizing: border-box;
  border-top: solid 0.5px white;
  border-bottom: solid 0.5px white;
}

.content {
  display: flex;
  justify-content: space-between;
  align-items: center;
  max-width: 1000px;
  margin: 0px auto;
  padding: 0px 22px;
  height: 44px;
}

.link {
  @extend .text--p;
  color: #f5f5f7;
  font-weight: 200;
  font-size: 14px;
}
</style>