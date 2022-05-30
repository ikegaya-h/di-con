<template>
  <div id="app" class="d-flex flex-column min-vh-100">
    <TheHeader class="mb-auto" />
    <router-view />
  </div>
</template>

<script>
import TheHeader from "components/TheHeader"

export default {
  components: {
    TheHeader
  }
}
</script>

<style scoped>

</style>
