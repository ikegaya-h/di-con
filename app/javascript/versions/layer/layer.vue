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
      layer.name = layerName
      layer.id = layer.length() + 1
      Board = new Board
    }
  }
}
</script>

<style>

</style>