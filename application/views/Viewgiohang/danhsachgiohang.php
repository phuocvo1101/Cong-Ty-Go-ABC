<div class="panel panel-danger">
      <!-- Default panel contents -->
      <div class="panel-heading">Thông tin giỏ hàng</div>
      <?php
      if(isset($giohang)){
        ?>
        <form method="post" action="">
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
         foreach($giohang as $item){
            ?>
                <tr>
                    <th scope="row"><?php echo $i;  ?></th>
                    <td><?php echo $item['id'] ?></td>
                    <td><?php echo $item['name'] ?></td>
                    <td><?php echo $item['price'] ?></td>
                    <td>
                        <input type="number" value="<?php echo $item['qty'] ?>" name="sl_<?php echo $item['rowid'] ?>" style="text-align: center; width: 60px;" />
                    </td>
                    <td><?php echo number_format($item['qty']*$item['price']) ?></td>
                 </tr>
            <?php
            $i++;
         }
         ?>
         <tr>
            <td colspan="4" align="right">Tri Gia Don Hang</td><td></td>
            <td align="right"><?php echo number_format($this->cart->total()) ?></td>
         </tr>
         <tr>
            <td colspan="6" align="center">
                <input type="submit" name="capnhat" id="capnhat" value="Cap Nhat" class="btn btn-danger"  />
                <a href="<?php echo site_url('khach-hang/dat-hang') ?>" class="btn btn-info">Dat Hang</a>
                 <a href="<?php echo site_url('gio-hang/xoa-gio-hang') ?>" class="btn btn-success">Xoa Gio Hang</a>
            </td>
         </tr>
        </tbody>
    </table>
    </form>
        <?php
      }else{
        ?>
        <h2 align="center">Giỏ hàng trống</h2>
        <?php
      }
       ?>

      
    </div>