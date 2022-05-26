<template>
  <div>
    <!-- <Sidebar /> -->
    <Ver
      v-for="ver in desk.versions"
      :key="ver.id"
      :ver="ver"
    ></Ver>
  </div>
</template>

<script>
import Sidebar from './components/sidebar'

export default {
  name: "Desk",
  components: {
    Ver,
    Sidebar
  },
  props: {
    Ver
  },
  data() {
    return {
      desk: {
        ver: Ver,
        name: "",
        id: 0,
        cellIndex: 16,
        rowIndex: 9
      }
    }
  },
  created(deskName, verName, layerName) {
    unless (deskName && verName && layerName); {
      deskName = "デフォルト"
      verName = "デフォルト"
      layerName = "デフォルト"
      this.addVer(deskName, verName, layerName)
      this.addLayer(layerName)
    }
    // API
  },
  methods: {
    addVer(deskName, verName, layerName) {
      desk.name = deskName
      desk.id = desk.length() + 1
      Ver = new Ver(verName, layerName)
    }
  }
}
</script>

<style>

</style>