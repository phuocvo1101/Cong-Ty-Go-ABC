<?php $this->load->helper('form'); ?>
<h2>Thông Tin Đăng Nhập</h2>
<?php if(isset($err)){
    echo '<h2 style="color:red">'.$err.'</h2>';
} ?>
<form class="form-horizontal" role="form" method="post" action="">
  <div class="form-group">
    <label class="col-sm-2 control-label" for="tendn">Tên Đăng Nhập</label>
    <div class="col-sm-4">
      <input class="form-control" id="tendn" name="tendn" type="text" placeholder="Tên Đăng Nhập" value="<?php echo set_value('tendn') ?>">
       <?php echo form_error('tendn') ?>
    </div>
  </div>
  <div class="form-group">
    <label class="col-sm-2 control-label" for="mat_khau">Mật Khẩu</label>
    <div class="col-sm-4">
      <input class="form-control" id="mat_khau" name="mat_khau" type="password" placeholder="Mật Khẩu">
      <?php echo form_error('mat_khau') ?>
    </div>    
  </div>
  <div class="form-group">
    <label class="col-sm-2 control-label" for="maxacthuc">Mã Xác Thực</label>
    <div class="col-sm-4">
    <?php echo $image; ?>
      <input class="form-control" id="mxt" name="mxt" type="text" placeholder="Mã Xác Thực">
        <?php echo form_error('mxt') ?>
    </div>
  </div>
  <div class="form-group">
    <div class="col-sm-offset-2 col-sm-10">
      <input class="btn btn-primary" id="submit" name="submit" type="submit" value="Đăng Nhập">
    </div>
  </div>
  
  </form>