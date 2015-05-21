<div class="bs-example" data-example-id="table-within-panel">
    <div class="panel panel-default">
      <!-- Default panel contents -->
      <div class="panel-heading">Panel heading</div>
      <div class="panel-body">
      <?php
         echo anchor('quan-tri/nguoi-dung/them','Them Nguoi Dung');
       ?>
      </div>

      <!-- Table -->
      <table class="table">
        <thead>
          <tr>
            <th>STT</th>
            <th>Mã Người Dùng</th>
            <th>Họ Tên</th>
            <th>Tên Người Dùng</th>
             <th>Phái</th>
            <th>Địa Chỉ</th>
            <th>Email</th>
            <th>Điện Thoại</th>
          </tr>
        </thead>
        <tbody>
        <?php
         if($dsnd){
            $i=1;
            foreach($dsnd as $ds){
                
        ?>
        <tr>
            <td><?php echo $i ?></td>
            <td><?php echo $ds['ma_nguoi_dung']; ?></td>
            <td><?php echo $ds['tendn']; ?></td>
            <td><?php echo $ds['ten_nguoi_dung']; ?></td>
            <td><?php echo $ds['gioi_tinh']; ?></td>
            <td><?php echo $ds['dia_chi']; ?></td>
            <td><?php echo $ds['email']; ?></td>
            <td><?php echo $ds['dien_thoai']; ?></td>
            <td></td>
            <td>
            <?php
                echo anchor('quan-tri/nguoi-dung/cap-nhat/'.$ds['ma_nguoi_dung'],'Cap Nhap','class= "btn btn-primary"');
                echo ' | ';
                 echo anchor('quan-tri/nguoi-dung/xoa/'.$ds['ma_nguoi_dung'],'Xoa','class= "btn btn-info"');
            ?>
            </td>
        </tr>
        <?php 
        $i++ ;      
            }
         }
        ?>
         
          
        </tbody>
      </table>
    </div>
  </div>
  