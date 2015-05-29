<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Welcome extends MY_Controller {


	public function index()
	{
	   //$this->data['name'] = 'abc';
        
         $dssp_moi= $this->m_san_pham->sp_moi();
         $this->data['title_ds']= 'Danh Sách Sản Phẩm Mới';
         $this->data['danhsachsanpham']= $dssp_moi;
        $this->data['path']=array('welcome_message','Viewsanpham/docdanhsachsanpham');
		$this->load->view('layout',$this->data);
	}
}
