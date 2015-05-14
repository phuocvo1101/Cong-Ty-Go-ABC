
<div class="panel panel-default">
      <!-- Default panel contents -->
      <div class="panel-heading"><?php echo $title_ds; ?></div>
      <div class="panel-body">
        <p><?php echo anchor('quan-tri/san-pham/them','Thêm Sản Phẩm'); ?></p>
      </div>

      <!-- Table -->
      <table class="table">
        <thead>
          <tr>
            <th>STT</th>
            <th>Mã Sản Phẩm</th>
            <th>Tên Sản Phẩm</th>
            <th>Tensanphamurl</th>
            <th>Đơn Giá</th>
            <th>Ngày Cập Nhật</th>
            <th>Sản Phẩm Mới</th>
          </tr>
        </thead>
        <tbody>
        <?php
        if($danhsachsanpham){
            $i=1;
            foreach($danhsachsanpham as $dssp){
                ?>
                <tr>
                    <th scope="row"><?php echo $i; ?></th>
                    <td><?php echo $dssp['masanpham']; ?></td>
                    <td><?php echo $dssp['tensanpham']; ?></td>
                    <td><?php echo $dssp['tensanphamurl']; ?></td>
                    <td><?php echo $dssp['dongia']; ?></td>
                    <td><?php echo $dssp['ngaycapnhat']; ?></td>
                    <td><?php echo $dssp['sanphammoi']; ?></td>
                    
                    <td>
                    <?php  echo anchor('quan-tri/nguoi-dung/cap-nhat/'.$dssp['masanpham'],'Cap Nhap','class= "btn btn-primary"');
                    echo ' | ';
                    echo anchor('quan-tri/nguoi-dung/xoa/'.$dssp['masanpham'],'Xoa','class= "btn btn-info"'); ?>
                    </td>
                    
                </tr>
                <?php
                $i++;
            }
        }
        ?>
        
         <tr>
            <td align="center" colspan="8">
                <ul class="pagination">
                    <?php echo $link; ?>
                </ul>
            </td>                
         </tr>
        </tbody>
            
        
      </table>
    </div>