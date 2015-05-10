<h2>Thông Tin Người Dùng</h2>
  <form class="form-horizontal" role="form" method="post" action="">
    <div class="form-group">
          <label class="control-label col-sm-2" for="ma_nguoi_dung">Mã Ngươi Dùng:</label>
          <div class="col-sm-10">
            <input type="text" class="form-control" id="ma_nguoi_dung" placeholder="Ma Nguoi dung" disabled>
          </div>
    </div>
    
    <div class="form-group">
          <label class="control-label col-sm-2" for="ten_nguoi_dung">Họ Tên:</label>
          <div class="col-sm-10">
            <input type="text" class="form-control" name="ten_nguoi_dung" id="ten_nguoi_dung" placeholder="Họ Tên">
          </div>
    </div>
    
     <div class="form-group">
          <label class="control-label col-sm-2" for="tendn">Tên Đăng nhập:</label>
          <div class="col-sm-10">
            <input type="text" class="form-control" name="tendn" id="tendn" placeholder="Tên Đăng nhập">
          </div>
    </div>
    
     <div class="form-group">
          <label class="control-label col-sm-2" for="email">Email:</label>
          <div class="col-sm-10">
            <input type="text" class="form-control" name="email" id="email" placeholder="Email">
          </div>
      </div>
    
     <div class="form-group">
          <label class="control-label col-sm-2" for="mat_khau">Mật Khẩu:</label>
          <div class="col-sm-4">
            <input type="password" class="form-control" name="mat_khau" id="mat_khau" placeholder="Mật Khẩu">
          </div>
          <label class="control-label col-sm-2" for="mat_khau_xac_nhan">Mật Khẩu Xác Nhận:</label>
          <div class="col-sm-4">
            <input type="password" class="form-control" name="mat_khau_xac_nhan" id="mat_khau_xac_nhan" placeholder="Mật Khẩu Xác Nhận">
          </div>
     </div>
      
      <div class="form-group">
          <label class="control-label col-sm-2" for="cmnd">Chứng Minh Nhân Dân:</label>
          <div class="col-sm-4">
            <input type="text" class="form-control" name="cmnd" id="cmnd" placeholder="cmnd">
          </div>
          <label class="control-label col-sm-2" for="dien_thoai">Điện Thoại</label>
          <div class="col-sm-4">
            <input type="text" class="form-control" name="dien_thoai" id="dien_thoai" placeholder="Điện Thoại">
          </div>
      </div>
    
      <div class="form-group">
          <label class="control-label col-sm-2" for="dia_chi">Địa Chỉ:</label>
          <div class="col-sm-4">
            <input type="text" class="form-control" name="dia_chi" id="dia_chi" placeholder="Địa Chỉ">
          </div>
          <label class="control-label col-sm-2" for="gioi_tinh">Giới Tính: Nam</label>
          <div class="col-sm-1">
            <input type="checkbox"
             class="form-control" name="gioi_tinh" id="gioi_tinh"
              placeholder="Phái">
          </div>
      </div>
     <div class="form-group">
          <label class="control-label col-sm-2" for="ngay_sinh">Ngay Sinh:</label>
          <div class="col-sm-4">
            <input type="date" class="form-control" name="ngay_sinh" id="ngay_sinh" placeholder="Ngay Sinh">
          </div>
          <label class="control-label col-sm-2" for="ma_loai_nguoi_dung">Loại Người Dùng:</label>
          <div class="col-sm-4">
              <select name="ma_loai_nguoi_dung">
              <?php
              foreach($loainguoidung as $lnd){
                ?>               
                    <option value="<?php echo $lnd['ma_loai_nguoi_dung']; ?>"><?php echo $lnd['ten_loai'] ?></option>                
              <?php
              }
              ?>
            </select>
          </div>
    </div>
    
    <div class="form-group">        
      <div class="col-sm-offset-2 col-sm-10">
        <input type="submit" class="btn btn-success" value="Thêm" name="them"></button>
      </div>
    </div>
  </form>
 