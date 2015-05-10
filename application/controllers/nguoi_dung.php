<?php
class nguoi_dung extends CI_Controller
{
    public function __construct()
    {
        parent::__construct();
        $this->load->model('ModelNguoiDung/m_nguoi_dung','mnd');
        $this->load->model('ModelNguoiDung/m_nguoidung','nd');
    }
    public function index()
    {
        $data['dsnd']=$this->mnd->ds_nguoi_dung();
        $data['title_bar']='quan ly nguoi dung';
        $data['path']=array('Viewnguoidung/danhsach');
        $this->load->view('layoutAdmin',$data);
    }
    public function them()
    {
        if($this->input->post('them') !=''){
            $data= $this->input->post(null);
            $this->nd->setNguoiDung($data);
            $kq=$this->mnd->them_nguoi_dung($this->nd->getNguoiDung());
            if($kq){
                redirect('nguoi_dung');
            }
        }
        $data['loainguoidung']=$this->mnd->loai_nguoi_dung();
        $data['title_bar']='Them nguoi dung';
        $data['path']=array('Viewnguoidung/them');
        $this->load->view('layoutAdmin',$data);
    }
    public function cap_nhat()
    {
        $id= $this->uri->segment(3);
        if(!$id){
            redirect('nguoi-dung');
        }
        $nguoidung= $this->mnd->nguoi_dung_id($id);
        
        if(!$nguoidung){
            redirect('nguoi-dung');
        }
         if($this->input->post('capnhat') !=''){
            $nguoidung= $this->input->post(null);       
            $nguoidung['ma_nguoi_dung']=$id;
            $this->nd->setNguoiDung($nguoidung);
            $kq=$this->mnd->cap_nhat($this->nd->getNguoiDung());
            if($kq){
                redirect('nguoi_dung');
            }
        }
        $data['nguoidung']=$nguoidung;
        $data['loainguoidung']=$this->mnd->loai_nguoi_dung();
        $data['title_bar']='Cập Nhật Người Dùng';
        $data['path']=array('Viewnguoidung/capnhat');
        $this->load->view('layoutAdmin',$data);
        
    }
    public function xoa()
    {
         $id= $this->uri->segment(4);
        if(!$id){
            redirect('nguoi-dung');
        }
        $nguoidung= $this->mnd->nguoi_dung_id($id);
        if(!$nguoidung){
            redirect('nguoi-dung');
        }
        $data['nguoidung']=$nguoidung;
        $data['loainguoidung']=$this->mnd->loai_nguoi_dung();
        $data['title_bar']='Xóa Người Dùng';
        $data['path']=array('Viewnguoidung/xoa');
        $this->load->view('layoutAdmin',$data);
        
    }
     public function thuc_hien_xoa()
    {
         $id= $this->uri->segment(4);
    
        if(!$id){
            redirect('nguoi-dung');
        }
        $kq= $this->mnd->xoa($id);
        if($kq==1){
            $data['mms']= 'Xoa Thanh Cong';
        }else{
             $data['mms']= 'Xoa khong Thanh Cong';
        }
        $data['path']=array('Viewnguoidung/thongbaoxoa');
        $this->load->view('layoutAdmin',$data);
        
        
    }
}
?>