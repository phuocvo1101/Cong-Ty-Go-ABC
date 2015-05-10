<?php
class Quan_tri extends CI_Controller
{
    public function index()
    {
        $data['path']=array('Viewnguoidung/hethongquantri');
        $this->load->view('layoutAdmin',$data);
    }
}
 ?>