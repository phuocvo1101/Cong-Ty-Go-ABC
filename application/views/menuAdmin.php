<div class="navbar-wrapper" >
      <div class="container-fuild ">

        <nav class="navbar navbar-default navbar-static-top" >
          <div class="container">
            <div class="navbar-header">
              <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
              </button>
              <a class="navbar-brand" href="#">Project name</a>
            </div>
            <div id="navbar" class="navbar-collapse collapse" >
              <ul class="nav navbar-nav">
                <li class="active"><a href="<?php echo site_url('quan-tri/san-pham') ?>">Sản Phẩm</a></li>
                <li><a href="<?php echo site_url('quan-tri/nguoi-dung') ?>">Người Dùng</a></li>
                <li><a href="#contact">Contact</a></li>
                <li class="dropdown">
                  <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false">Dropdown <span class="caret"></span></a>
                  <ul class="dropdown-menu" role="menu">
                    <li><a href="#">Action</a></li>
                    <li><a href="#">Another action</a></li>
                    <li><a href="#">Something else here</a></li>
                    <li class="divider"></li>
                    <li class="dropdown-header">Nav header</li>
                    <li><a href="#">Separated link</a></li>
                    <li><a href="#">One more separated link</a></li>
                  </ul>
                </li>
              </ul>
              
              <ul class="nav navbar-nav navbar-right">
              <?php if($this->session->has_userdata('nguoi_dung')){
                ?>
                    <li><a href="#" onclick="return false"><span class="glyphicon glyphicon-user"></span> <?php echo $this->session->userdata('nguoi_dung') ?></a></li>
                    <li><a href="<?php echo site_url('quan-tri/dang-xuat') ?>"><span class="glyphicon glyphicon-log-out"></span> Đăng Xuất</a></li>
                <?php
                
              }else{
                ?>
                <li><a href="<?php echo site_url('quan-tri/dang-nhap') ?>"><span class="glyphicon glyphicon-log-in"></span> Đăng Nhập</a></li>
                <?php
              } ?>
                   
              </ul>
            </div>
          </div>
        </nav>

      </div>
    </div>