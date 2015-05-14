<ul class="nav nav-sidebar">
            <li class="active"><a href="#"><h4>Danh Sách Công Trình </h4><span class="sr-only">(current)</span></a></li>
</ul>
<div class="row">
<?php
if($dsct){
    foreach($dsct as $ct){
        $chuoi= $ct['hinh'];
         $arrchuoi= explode('|',$chuoi);
             $hinh= $arrchuoi[0];
?>
        <div class="col-sm-6 col-md-12">
            <div class="thumbnail">
            <p><h4 align="center" style="color: green;"><?php
              echo $ct['ten_cong_trinh'];
            
             ?></h4></p>
              <img alt="<?php echo $ct['ten_cong_trinh'] ?>" src="<?php echo base_url('public/hinh_anh_cong_trinh').'/'.$hinh?>" >
              <div class="caption">
                <p><?php echo  $ct['noi_dung']; ?></p>
              </div>
            </div>
        </div>
<?php
    }
}
 ?>
 
      <div align="center" class="col-sm-12">
        <ul class="pagination">
        <?php echo $link; ?>
        </ul>
      </div>
    
    </div>