<template>
  <div class="row">
    <Cell
      v-for="cell in row.cells"
      :key="`${cell.y}-${cell.x}`"
      :cell="cell"
    />
  </div>
</template>

<script>
import Cell from './cell.vue'
import { VCell } from './cell.vue'

export class VRow {
  cells;
  y;
  constructor(rowIndex) {
    this.y = rowIndex
    this.cells = [...Array(16).keys()].map(i => new VCell(i, rowIndex))
  }
}
export default {
  name: "Row",
  components: {
    Cell
  },
  props: {
    row: {}
  },
  created() {
  }
}
</script>

<style>
.row {
  display:flex;
}
</style>
