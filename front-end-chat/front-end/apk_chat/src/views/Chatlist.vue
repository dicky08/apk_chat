<template>
  <div>
    <Chat :chat="getDetailUser"/>
  </div>
</template>

<script>
import Chat from '../components/Chat'
import io from 'socket.io-client'
import { URL } from '../helper/env'
import { mapState, mapActions, mapGetters } from 'vuex'
export default {
  name: 'Chatlist',
  components: {
    Chat
  },
  data () {
    return {
      socket: io(`${URL}`)
    }
  },
  computed: {
    ...mapState({
      id: 'id'
    }),
    ...mapGetters({
      getDetailUser: 'auth/getDetailUser'
    })
  },
  methods: {
    ...mapActions({
      actgetDetailUser: 'auth/actgetDetailUser'
    })
  },
  mounted () {
    this.actgetDetailUser(this.id)
  }

}
</script>

<style>

</style>
