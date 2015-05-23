<?php
class MY_Controller extends CI_Controller
{
    protected $data;
    public function __construct()
    {
         parent::__construct();
        $this->data['title_bar']='Cong Ty ABC';
        $this->load->model('ModelSanPham/m_san_pham');
        $this->load->model('ModelLoaiSanPham/m_loai_sp','mlsp');
       
    }
   
}
?>