  <!-- <div>
      <Sidebar/>
  </div> -->
<template>
  <div class="sidebar">
    <div class="row">
    <div class="col-3 col-lg-3 bg-white side-profile">
      <div class="row p-3 mt-3">
        <div class="col-lg-5 col-6">
          <b-icon-chevron-left></b-icon-chevron-left>
        </div>
        <div class="col-lg-6 col-6">
          <h6>@diki</h6>
        </div>
      </div>
      <div class="row">
        <div class="col-lg-12 col-12 d-flex justify-content-center mt-5 mb-3">
          <img src="../assets/img/Rectangle 3.png" >
        </div>
          <div class="col-lg-12 name-akun d-flex flex-column justify-content-center align-items-center">
            <h5>DIcky</h5>
            <p>@diki</p>
          </div>
      </div>
      <div class="row">
        <div class="col-lg-12 col-12 ml-3">
          <h5>Account</h5>
        </div>
      </div>
      <div class="row">
        <div class="col-lg-11 col-12 ml-3">
          <h6>3456789098765434567</h6>
            <a href="">Tap to change</a>
           <hr>
        </div>
      </div>
      <div class="row">
       <div class="col-lg-11 col-12 ml-3">
          <h6>@adssasdfs</h6>
            <p>Username</p>
           <hr>
        </div>
      </div>
      <div class="row">
       <div class="col-lg-11 col-12 ml-3">
          <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Neque fugiat nesciunt temporibus?</p>
          <p >Bio</p>
        </div>
      </div>
      <div class="row">
       <div class="col-lg-11 col-12 ml-3">
          <h5>Settings</h5>
        </div>
      </div>
      <div class="container">
        <div class="row mb-3 mt-3">
          <div class="col-lg-2 col-3">
            <b-icon-bell></b-icon-bell>
          </div>
          <div class="col-lg col">Notification and Sounds</div>
        </div>
        <div class="row mb-3">
          <div class="col-lg-2 col-3">
            <b-icon-file-lock></b-icon-file-lock>
          </div>
          <div class="col-lg col">Privaty and Security</div>
        </div>
        <div class="row mb-3">
          <div class="col-lg-2 col-3">
            <b-icon-graph-up></b-icon-graph-up>
          </div>
          <div class="col-lg col">Data and Stronge</div>
        </div>
        <div class="row mb-3">
          <div class="col-lg-2 col-3">
            <b-icon-card-text></b-icon-card-text>
          </div>
          <div class="col-lg col">Chat settings</div>
        </div>
        <div class="row mb-3">
          <div class="col-lg-2 col-3">
            <b-icon-display></b-icon-display>
          </div>
          <div class="col-lg col">Devices</div>
        </div>
      </div>

    </div>
  </div>
  </div>
</template>

<script>
// import Sidebar from '../components/Sidebar'
export default {
  components: {
    // Sidebar
  }
}
</script>

<style>
.sidebar{
  position: relative;
}
.side-profile {
position: absolute;
right: 0;
}
</style>
