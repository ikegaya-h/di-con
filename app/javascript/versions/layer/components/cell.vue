<template>
  <div class="cell-wrapper">
    <div class="cell"></div>
    <Object
      class="object"
      v-for="object in Object"
      :key="`${object.y}-${object.x}`"
      :object="object"
    />
  </div>
</template>

<script>
import Object from './object.vue'

export class VCell {
  x;
  y;
  constructor(cellIndex, rowIndex) {
    this.x = cellIndex
    this.y = rowIndex
  }
}
export default {
  name: "Cell",
  components: {
    Object
  },
  props: {
    cell: {}
  },
  created() {
  }
}
</script>

<style>
.cell-wrapper {
  position: relative;
}
.cell {
  height: 64px;
  width: 64px;
  background-color: chartreuse;
  border: 2px solid black ;
}
.object {
  position: absolute;
  top: 2px;
  left: 2px;
  height: 60px;
  width: 60px;
  background-color: cornsilk;
}
</style>
