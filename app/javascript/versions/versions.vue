<template>
  <div>
    <Layer
      v-for="ver in ver.layer"
      :key="ver.length()"
      :ver="ver"
    />
  </div>
</template>

<script>
import Layer from './layer/layer'

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
      ver.name = verName
      ver.id = ver.length() + 1
      Layer = new Layer(layerName)
    }
  },
}
</script>

<style>

</style>