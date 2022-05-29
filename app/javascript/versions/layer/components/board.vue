<template>
  <div>
    <Row
      v-for="row in board.rows"
      :key="row.y"
      :row="row"
    />
  </div>
</template>

<script>
import Row from './row.vue'
import { VRow } from './row.vue'

export class VBoard {
  rows;
  constructor() {
    this.rows = [...Array(9).keys()].map(i => new VRow(i))
  }
}
export default {
  name: "Boards",
  components: {
    Row
  },
  data() {
    return {
      board: {}
    }
  },
  created() {
    // const rowNumber = Desk.rowIndex
    this.board = new VBoard();
  }
}
</script>

<style>

</style>
