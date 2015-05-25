<nav class="navbar navbar-inverse navbar-fixed-top">
      <div class="container-fluid">
        <div class="navbar-header">
          <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
            <span class="sr-only">T3.ht KHTN</span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          </button>
          <a class="navbar-brand" href="#">T3.ht KHTN</a>
        </div>
        <div id="navbar" class="navbar-collapse collapse">
          <ul class="nav navbar-nav navbar-left">
          
                 <li role="presentation" class="dropdown">
                    <a class="dropdown-toggle" data-toggle="dropdown" href="#" role="button" aria-expanded="false">
                      Sản Phẩm <span class="caret"></span>
                    </a>
                    <ul class="dropdown-menu" role="menu">
                        <?php if(isset($mlloasanpham)){
                        foreach($mlloasanpham as $mllsp){
                            $mlloaicha= $mllsp[0];
                        ?>
                            <li><a href="<?php echo base_url('san-pham/'.$mlloaicha['tenloaiurl'].'-'.$mlloaicha['maloai']) ?>"><?php echo $mlloaicha['tenloai'] ?></a></li>
                        <?php
                         }
                        } 
                        ?>
                 
                    </ul>
              </li>
              
            <li><a href="#">Dashboard</a></li>
            <li><a href="#">Settings</a></li>
            <li><a href="#">Profile</a></li>
            <li><a href="#">Help</a></li>
          </ul>
          <div class="navbar-form navbar-right">
            <input type="text" class="form-control" placeholder="Search..." id="txtTim">
          </div>
        </div>
      </div>
 </nav>