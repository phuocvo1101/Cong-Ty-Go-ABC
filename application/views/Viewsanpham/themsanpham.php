<?php $this->load->helper('form'); ?>
<script src="<?php echo base_url('public/ckeditor_sanpham/ckeditor.js') ?>"></script>
<form action="<?php echo site_url('quan-tri/san-pham/them') ?>" method="post" class="form-horizontal" role="form">
    <div class="form-group">
      <label class="control-label col-sm-2" for="email">Mã Sản Phẩm:</label>
      <div class="col-sm-10">
        <input type="text" class="form-control" disabled id="masanpham" placeholder="Mã Sản Phẩm">
      </div>
    </div>
    
    <div class="form-group">
      <label class="control-label col-sm-2" for="pwd">Tên Sản Phẩm:</label>
      <div class="col-sm-10"> 
      <?php
        $data= array(
        'name'=>'tensanpham',
        'id'=>'tensanpham',
        'value'=>set_value('tensanpham',''),
        'class'=>"form-control",
        'placeholder'=>'Tên Sản Phẩm'
        );
        echo form_input($data);
       ?>         
        
      </div>
    </div>
    <div class="form-group">
      <label class="control-label col-sm-2" for="pwd">Dien Giai:</label>
      <div class="col-sm-10"> 
      <?php
        $data= array(
        'name'=>'diengiai',
        'id'=>'diengiai',
        'value'=>set_value('tensanpham',''),
        'class'=>"form-control",
        );
        echo form_input($data);
       ?>         
        
      </div>
    </div>
    <div class="form-group">        
      <div class="col-sm-offset-2 col-sm-10">
        <button type="submit" class="btn btn-default">Submit</button>
      </div>
    </div>
  </form>