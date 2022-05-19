<template>
  <div class="object">
    <h>画像</h>
    <h>{{name}}</h>
    <!-- <svg><line :x1,y1="address" :x2,y2="relation"></line></svg> -->
  </div>
</template>

<script>
export default {
  name: "Object",
  props: {
    Cell
  },
  data() {
    return {
      object: {
        name: "",
        x: 0,
        y: 0
      }
    }
  },
  created() {
    // API
  }
}
</script>

<style>

</style>