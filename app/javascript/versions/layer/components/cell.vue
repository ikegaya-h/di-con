<template>
  <div class="cell-wrapper">
    <div class="cell"></div>
    <Object
      class="object"
      v-for="object in Object"
      :key="object.x-object.y"
      :object="object"
    />
  </div>
</template>

<script>
import Object from './object'

export default {
  name: "Cell",
  components: {
    Object
  },
  data() {
    return {
      cell: {
        x: 0,
        y: 0
      },
    }
  },
  created(cellIndex, rowIndex) {
    cell.x = cellIndex;
    cell.y = rowIndex;
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
