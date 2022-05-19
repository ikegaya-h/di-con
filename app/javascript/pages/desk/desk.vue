<template>
  <div>
    <Sidebar />
    <Ver
      v-for="ver in desk.versions"
      :key="ver.id"
      :ver="ver"
    ></Ver>
  </div>
</template>

<script>
import { createVerify } from 'crypto'
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
        cellIndex: 0,
        rowIndex: 0
      }
    }
  },
  created(deskName, verName, layerName) {
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