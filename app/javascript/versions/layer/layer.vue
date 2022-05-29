<template>
  <div>
    <Board />
  </div>
</template>

<script>
import Board from './components/board.vue'

export default {
  name: "Layer",
  components: {
    Board
  },
  data() {
    return {
      layer: {
        boards: Board,
        name: "",
        id: 0
      }
    }
  },
  created(layerName) {
    // API
  },
  methods: {
    addLayer(layerName) {
      this.name = layerName
      this.id = this.length() + 1
    }
  }
}
</script>

<style>

</style>