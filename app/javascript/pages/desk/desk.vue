<template>
  <div class="desk">
    <Sidebar />
    <Ver></Ver>
  </div>
</template>

<script>
import Sidebar from './components/sidebar.vue'
import Ver from '../../versions/versions.vue'

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
        rowIndex: 9,
      },
      deskName: "デフォルト",
      verName: "デフォルト",
      layerName: "デフォルト"
    }
  },
  created() {
    this.addVer(this.deskName, this.verName, this.layerName)
    this.addLayer(this.layerName)
    // API
  },
  methods: {
    addVer(deskName, verName, layerName) {
      this.name = deskName
      this.id = desk.length() + 1
      Ver = new Ver(verName, layerName)
    }
  }
}
</script>

<style>
.desk {
  display:flex;
}
</style>