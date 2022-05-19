<template>
  <v-layout>
    <Cell
      v-for="cell in row.cells"
      :key="cell.x-cell.y"
      :cell="cell"
    />
  </v-layout>
</template>

<script>
import Cell from './cell'

export default {
  name: "Rows",
  components: {
    Cell
  },
  props: {
    Desk
  },
  data() {
    return {
      row: {
        cells: Cell,
        y: 0,
      }
    }
  },
  created(rowIndex) {
    cellIndex = Desk.cellIndex
    this.index = rowIndex
    Cell = [...Array(cellIndex).keys()].map(x => new Cell(x, rowIndex));
  }
}
</script>

<style>

</style>
