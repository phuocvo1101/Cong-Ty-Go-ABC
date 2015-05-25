<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <meta name="description" content="">
    <meta name="author" content="">
    <link rel="icon" href="../../favicon.ico">

    <title><?php echo $title_bar ?></title>

    <!-- Bootstrap core CSS -->
    <link href="<?php echo base_url(''); ?>public/css_js/css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom styles for this template -->
    <link href="<?php echo base_url(''); ?>public/css_js/css/dashboard.css" rel="stylesheet">

    <script src="<?php echo base_url(''); ?>public/css_js/js/ie-emulation-modes-warning.js"></script>

    
  </head>

  <body>

    <?php $this->load->view('Viewsanpham/menusp'); ?>

    <div class="container-fluid">
      <div class="row">
        <div class="col-sm-4 col-md-3 sidebar">
        <ul class="nav nav-sidebar">
            <li class="active"><a href="#">Giỏ Hàng<span class="sr-only">(current)</span></a></li>
            <li>
                <a href="<?php echo site_url('gio-hang/thong-tin-gio-hang') ?>">
                <span class="glyphicon glyphicon-shopping-cart" aria-hidden="true"></span>
                <span id="ttgh">
                    SL : <?php echo $this->cart->total_items() ?> -
                    TT : <?php echo $this->cart->total() ?>
                </span>
                
                </a>
            </li>
        </ul>
        
        <ul class="nav nav-sidebar">
            <li class="active"><a href="#">Danh mục sản phẩm <span class="sr-only">(current)</span></a></li>
        </ul>
          <?php $this->load->view('Viewsanpham/menuLeft'); ?>
        </div>
        <div class="col-sm-8 col-sm-offset-4 col-md-9 col-md-offset-3 main" id="dvMain">
           <?php
            if(isset($path)){
                foreach($path as $path_view){
                    $this->load->view($path_view);
                }
            }
        ?>
        </div>
      </div>
    </div>

    <!-- Bootstrap core JavaScript
    ================================================== -->
    <!-- Placed at the end of the document so the pages load faster -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
    <script src="<?php echo base_url(''); ?>public/css_js/js/bootstrap.min.js"></script>
    <!-- Just to make our placeholder images work. Don't actually copy the next line! -->
    <script src="<?php echo base_url(''); ?>public/css_js/js/vendor/holder.js"></script>
    <!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
    <script src="<?php echo base_url(''); ?>public/css_js/js/ie10-viewport-bug-workaround.js"></script>
    <script>
        $(document).ready(function(){
            $(".mua").click(function(){
                var ttmh =$(this).attr('id');
                var slmua = $("#txtMua").val();
                if(slmua<0 || slmua==''){
                    alert('Vui lòng nhập số lượng > 0');
                    return;
                }
                $.ajax({
                    url: "<?php echo site_url('gio_hang/them') ?>",
                    type: 'POST',
                    data:{
                        tt:ttmh,
                        sl:slmua
                    },
                    dataType:'json',
                     success: function(data){
                    $('#ttgh').html('SL: ' + data['tsl'] + '- TT:' + formatCurrency(data['tt']) + 'vnđ' );
                }});
                
            });
            
            $("#txtTim").change(function(){
                var gt = $("#txtTim").val();
                if(gt.length>0){
                    alert(gt);
                }
               
               
                
                
            });
        });
        
        //Định dạng số
    function formatCurrency(num) 
    {
       num = num.toString().replace(/\$|\,/g,'');
       if(isNaN(num))
       num = "0";
       sign = (num == (num = Math.abs(num)));
       num = Math.floor(num*100+0.50000000001);
       num = Math.floor(num/100).toString();
       for (var i = 0; i < Math.floor((num.length-(1+i))/3); i++)
       num = num.substring(0,num.length-(4*i+3))+','+
       num.substring(num.length-(4*i+3));
       return (((sign)?'':'-') + num);
    }
    </script>
  </body>
</html>
