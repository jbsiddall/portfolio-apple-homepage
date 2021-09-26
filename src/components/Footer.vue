<script lang="ts" setup>
const {menus} = defineProps<{
    menus: {title: string, items: string[]}[]
}>();

const items = menus.flatMap(({title, items}) => {
    return [
        {text: title, type: "heading"},
        ...(items || []).map(text => ({text, type: "item"})),
    ]
});

</script>

<template>
    <nav role="navigation" class="background">
        <div class="content">
            <a
                v-for="item in items"
                :key="item.text"
                :text="item.text"
                :class="item.type"
                />
        </div>
    </nav>
</template>

<style scoped lang="scss">
@use "sass:map";
@use "../global.scss";

.background {
    background-color: #1d1d1f;
}

.content {
    max-width: 980px;;
    width: 100%;
    height: 415px;
    margin: 0px auto;
    padding: 20px 22px;

    display: flex;
    flex-direction: column;
    flex-wrap: wrap;
}

.item {
  @extend .text--p;
  color: #a1a1a6;
  font-weight: 200;
  font-size: 14px;
  margin-bottom: 10px;
}

.heading {
  @extend .item;
  color: rgb(245, 245, 247);
  font-weight: 300;
  margin-top: 24px;
}

</style>