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
        <div class="col-sm-3 col-md-2 sidebar">
        <ul class="nav nav-sidebar">
            <li class="active"><a href="#">Danh mục sản phẩm <span class="sr-only">(current)</span></a></li>
        </ul>
          <?php $this->load->view('Viewsanpham/menuLeft'); ?>
        </div>
        <div class="col-sm-9 col-sm-offset-3 col-md-10 col-md-offset-2 main">
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
  </body>
</html>
