<template>
  <div class="register">
    <div class="row">
      <div class="card mx-auto">
        <div class="card-body">
          <div class="col-12 text-center d-flex justify-content-start ">
            <router-link to="/">
            <b-icon-chevron-left class="mt-2" ></b-icon-chevron-left>
            </router-link>
            <h4 class="mx-auto text-info mb-4">Register</h4>
          </div>
          <div class="col-12">
            <h6>Let's create your account!</h6>
          </div>
          <form @submit.prevent="onRegister()">
            <div class="col-12">
                <div class="md-form input-with-post-icon">
                  <i class="fas fa-user input-prefix"></i>
                  <input type="text"  id="name" class="form-control" v-model="form.full_name" required>
                  <label for="name">Name</label>
                </div>
                <div class="md-form input-with-post-icon">
                  <i class="fas fa-envelope input-prefix"></i>
                  <input type="email"  id="email" class="form-control" v-model="form.email" required>
                  <label for="email">Email </label>
                </div>
                <div class="md-form input-with-post-icon">
                  <i class="fas fa-eye input-prefix"></i>
                  <input type="password"  id="password" class="form-control" v-model="form.password" required>
                  <label for="password">Password </label>
                </div>
                  <button class="regis col-12 text-center mt-4 mb-3" type="submit">Register</button>
                <div class="row mb-2">
                  <div class="col-3"><hr></div>
                  <div class="col-6 text-center text-muted" >Register with</div>
                  <div class="col-3"><hr></div>
                </div>
                <div class="google-akun">
                  <img src="../assets/img/Vector.png" >
                  <button class="google col-12 mb-4 text-info">Google</button>
               </div>
            </div>
          </form>
        </div>
      </div>
    </div>
  </div>
</template>

<script>
import { mapActions } from 'vuex'
export default {
  data () {
    return {
      form: {
        full_name: '',
        email: '',
        password: ''
      }
    }
  },
  methods: {
    ...mapActions({
      actionRegister: 'auth/registrasi'
    }),
    onRegister () {
      this.actionRegister(this.form)
        .then((response) => {
          alert(response + ', Please check email for verification')
          window.location = '/'
        })
        .catch((err) => {
          alert(err)
        })
    }
  }
}
</script>

<style>
.register {
  margin-left: 80px;
}
.regis {
  background: #7E98DF;
  border-radius: 70px;
  height: 40px;
  cursor: pointer;
}
.regis:hover {
  background-color: #9cb5f5;
}
.google {
  border-radius: 70px;
  height: 40px;
}
.google:hover {
  background-color: #e7e7f1;
}
.google-akun {
  position: relative;
}
.google-akun img{
  position: absolute;
  top: 12px;
  left: 100px;
  z-index: 1;
}
@media(max-width: 600px) {
  .register {
    margin-left: 0;
  }
}
</style>
