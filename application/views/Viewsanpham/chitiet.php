
    <div class="row">
       <div class="col-md-4 thumbnail">
        <img src="<?php echo base_url('public/hinhsanphamnho').'/'.$sanpham['hinh'] ?>" />
    </div>
       <div class="col-md-6">
            <h2>Mã <?php echo $sanpham['masanpham'] ?> - <?php echo $sanpham['tensanpham'] ?></h2>
            <h3>Đơn giá: <?php echo number_format($sanpham['dongia']).'VND' ?></h3>
            <h3>
                <input type="number" name="txtMua" id="txtMua" value="1" style="text-align: center;" size="10px"  />
                <button class="btn btn-danger mua" id="<?php echo $sanpham['masanpham'].'dssp'.$sanpham['dongia']; ?>">Thêm Giỏ Hàng</button>
            </h3>
       </div>
</div>