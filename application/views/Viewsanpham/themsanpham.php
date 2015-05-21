<script src="<?php echo base_url('public/ckeditor_san_pham/ckeditor.js')?>"></script>
<?php $this->load->helper('form')?>
<h2>Thông tin sản phẩm</h2>
<?php
if(isset($err)){
    echo $err;
}
 ?>
<?php
echo form_open_multipart('quan-tri/san-pham/them','class="form-horizontal" role="form"')
?>
    <div class="form-group">
      <label class="control-label col-sm-2" for="masanpham">Mã sản phẩm:</label>
      <div class="col-sm-4">
        <input type="text" disabled="disabled" placeholder="Mã sản phẩm" class="form-control"/>
      </div>
    </div>
    <div class="form-group">
      <label class="control-label col-sm-2" for="tensanpham">Tên sản phẩm:</label>
      <div class="col-sm-4">          
        <?php
        $data=array(
            'name'=>'tensanpham',
            'id'=>'tensanpham',
            'class'=>'form-control',
            'value'=>set_value('tensanpham',''),
            'placeholder'=>'Tên sản phẩm'
        );
        echo form_error('tensanpham');
        echo form_input($data);
        ?>
      </div>
      <label class="control-label col-sm-2" for="tensanphamurl">Tên URL:</label>
      <div class="col-sm-4">          
        <?php
        $data=array(
            'name'=>'tensanphamurl',
            'id'=>'tensanphamurl',
            'class'=>'form-control',
            'value'=>set_value('tensanphamurl',''),
            'placeholder'=>'Tên URL'
        );
        echo form_error('tensanphamurl');
        echo form_input($data);
        ?>
      </div>
    </div>
    <div class="form-group">
      <label class="control-label col-sm-2" for="dongia">Đơn giá:</label>
      <div class="col-sm-4">          
        <?php
        $data=array(
            'name'=>'dongia',
            'id'=>'dongia',
            'class'=>'form-control',
            'value'=>set_value('dongia',''),
            'placeholder'=>'Đơn giá'
        );
        echo form_error('dongia');
        echo form_input($data);
        ?>
      </div>
      <label class="control-label col-sm-2" for="hinh">Hình:</label>
      <div class="col-sm-4">          
        <?php
        $data=array(
            'name'=>'hinh',
            'id'=>'hinh',
            'class'=>'form-control',           
        );
        echo form_upload($data);
        ?>
      </div>
    </div>
    <div class="form-group">
      <label class="control-label col-sm-2" for="maloai">Loại:</label>
      <div class="col-sm-4">          
        <?php       
            echo form_dropdown('maloai',$lspselect,array('class'=>'form-control') );
        ?>
      </div>
    </div>
    <div class="form-group">
      <label class="control-label col-sm-2" for="ngaycapnhat">Ngày cập nhật:</label>
      <div class="col-sm-4">          
        <input type="date" name="ngaycapnhat" value="<?php echo set_value('ngaycapnhat')?>"/>
      </div>
      <label class="control-label col-sm-2" for="sanphammoi">Sản phẩm mới:</label>
      <div class="col-sm-4">          
        <?php
        $data=array(
            'name'=>'sanphammoi',
            'id'=>'sanphammoi',
            'value'=>1,
            'placeholder'=>'Đơn giá'
        );
        echo form_checkbox($data);
        ?>
      </div>
    </div>
    <div class="form-group">
      <label class="control-label col-sm-2" for="ngaycapnhat">Diễn giải:</label>
      <div class="col-sm-10">          
        <?php
        $data=array(
            'name'=>'diengiai',
            'id'=>'diengiai',
            'class'=>'ckeditor'
        );
        echo form_textarea($data);
        ?>
      </div>      
    </div>
    
    <div class="form-group">        
      <div class="col-sm-offset-2 col-sm-10">
        <?php
        echo form_submit('submit','Thêm','class="btn btn-primary"');
        ?>
      </div>
    </div>
<?php
echo form_close();
?>
<!--`masanpham`, `tensanpham`, `tensanphamurl`, 
`diengiai`, `dongia`, `hinh`, `ngaycapnhat`, `maloai`, `maloaicha`, `sanphammoi`-->