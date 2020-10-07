<template>
  <div class="login">
    <div class="row w-100">
      <div class="card mx-auto">
        <div class="card-body">
          <div class="col-12 text-center d-flex justify-content-start ">
            <router-link to="/"><b-icon-chevron-left class="mt-2"></b-icon-chevron-left></router-link>
            <h4 class="mx-auto text-info mb-4">Forgot Password</h4>
          </div>
            <div class="col-12">
                <div class="md-form input-with-post-icon">
                  <i class="fas fa-envelope input-prefix"></i>
                  <input type="email"  id="email" class="form-control" required>
                  <label for="email">Email </label>
                </div>
                <button class="btn btn-primary btn-block">Reset Password</button>
            </div>
        </div>
      </div>
    </div>
  </div>
</template>

<script>
export default {

}
</script>

<style>
.card {
  margin: 10% auto;
  width: 400px;
}
</style>
