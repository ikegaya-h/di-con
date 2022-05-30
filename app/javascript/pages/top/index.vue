<template>
  <div>
    <h3>Diagram Continuityにようこそ</h3>
    <div>
      登場人物を整理して物語を楽しもう
    </div>
    <router-link
      :to="{ name: 'DeskIndex' }"
      class="btn btn-dark mt-5"
    >
      はじめる
    </router-link>
  </div>
</template>

<script>
export default {
  name: "TopIndex",
}
</script>

<style scoped>
</style>