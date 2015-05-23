<?php $this->load->helper('form'); ?>
<h2>Thông Tin khách hàng</h2>
  <form class="form-horizontal" role="form" method="post" action="">
    
    <div class="form-group">
          <label class="control-label col-sm-2" for="Hoten">Họ Tên khách hàng:</label>
          <div class="col-sm-10">
            <input type="text" class="form-control" name="Hoten" id="Hoten" value="<?php echo set_value('Hoten') ?>" placeholder="Họ Tên khách hàng">
            <?php echo form_error('Hoten') ?>
          </div>
    </div>
     <div class="form-group">
          <label class="control-label col-sm-2" for="Diachi">Địa Chỉ:</label>
          <div class="col-sm-10">
            <input type="text" class="form-control" name="Diachi" id="Diachi" value="<?php echo set_value('Diachi') ?>" placeholder="Địa Chỉ">
             <?php echo form_error('Diachi') ?>
          </div>
          
      </div>
  
      
      <div class="form-group">
          <label class="control-label col-sm-2" for="Dienthoai">Điện Thoại</label>
          <div class="col-sm-10">
            <input type="text" class="form-control" name="Dienthoai" id="Dienthoai" value="<?php echo set_value('Dienthoai') ?>" placeholder="Điện Thoại">
             <?php echo form_error('Dienthoai') ?>
          </div>
      </div>
      <div class="form-group">
          <label class="control-label col-sm-2" for="Diachigiaohang">Địa Chỉ Giao Hàng:</label>
          <div class="col-sm-10">
            <input type="text" class="form-control" name="Diachigiaohang" id="Diachigiaohang" value="<?php echo set_value('Diachigiaohang') ?>" placeholder="Địa Chỉ Giao Hàng">
             <?php echo form_error('Diachigiaohang') ?>
          </div>
          
      </div>
    
     <div class="form-group">
          <label class="control-label col-sm-2" for="email">Email:</label>
          <div class="col-sm-10">
            <input type="text" class="form-control" name="email" id="email" value="<?php echo set_value('email') ?>" placeholder="Email">
             <?php echo form_error('email') ?>
          </div>
      </div>
    
    
    <div class="form-group">        
      <div class="col-sm-offset-2 col-sm-10">
        <input type="submit" class="btn btn-success" value="Thêm" name="submit"></button>
      </div>
    </div>
  </form>
   <!--`MaKH`, `Hoten`, `Diachi`, `Dienthoai`, `Diachigiaohang`, `email`-->
 