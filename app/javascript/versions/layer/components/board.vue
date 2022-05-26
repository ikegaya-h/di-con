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

export default {
  name: "Boards",
  components: {
    Row
  },
  data() {
    return {
      boards: {
        rows: Row,
        name: "",
        id: 0,
      }
    }
  },
  created() {
    const rowNumber = Desk.rowIndex
    Row = [...Array(rowNumber).keys()].map(i => new Row(i));
  }
}
</script>

<style>

</style>
