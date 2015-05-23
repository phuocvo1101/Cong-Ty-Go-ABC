<?php
    class khach_hang extends MY_Controller
    {
        public function __construct()
        {
            parent::__construct();
            $this->load->model('Modelkhachhang/m_khach_hang');
            $this->load->model('Modelkhachhang/m_kh');
        }
        public function dat_hang()
        {
            if($this->input->post('submit') !=''){
                $this->load->library('form_validation');
                $config = array(
                    array('field' => 'Hoten','label' => 'Tên khách hàng','rules' => 'required'),
                    array('field' => 'Diachi','label' => 'Địa chỉ','rules' => 'required'),
                    array('field' => 'Dienthoai','label' => 'Điện thoại','rules' => 'required|numeric'),
                    array('field' => 'Diachigiaohang','label' => 'Địa chỉ giao hàng','rules' => 'required'),
                    array('field' => 'email','label' => 'Email','rules' => 'required|valid_email'),
           
                );
                $this->form_validation->set_message('required','<span style="color:red">%s phải nhập dữ liệu</span>');
                $this->form_validation->set_message('numeric','<span style="color:red">%s phải là số</span>');
                $this->form_validation->set_message('valid_email','<span style="color:red">%s phải đúng định dạng</span>');
                $this->form_validation->set_rules($config);
                if($this->form_validation->run()){
                    $data = $this->input->post(null);
                    $this->m_kh->setData($data);
                    $makh=$this->m_khach_hang->them_khach_hang($this->m_kh->getData());
                    
                     var_dump($makh);die();
                }
                
               
            }
           $this->data['title_bar']='Khách hàng dặt hàng';
            $this->data['mlloasanpham']=$this->mlsp->ds_loai_cha();      
            
            $this->data['path']=array('Viewkhachhang/themkhachhang');
            $this->load->view('Viewsanpham/layoutsanpham',$this->data);
        }
    }
 ?>
  <!--`MaKH`, `Hoten`, `Diachi`, `Dienthoai`, `Diachigiaohang`, `email`-->