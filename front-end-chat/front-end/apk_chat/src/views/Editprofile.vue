<template>
    <div class="wrap-content">
        <!-- <Navbar :img="getDetailUsers.users.data[0].image" /> -->
    <div class="container-fluid content pl-5 pr-5">
       <div class="" style=" display: flex; justify-content: space-around; height: 100vh">
           <div  class="col-md-3 ">
               <div class="text-center mt-5 avatar-image">
                 <img class="avatar" :src="`${URL}/${getDetailUser.detailUser.image}`" alt="" srcset="">
                 <input  type="file" class="upload" @change="onSelectFileedit($event)"/>
               </div>
               <div class="text-center mt-3" >
                 <h5 class="font-weight-bold">{{getDetailUser.detailUser.full_name}}</h5>
                    <div class="gender text-center">
                        <i class="fa fa-venus"></i>
                    </div>
                 <p><em>{{getDetailUser.detailUser.address}}</em></p>
                 <p> {{getDetailUser.detailUser.username}} | {{getDetailUser.detailUser.bio}}</p>
               </div>
           </div>
           <div class="col-md-9 info-user  bg-white ml-5 p-4 m-4" style="height: 400px;">
             <h4>Edit Profile</h4>
             <hr>
             <form>
                <div class="row" >
                  <div class="col-md-6">
                    <div class="row">
                      <div class="col-lg-12 col-12">
                          <div class="md-form input-with-post-icon">
                            <i class="fas fa-user input-prefix"></i>
                            <input type="text"  id="f_name" class="form-control" v-model="getDetailUser.detailUser.full_name"  required>
                            <label for="f_name">Full name</label>
                          </div>
                      </div>
                    </div>
                    <div class="row">
                      <div class="col-lg-12 col-12">
                          <div class="md-form input-with-post-icon">
                            <i class="fas fa-user input-prefix"></i>
                            <input type="text"  id="city" class="form-control" v-model="getDetailUser.detailUser.city" required>
                            <label for="city">City</label>
                          </div>
                      </div>
                    </div>
                    <div class="row">
                      <div class="col-lg-12 col-12">
                          <div class="md-form input-with-post-icon">
                            <i class="fas fa-user input-prefix"></i>
                            <input type="text"  id="address" class="form-control" v-model="getDetailUser.detailUser.address" required>
                            <label for="address">Address</label>
                          </div>
                      </div>
                    </div>
                  </div>
                  <div class="col-md-6">
                    <div class="row">
                      <div class="col-lg-12 col-12">
                        <div class="row">
                            <div class="col-lg-12 col-12">
                                <div class="md-form input-with-post-icon">
                                  <i class="fas fa-user input-prefix"></i>
                                  <input type="text"  id="phone" class="form-control" v-model="getDetailUser.detailUser.phone"  required>
                                  <label for="phone">Phone number</label>
                                </div>
                            </div>
                          </div>
                          <div class="row">
                            <div class="col-lg-12 col-12">
                                <div class="md-form input-with-post-icon">
                                  <i class="fas fa-user input-prefix"></i>
                                  <input type="text"  id="bio" class="form-control" v-model="getDetailUser.detailUser.bio"  required>
                                  <label for="bio">Bio</label>
                                </div>
                            </div>
                          </div>
                          <div class="row">
                                <div class="col-lg-12 col-12">
                                    <div class="edit-button text-right mt-4">
                                <button class="btn  btn-primary" @click.prevent="update()">Update profile</button>
                                <button class="btn  btn-primary" @click.prevent="chatlist()">Backto Chatlist</button>
                              </div>
                            </div>
                          </div>
                      </div>
                    </div>
                  </div>
                </div>
             </form>
           </div>
       </div>
    </div>
    </div>
</template>
<script>
// import Chat from '../components/Chat'
// import io from 'socket.io-client'
import { mapState, mapActions, mapGetters } from 'vuex'
export default {
  name: 'editprofile',
  components: {
  },
  data () {
    return {
      URL: process.env.VUE_APP_URL
      // socket: io('http://localhost:3000')
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
      actgetDetailUser: 'auth/actgetDetailUser',
      actUpdateUser: 'auth/actUpdateUser'
    }),
    onSelectFileedit (event) {
      this.getDetailUser.detailUser.image = event.target.files[0]
    },
    update () {
      const fd = new FormData()
      fd.append('full_name', this.getDetailUser.detailUser.full_name)
      fd.append('image', this.getDetailUser.detailUser.image)
      fd.append('city', this.getDetailUser.detailUser.city)
      fd.append('address', this.getDetailUser.detailUser.address)
      fd.append('phone', this.getDetailUser.detailUser.phone)
      fd.append('bio', this.getDetailUser.detailUser.bio)
      const id = this.getDetailUser.detailUser.id
      const save = {
        id: id,
        dataUser: fd
      }
      this.actUpdateUser(save)
        .then((result) => {
          if (result === 'Success update user') {
            alert('Success Update')
            window.location = '/chatlist'
          } else {
            alert(result)
            window.location = '/editprofile'
          }
        }).catch((err) => {
          alert(err.message)
        })
    },
    chatlist () {
      window.location = '/chatlist'
    }
  },
  mounted () {
    this.actgetDetailUser(this.id)
  }

}
</script>
<style>

.avatar {
     width: 50%;
    border:5px solid #1D9BFA;
    padding: 7px;
    border-radius: 500px;
    -webkit-border-radius: 500px;
    -moz-border-radius: 500px;
}

.avatar {
  position: relative;
}
.upload {
  position: absolute;
  left: 90px;
  top: 50px;
  background-color: lawngreen;
  width: 140px;
  height: 120px;
  z-index: 1;
  opacity: 0;
  cursor: pointer;
}
.avatar-image:hover::after {
  content: 'Upload';
  cursor: pointer;
  position: absolute;
  display: flex;
  justify-content: center;
  align-items: center;
  width: 138px;
  height: 138px;
  z-index: 0;
  background-color: rgba(5,5,5,.4);
   left: 90px;
  top: 50px;
  border-radius: 50%;
  color: white;
}

.info-user {
  border-radius: 20px;
}

</style>
