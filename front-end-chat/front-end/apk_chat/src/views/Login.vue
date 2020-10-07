<template>
  <div class="login">
    <div class="row">
      <div class="card mx-auto">
        <div class="card-body">
          <div class="col-12 text-center d-flex justify-content-start ">
            <h4 class="mx-auto mb-4 text-info">Login</h4>
          </div>
          <div class="col-12">
            <h6>Hi, Welcome back!</h6>
          </div>
          <form @submit.prevent="onLogin">
            <div class="col-12">
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
                <router-link to="/forgotpassword" class="float-right ">Forgot password?</router-link>
                <br>
                 <button class="login-text col-12 text-center mt-4 mb-3 text-white" type="submit" >Login</button>
                <div class="row">
                  <div class="col-3"><hr></div>
                  <div class="col-6 text-center mb-3 text-muted">Login with</div>
                  <div class="col-3"><hr></div>
                </div>
               <div class="google-akun">
                  <img src="../assets/img/Vector.png" >
                  <button class="google col-12 mb-4 text-info">Google</button>
               </div>
                <p class="text-center">Don't have an account? <router-link to="/register">Sign up</router-link></p>
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
        email: '',
        password: ''
      },
      dataLocal: localStorage.getItem('tokenaccess')
    }
  },
  methods: {
    ...mapActions({
      actionLogin: 'auth/login'
    }),
    onLogin () {
      this.actionLogin(this.form)
        .then((response) => {
          window.location = '/editprofile'
        })
        .catch((err) => {
          alert(err.message)
        })
    }
  },
  mounted () {
    // if (this.dataLocal) {
    //   window.location = '/chatlist'
    // }
  }
}
</script>

<style>
.login {
  margin-left: 80px;
}
.login-text {
  background: #7E98DF;
  border-radius: 70px;
  height: 40px;
  cursor: pointer;
}
  .login-text:hover {
    background-color: #9cb5f5;
  }
.google {
  background: #FFFFFF;
  border: 1px solid #7E98DF;
  box-sizing: border-box;
  border-radius: 70px;
}
.google-akun {
  position: relative;
}
.google:hover {
  background-color: #e7e7f1;
}
.google-akun img{
  position: absolute;
  top: 12px;
  left: 100px;
  z-index: 1;
}
@media(max-width: 600px) {
  .login {
      margin-left: 0;
  }
}
</style>
