<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">
    <link rel="icon" href="../../favicon.ico">

    <title><?php echo $title_bar; ?></title>

    <link href="<?php echo base_url(); ?>public/css_js/css/bootstrap.min.css" rel="stylesheet">
    <!--my css -->
     <link href="<?php echo base_url(); ?>public/css_js/dinhdang.css" rel="stylesheet">

    <script src="<?php echo base_url(); ?>public/css_js/js/ie-emulation-modes-warning.js"></script>

    
    <link href="carousel.css" rel="stylesheet">
  </head>

  <body>
    
    <!-- menu-->
    <div>
            <?php
            $this->load->view('menuAdmin');
            ?>
    </div>
   
    <!--content-->
    <div class="container-fluid" style="min-height: 500px;">
        <?php
            if(isset($path)){
                foreach($path as $path_view){
                    $this->load->view($path_view);
                }
            }
        ?>
    </div>
   
    <!--endcontent-->
    
      <!-- footer-->
     <?php
     $this->load->view('footer');
     ?>

   
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
    <script src="<?php echo base_url(); ?>public/css_js/js/bootstrap.min.js"></script>
    <script src="<?php echo base_url(); ?>public/css_js/js/vendor/holder.js"></script>
    <script src="<?php echo base_url(); ?>public/css_js/js/ie10-viewport-bug-workaround.js"></script>
  </body>
</html>
