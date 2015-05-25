
<div class="panel panel-primary">
  <div class="panel-heading">
    <h3 class="panel-title">Thông tin đơn đặt hàng</h3>
  </div>
  <div class="panel-body">
    <h4 class="sub-header">Đơn đặt hàng của khách hàng</h4>
  
      <div class="form-horizontal" role="form">
        <div class="form-group">
          <label class="control-label col-sm-2" for="email">Số hóa đơn:</label>
          <div class="col-sm-4">
            <p class="form-control-static"><?php echo $ttddh[0]['so_hd']; ?></p>
          </div>
          <label class="control-label col-sm-2" for="email">Ngày hóa dơn:</label>
          <div class="col-sm-4">
            <p class="form-control-static"><?php echo $ttddh[0]['ngay_hoadon']; ?></p>
          </div>
        </div>
        
        <div class="form-group">
          <label class="control-label col-sm-2" for="email">Ma khách hàng:</label>
          <div class="col-sm-4">
            <p class="form-control-static"><?php echo $ttddh[0]['MaKH']; ?></p>
          </div>
          <label class="control-label col-sm-2" for="email">Tên Khách Hàng:</label>
          <div class="col-sm-4">
            <p class="form-control-static"><?php echo $ttddh[0]['Hoten']; ?></p>
          </div>
        </div>
        
        <div class="form-group">
          <label class="control-label col-sm-2" for="email">Địa Chỉ:</label>
          <div class="col-sm-4">
            <p class="form-control-static"><?php echo $ttddh[0]['Diachi']; ?></p>
          </div>
          <label class="control-label col-sm-2" for="email">Địa chỉ giao hàng:</label>
          <div class="col-sm-4">
            <p class="form-control-static"><?php echo $ttddh[0]['Diachigiaohang']; ?></p>
          </div>
        </div>
        
        <div class="form-group">
          <label class="control-label col-sm-2" for="email">Email:</label>
          <div class="col-sm-4">
            <p class="form-control-static"><?php echo $ttddh[0]['email']; ?></p>
          </div>
          <label class="control-label col-sm-2" for="email">Điện Thoại:</label>
          <div class="col-sm-4">
            <p class="form-control-static"><?php echo $ttddh[0]['Dienthoai']; ?></p>
          </div>
          
          
        </div>
        <table class="table">
            <thead>
              <tr>
                <td>STT</td>
                <td>Mã Sản Phẩm</td>
                <td>Tên Sản Phẩm</td>
                <td align="right">Đơn Giá</td>
                <td align="right">Số Lượng</td>
                <td align="right">Thành Tiền</td>
              </tr>
            </thead>
             <tbody>
             <?php 
             $i=1;
             foreach($ttddh as $item){
                ?>
                    <tr>
                        <th scope="row"><?php echo $i;  ?></th>
                        <td><?php echo $item['masanpham'] ?></td>
                        <td><?php echo $item['tensanpham'] ?></td>
                        <td><?php echo  number_format($item['don_gia']) ?></td>
                        <td><?php echo $item['so_luong'] ?></td>
                        <td><?php echo number_format($item['thanh_tien']) ?></td>
                     </tr>
                <?php
                $i++;
             }
             ?>
             <tr>
                <td colspan="5" align="right">Tri Gia Don Hang</td>
                <td align="right"><?php echo number_format($ttddh[0]['trigia_hd']) ?></td>
             </tr>
            
            </tbody>
        </table>
        
         
        
        </div>
   
  </div>
</div>
