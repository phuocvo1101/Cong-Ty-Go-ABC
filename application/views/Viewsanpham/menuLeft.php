
<div class="panel-group" id="accordion" role="tablist" aria-multiselectable="true">
<?php if(isset($mlloasanpham)){
    $i=1;
    $tamp = 'in';
    foreach($mlloasanpham as $mllsp){
        $mlloaicha= $mllsp[0];
        $mldsloaicon = $mllsp[1];   
    ?>
    <div class="panel panel-default">
    <div class="panel-heading" role="tab" id="heading<?php echo $i; ?>">
      <h4 class="panel-title">
        <a data-toggle="collapse" data-parent="#accordion" href="#collapse<?php echo $i; ?>"
         aria-expanded="true" aria-controls="collapse<?php echo $i; ?>">
          <?php echo $mlloaicha['tenloai']; ?>
        </a>
      </h4>
    </div>
    <div id="collapse<?php echo $i; ?>" class="panel-collapse collapse <?php echo $tamp; ?>"
     role="tabpanel" aria-labelledby="heading<?php echo $i; ?>">
      <div class="panel-body">
        <ul class="nav nav-pills nav-stacked nav-pills-stacked-example">
          <?php if($mldsloaicon){
            echo '<li role="presentation">';
            foreach($mldsloaicon as $mlloaicon){
                echo anchor('san-pham'.'/'.$mlloaicha['tenloaiurl'].'/'.$mlloaicon['tenloaiurl'].'-'.$mlloaicon['maloai'],$mlloaicon['tenloai']);
                //echo anchor('sanpham/loaisanpham/'.$mlloaicon['maloai'],$mlloaicon['tenloai']);
            }
            echo '</li>';
          } 
          ?>
          </ul>
      </div>
    </div>
  </div>
    
 <?php
 $i++;
 $tamp= 'out';
 }
} 
?>
  
 
  
</div>

<!-- <ul class="nav nav-pills nav-stacked nav-pills-stacked-example">
      <li role="presentation" class="active"><a href="#">Home</a></li>
      <li role="presentation"><a href="#">Profile</a></li>
      <li role="presentation"><a href="#">Messages</a></li>
    </ul> -->