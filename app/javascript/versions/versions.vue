<template>
  <div>
    <Layer/>
  </div>
</template>

<script>
import Layer from './layer/layer.vue'

export default {
  name: "Ver",
  components: {
    Layer
  },
  data() {
    return {
      ver: {
        layer: Layer,
        name: "",
        id: 0
      }
    }
  },
  created(verName, layerName) {
    // API
  },
  methods: {
    addLayer(layerName) {
      this.name = verName
      this.id = this.length() + 1
    }
  },
}
</script>

<style>

</style>