  <div class="col-sm-6 col-md-4">
    <div class="thumbnail">
      <img src="<?php echo base_url('public/hinhsanphamlon/'.$dssp['hinh']) ?>" alt="<?php echo $dssp['tensanpham'] ?>">
      <div class="caption">
      <p align="center"><?php echo $dssp['tensanpham'] ?></p>
        <h4 align="center">Giá :<?php echo number_format($dssp['dongia']).' vnd'   ?></h4>
        <p><a href="<?php echo site_url('chi-tiet-san-pham/'.$dssp['tensanphamurl'].'-'.$dssp['masanpham']) ?>" class="btn btn-primary" role="button">Chi Tiết</a> 
        </p>
      </div>
    </div>
  </div>
