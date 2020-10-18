<template>
  <div class="chat-list">
   <div class="row sideleft1">
      <div class="col-12 col-lg-3 sideleft bg-white">
        <div class="row mt-3 mb-4 m-2">
          <div class="col-lg-9 col-6">
            <h4 style="color:#7E98DF">Telegram</h4>
          </div>
          <div class="col-lg-3 col-6 text-right">
            <h4><b-icon-text-left style="color:#7E98DF;cursor:pointer; margin-left:50px" @click="menu_toggle"></b-icon-text-left></h4>
          </div>
        </div>
        <div class="menu-list">
          <p><b-icon-gear class="ml-2"></b-icon-gear><span class="ml-1" @click="list()">Settings</span></p>
          <p><b-icon-person class="ml-2"></b-icon-person><span class="ml-1">Contacts</span></p>
          <p><b-icon-telephone class="ml-2"></b-icon-telephone><span class="ml-1">Call</span></p>
          <p><b-icon-bookmark class="ml-2"></b-icon-bookmark><span class="ml-1">Save messages</span></p>
          <p><b-icon-person-plus class="ml-2"></b-icon-person-plus><span class="ml-1">Invite friends</span></p>
          <p><b-icon-map class="ml-2"></b-icon-map><span class="ml-1" @click="map">Map</span></p>
          <p><b-icon-power class="ml-2"></b-icon-power><span class="ml-1" @click.prevent="logout()">Logout</span></p>
        </div>
        <div class="row">
          <div class="col-12" v-for="(user,index) in listUsers" :key="index">
            <div class="me d-flex flex-column justify-content-center align-items-center" v-if="fullname === user.full_name">
              <img :src="`${URL}/${user.image}`" class="rounded-circle">
              <h5>{{user.full_name}}</h5>
              <p>{{user.username}}</p>
            </div>
          </div>
        </div>
        <div class="row  ">
          <div class="col-lg-6 col-6">
              <form class="form-inline  d-flex justify-content-center md-form form-sm mt-0">
              <i class="fas fa-search" aria-hidden="true"></i>
              <input class="form-control form-control-sm ml-3 col-lg-9 col-9" type="text" placeholder="Search"
                aria-label="Search">
            </form>
          </div>
          <div class="col-lg-6 col-6 text-right">
          <h3><b-icon-plus style="color:#7E98DF;" class="plus-btn"></b-icon-plus></h3>
          </div>
        </div>
        <div class="row m-2">
          <div class="col-lg-3 col-4 col-md-4">
            <h6>All</h6>
          </div>
          <div class="col-lg-5 col-4 col-md-4">
            <h4><span class="badge" style="border-radius: 20px;height:30px;background-color:#7E98DF; ">Important</span></h4>
          </div>
          <div class="col-lg-4 col-4 col-md-4 text-right">
            <h6>Unread </h6>
          </div>
        </div>
        <div class="row chat d-flex justify-content-between m-2 mt-5">
            <div class="col-12"  v-for="(user,index) in listUsers" :key="index">
              <div class="row mb-3" v-if="fullname !== user.full_name">
                <div class="col-3" >
                  <img :src="`${URL}/${user.image}`" width="60px" height="60px" style="border-radius: 20px;">
                </div>
                <div class="col-9 selectUser" @click="selectUser(user.full_name,user.image)" >
                  <div class="row text-chat">
                    <div class="col-10 d-flex">
                        <h6>{{user.full_name}}</h6>
                        <b-icon-caret-up-fill style="margin-top:3px; margin-left:2px"></b-icon-caret-up-fill>
                    </div>
                    <div class="col-2">
                      <p><small class="time">12:30</small></p>
                    </div>
                  </div>
                  <div class="row text-chat">
                    <div class="col-10 col-lg-10">
                        <p>What are you doiing!</p>
                    </div>
                      <div v-if="listMessages.length === 0">
                         <span class="badge rounded-circle text-right" style="background-color:#7E98DF" >0</span>
                        </div>
                        <div v-else>
                    <div class="col-2 col-lg-2" v-for="(dataMsg,index) in listMessages" :key="index">
                          <div v-if="dataMsg.sender===user.full_name || dataMsg.sender===fullname" >
                            <span class="badge rounded-circle text-right" style="background-color:#7E98DF" >{{listMessages.length}}</span>
                          </div>
                        </div>
                    </div>
                  </div>
                </div>
              </div>
            </div>
      </div>
      </div>
      <div class="col-md-9 col-lg-9 col-12 nav-profile" >
        <div v-if="userReceiver !== null">
          <div class="row mb-4 nav-profiles">
            <div class="navbar-profile bg-white d-flex " style="width:1100px; padding:10px">
                <img :src="`${URL}/${userImage}`" class="rounded-circle">
                <div class="name-profile ml-2">
                  <h6>{{userReceiver}}</h6>
                    <div class="text-success" v-if="status==='online'">
                      <p>{{status}}</p>
                    </div>
                    <div v-else>
                      Offline
                    </div>
                </div>
                  <span style="margin-left:280px" class="list-user-mobile mt-2">
                    <h3> <b-icon-x-circle @click.prevent="menu_list()"></b-icon-x-circle> </h3>
                  </span>
            </div>
          </div>
        </div>
        <div v-else>
          <div class="row navbar-profile2" style="width:1100px">
            <div class="navbar-profile bg-white d-flex" style="width:100%; padding:10px">
                <img src="../assets/img/default.jpg" class="rounded-circle">
                <div class="name-profile ml-2">
                <h6>Default</h6>
                <div v-if="status==='online'">
                   <p class="text-success">Online</p>
                </div>
                <div v-else>
                   <p>Offline</p>
                </div>
                </div>
            </div>
          </div>
        </div>
        <div class="messages">
            <div v-if="userReceiver !== null">
              <div class="row">
                <div class="col-lg-12 col-12">
                  <div class="row mb-3">
                    <div class="col-lg-12 col-12">
                      <div class="alert alert-success">Chatting dengan <b>{{userReceiver}}</b> :</div>
                      <!-- <img :src="`http://localhost:3000/${userImage}`"> -->
                    </div>
                  </div>
                </div>
              </div>
            </div>
            <div v-for="(dataUser,index) in historyAllMessages " :key="index" >
               <div class="d-flex mb-3 msg-chat" v-if="dataUser.sender !== fullname">
                 <div class="detail-msg">
                    <p><b-icon-power class="ml-2"></b-icon-power><span class="ml-1" @click.prevent="logout()">Logout</span></p>
                  </div>
                     <img :src="`${URL}/${userImage}`" class="rounded-circle"  style="object-fit: contain;">
                   <p style="padding:10px " class="buble-chats ml-4">
                     <span class="pesanAll">
                       {{dataUser.message}} X</span>
                   </p>
                </div>
                 <div class="d-flex justify-content-end mb-3" v-else>
                   <p style="padding:10px " class="buble-chats2 mr-4">
                      <b-dropdown id="dropdown-dropleft" dropleft text="Drop-Left" size="sm"  variant="link" toggle-class="text-decoration-none" no-caret style="margin-top:-30px; margin-left:-25px">
                        <template v-slot:button-content>
                          <b-icon-three-dots></b-icon-three-dots>
                        </template>
                        <b-dropdown-item href="#" @click="deleted(dataUser)">Delete</b-dropdown-item>
                      </b-dropdown>
                     <span class="pesanAll">
                       {{dataUser.message}}</span>
                   </p>
                     <img :src="`${URL}/${chat.detailUser.image}`" class="rounded-circle mr-3 " style="object-fit: cover;">
                </div>
            </div>
            <div v-if="userReceiver !== null">
              <div v-for="(dataUser, index) in privateMessages" :key="index">
                <div class="d-flex mb-3" v-if="dataUser.sender !== fullname">
                     <img :src="`${URL}/${dataUser.img}`" class="rounded-circle" >
                   <p style="padding:10px " class="buble-chats ml-4">
                     {{dataUser.message}}
                   </p>
                </div>
                 <div class="d-flex justify-content-end mb-3" v-else>
                   <p style="padding:10px " class="buble-chats2 mr-4">
                     {{dataUser.message}}
                   </p>
                     <img :src="`${URL}/${dataUser.img}`" class="rounded-circle mr-3 " >
                </div>
              </div>
            </div>
            <div v-else>
              <div v-for="(dataUser, index) in listMessages" :key="index">
              {{dataUser}}
            </div>
            </div>
        </div>
        <div class="row send-messages mt-5">
          <div class="md-form input-group mb-3" style="width:98%">
            <div class="input-group-append">
              <button class="btn btn-md btn-secondary m-0 px-3" type="button" id="MaterialButton-addon2" @click="sendMessage()">Button</button>
            </div>
            <input type="text" class="form-control" placeholder="Type your message" aria-label="Recipient's username"
            v-model="message"
              aria-describedby="MaterialButton-addon2">
          </div>
        </div>
      </div>
    </div>
    <Sidebar @closeprofile="list"/>
  </div>
</template>

<script>
import Sidebar from '../components/Sidebar'
import io from 'socket.io-client'
import { URL } from '../helper/env'
import { mapActions } from 'vuex'
export default {
  name: 'Content',
  props: ['chat'],
  components: {
    Sidebar
  },
  data () {
    return {
      URL: process.env.VUE_APP_URL,
      message: null,
      email: this.$route.query.email,
      socket: io(`${URL}`),
      listUsers: [],
      fullname: localStorage.getItem('fullname'),
      imageSender: localStorage.getItem('image'),
      userReceiver: null,
      userImage: null,
      listMessages: [],
      status: null,
      privateMessages: [],
      historyAllMessages: [],
      img: this.chat.detailUser.image
    }
  },
  methods: {
    sendMessage () {
      if (this.userReceiver === null) {
        alert('Silahkan pilih user')
      } else {
        const msg = `${this.message}`
        this.listMessages = [...this.listMessages, {
          sender: this.fullname,
          receiver: this.userReceiver,
          message: msg
        }]
        // this.listMessages = []

        this.getPrivateMessage()

        this.socket.emit('send-message', {
          sender: this.fullname,
          receiver: this.userReceiver,
          message: this.message
        })
        this.message = ''
      }
    },
    selectUser (user, image) {
      this.listMessages = []
      this.privateMessages = []
      this.userReceiver = user
      this.userImage = image
      this.getPrivateMessage()
      this.socket.emit('get_history_message', {
        sender: this.fullname,
        receiver: user
      })
      this.getHitoryMessages()
      const sLeft = document.querySelector('.sideleft')
      sLeft.classList.toggle('empty')
    },
    getPrivateMessage () {
      const privateMessage = this.listMessages
        .filter((data) => {
          if (this.userReceiver === null) {
            return data.sender === this.userReceiver || data.sender === this.fullname
          } else {
            return data.receiver === this.userReceiver || data.sender === this.userReceiver
          }
        })
      this.privateMessages = privateMessage
    },
    getHitoryMessages () {
      this.socket.on('historyMessage', (data) => {
        this.historyAllMessages = data
      })
    },
    ...mapActions({
      deleteMsg: 'auth/deleteMessage'
    }),
    deleted (data) {
      this.deleteMsg(data.id)
        .then((result) => {
          alert(result)
          setTimeout(() => {
            location.reload(true)
          }, 1000)
        }).catch((err) => {
          alert(err.message)
        })
    },
    toogleImage () {
      const sRight = document.querySelector('.sideright')
      const content = document.querySelector('.nav-content')
      const btn = document.querySelector('.hobat')
      const message2 = document.querySelectorAll('.friend-other')
      sRight.classList.toggle('slide')
      content.classList.toggle('conten-nav')
      btn.classList.toggle('send-msg')
      message2.forEach(e => {
        e.classList.toggle('friend-message')
      })
    },
    menu_toggle () {
      const menuToggle = document.querySelector('.menu-list')
      menuToggle.classList.toggle('menu-list-toggle')
    },
    list () {
      const slide = document.querySelector('.side-profile')
      slide.classList.toggle('slider')
    },
    map () {
      window.location = '/about'
    },
    menu_list () {
      const sLeft = document.querySelector('.sideleft')
      sLeft.classList.toggle('empty')
    },
    detailMsg (index) {
      // const z = this.historyAllMessages
      // for (const x in z) {
      //   console.log(z[index]);
      // }
      // alert(this.historyAllMessages.[index])
      // const detailMsg = document.querySelector('.detail-msg')
      // detailMsg.classList.toggle('display-detail-msg')
    },
    logout () {
      localStorage.removeItem('id')
      localStorage.removeItem('fullname')
      localStorage.removeItem('tokenaccess')
      localStorage.removeItem('refreshtoken')
      localStorage.removeItem('image')
      window.location = '/'
    }
  },
  mounted () {
    this.socket.emit('get-all-users', [])
    this.socket.on('list-users', (data) => {
      this.listUsers = data
    })
    this.socket.emit('join-room', {
      user: this.fullname
    })
    this.socket.on('list-messages', (data) => {
      this.listMessages = [...this.listMessages, data]
      if (this.userReceiver !== null) {
        this.getPrivateMessage()
      }
    })
    this.socket.on('status', (status) => {
      this.status = status
    })
  }
}
</script>

<style>
.slider {
  transform: translateX(-5%);
}
.side-profile {
  transition: all 1s;

}
.sideleft1 {
  position: fixed;
}
.messages {
  overflow-y: scroll;
  height: 65vh;
  width: 100%;
}
.messages::-webkit-scrollbar{
  height: 0;
  width: 3px;
}
.messages::-webkit-scrollbar-thumb{
background-color: #b6b1b1;
}
.chat {
  overflow: scroll;
  height: 30vh;
  min-height: 100px;
    background-color: #FFF;
}
.chat::-webkit-scrollbar{
  height: 0;
  width: 3px;
}
.chat::-webkit-scrollbar-thumb{
background-color: #b6b1b1;
}
.sideleft, .sideright {
  background-color: #FFF;
  min-height: 100vh;
  border-right: 1px solid rgb(228, 222, 222);
  border-left: 1px solid rgb(228, 222, 222);
}
.buble-chats {
  background: #7E98DF;
  border-radius: 35px 35px 35px 10px;
  max-width: 50%;
}
.buble-chats2 {
  background: #b6b1b1;
  border-radius: 35px 10px 35px 35px;
  max-width: 50%;
}
.send-messages {
  margin-top: 30px;
}
.chat {
  cursor: pointer;
}
.img-message{
  position: relative;
}
.read {
  display: none;
}
.box-message {
  position: absolute;
  width: 290px;
  padding: 10px;
  top: 0px;
  left:80px;
  background: #7E98DF;
  border-radius: 35px 35px 35px 10px;
}
.message2 {
  position: absolute;
  width: 290px;
  padding: 10px;
  top: 40px;
  right:80px;
  background: #FFFFFF;
  border-radius: 35px 10px 35px 35px;
}
.text-chat p {
  font-size: 14px;
  margin-top: -5px;
}
#content {
  position: relative;
  min-height: 100vh;
}
.input-group {
  margin-top:0px;
}
.nav-img{
  cursor: pointer;
}
.slide {
   transform: translateX(120%);
   transition: all .7s;
}
.sideright{
  width:320px;
}
.nav-content {
  width: 700px;
}
.conten-nav{
  width: 1044px;
}
.send-msg {
  width: 1030px !important;
}
.hobat{
  width: 690px;
  left: 0;
}

.menu-list {
  position: absolute;
  background-color: #7E98DF;
  height: 0;
  width: 0;
  left: 200px;
  top: 75px;
  transition: all .7s;
  transform: scale(0);
}
.menu-list-toggle {
  padding-top: 5px;
  transform: scale(1);
  position: absolute;
  width: 200px;
  height: 290px;
  background-color: #7E98DF;
  border-radius: 35px 10px 35px 35px;
  left: 100px;
  top: 75px;
  overflow: hidden;
  z-index: 2;
  cursor: pointer;
}

.menu-user-toggle {
  padding-top: 5px;
  transform: scale(1);
  position: absolute;
  width: 200px;
  padding: 15px;
  background-color: #7E98DF;
  border-radius: 35px 10px 35px 35px;
  left: 250px;
  top: 55px;
  overflow: hidden;
  z-index: 2;
  cursor: pointer;
}
.menu-list-toggle p:hover {
  color: #a9c1e6;
}
.menu-list-toggle p {
  color: white;
  margin-top: 10px;
  margin-left: 20px;
}
.friend-message {
  transform: translateX(50%);
   transition: all .7s;
}
.list-user-mobile {
  cursor: pointer;
  display: none;
}
.menu-togle, .plus-icon, .read2 {
  display: none !important;
}
.pesanAll {
  cursor: pointer;
}
.detail-msg {
   position: absolute;
  background-color: #7E98DF;
  min-heigh:100px;
  width: 0;
  left: 200px;
  top: 175px;
  transition: all .7s;
  transform: scale(0);
}
.display-detail-msg {
  padding-top: 5px;
  transform: scale(1);
  position: absolute;
  width: 200px;
  padding: 15px;
  background-color: #7E98DF;
  border-radius: 35px 10px 35px 35px;
  left: 250px;
  top: 155px;
  overflow: hidden;
  z-index: 2;
  cursor: pointer;
}
.msg-chat {
  position: relative;
}
@media(max-width: 600px) {
  .empty, .navbar-profile2 {
    display: none !important;
  }
  .list-user-mobile {
  display: block;
}
.messages {
  padding-left: 15px;
  width: 100%;
  overflow: auto;
}
.messages::-webkit-scrollbar{
  height: 0;
  width: 3px;
}
.messages::-webkit-scrollbar-thumb{
background-color: #b6b1b1;
}
.sideleft1 {
  width: 100%;
}
.menu-togle {
  justify-content: center;
  margin-left: -800px;
  background-color: aqua;
}
.read2, .plus-icon {
  margin-left: -300px;
  display: block;
  margin-right: 50px;
}
#app {
  width: 100%;
}
.plus-btn {
  margin-right: 20px;
}
.input-group {
  margin-left: 15px;
}
.nav-profiles {
  width:1500px;
}
.navbar-profile img{
  margin-left: 15px;
}
.slider {
  transform: translateX(2%);
  width: 0;
}

}
</style>
