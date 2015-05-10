<?php
class san_pham extends MY_Controller
{
    public function __construct()
    {
        parent::__construct();
        $this->load->model('ModelSanPham/m_san_pham','msp');
        $this->load->model('ModelLoaiSanPham/m_loai_sp','mlsp');
    }
    public function index()
    {
        //$ds= $this->msp->sp_phantrang(2,1);
        //var_dump($ds);die();
        $loai_sp= $this->mlsp->ds_loai_cha();
        $this->data['loaisp']=$loai_sp;
        $this->data['path']=array('Viewsanpham/menusanpham');
       $this->load->view('layout',$this->data);
    }
    public function danh_sach()
    {
        
       
           //phantrang
        $this->load->library('pagination');

        $config['base_url'] = site_url().'/san-pham';
        $config['total_rows'] = $this->msp->tong_so_san_pham();
        $config['per_page'] = 9;
        $config['uri_segment']=2;
        $config['use_page_numbers'] = TRUE;
        $config['suffix']='.html';
        
        //thuoc tinh cac the
        //$config['full_tag_open'] = '<p>'
        //$config['full_tag_close'] = '</p>';
        $config['first_link'] = '|<';
        $config['first_tag_open'] = '<li>';
        $config['first_tag_close'] = '</li>';
        $config['first_url'] = '';
        $config['last_link'] = '>|';
        $config['last_tag_open'] = '<li>';
        $config['last_tag_close'] = '</li>';
        $config['next_link'] = '&gt;';
        $config['next_tag_open'] = '<li>';
        $config['next_tag_close'] = '</li>';
        $config['prev_link'] = '&lt;';
        $config['prev_tag_open'] = '<li>';
        $config['prev_tag_close'] = '</li>';
        $config['cur_tag_open'] = '<li class="active"><a href="#">';
        $config['cur_tag_close'] = '<span class="sr-only">(current)</span></a></li>';
        $config['num_tag_open'] = '<li>';
        $config['num_tag_close'] = '</li>';

        
        $this->pagination->initialize($config);
        $page =$this->uri->segment(2)?$this->uri->segment(2):1 ;
        $start= ($page-1)* $config['per_page'];
        
        $this->data['link']=$this->pagination->create_links();
      
        
         $danhsachsp= $this->msp->sp_phantrang( $config['per_page'],$start);
         $this->data['danhsachsanpham']= $danhsachsp;
        $title_ds ='<li class="active">Danh sách sản phẩm</li>';
        $this->data['title_ds']= $title_ds;
         $this->data['title_bar']='Quan ly nguoi dung';
        $this->data['mlloasanpham']=$this->mlsp->ds_loai_cha();
        
      
        
        $this->data['path']=array('Viewsanpham/docdanhsachsanpham');
        $this->load->view('Viewsanpham/layoutsanpham',$this->data);

    }
    public function loaisanphamcha()
    {
        $chuoi= $this->uri->segment(2);
        $arr=explode('-', $chuoi);    
        $id= $arr[count($arr)-1];
        
        $loaicha = $this->mlsp->lay_loai_sp($id);
        $title_ds ='<li><a href="'.site_url('san-pham').'">Sản Phẩm</a></li>';
         $title_ds .='<li class="active">'.$loaicha['tenloai'].'</li>';
        

        $this->data['title_ds']= $title_ds;
         $this->data['title_bar']='Quan ly nguoi dung';
           $this->data['mlloasanpham']=$this->mlsp->ds_loai_cha();
         $danhsachsp= $this->msp->sp_theo_loai_cha($id);
        $this->data['danhsachsanpham']= $danhsachsp;
        
        $this->data['path']=array('Viewsanpham/docdanhsachsanpham');
        $this->load->view('Viewsanpham/layoutsanpham',$this->data);

    }
    public function loaisanpham()
    {
        $chuoi= $this->uri->segment(3);
        $arr=explode('-', $chuoi);    
        $id= $arr[count($arr)-1];
        
        $loaicon= $this->mlsp->lay_loai_sp($id);
        $loaicha = $this->mlsp->lay_loai_sp($loaicon['maloaicha']);
        $title_ds ='<li><a href="'.site_url('san-pham').'">Sản Phẩm</a></li>';
         $title_ds .='<li><a href="'.site_url('san-pham/'.$loaicha['tenloaiurl'].'-'.$loaicha['maloai']).'">'.$loaicha['tenloai'].'</a></li>';
         $title_ds .='<li class="active">'.$loaicon['tenloai'].'</li>';
        

        $this->data['title_ds']= $title_ds;
         $this->data['title_bar']='Quan Ly Nguoi Dung';
           $this->data['mlloasanpham']=$this->mlsp->ds_loai_cha();
         $danhsachsp= $this->msp->sp_theo_loai($id);
        $this->data['danhsachsanpham']= $danhsachsp;
        
        $this->data['path']=array('Viewsanpham/docdanhsachsanpham');
        $this->load->view('Viewsanpham/layoutsanpham',$this->data);
    }
    
    public function chi_tiet_san_pham()
    {
      $id= $this->uri->segment(3);
      $data['masp']=$id;
      $this->load->view('Viewsanpham/chitiet',$data);
    }
    
    public function danh_sach_admin()
    {
           //phantrang
        $this->load->library('pagination');

        $config['base_url'] = site_url().'/quan-tri/san-pham';
        $config['total_rows'] = $this->msp->tong_so_san_pham();
        $config['per_page'] = 9;
        $config['uri_segment']=3;
        $config['use_page_numbers'] = TRUE;
        $config['suffix']='.html';
        
        //thuoc tinh cac the
        //$config['full_tag_open'] = '<p>'
        //$config['full_tag_close'] = '</p>';
        $config['first_link'] = '|<';
        $config['first_tag_open'] = '<li>';
        $config['first_tag_close'] = '</li>';
        $config['first_url'] = '';
        $config['last_link'] = '>|';
        $config['last_tag_open'] = '<li>';
        $config['last_tag_close'] = '</li>';
        $config['next_link'] = '&gt;';
        $config['next_tag_open'] = '<li>';
        $config['next_tag_close'] = '</li>';
        $config['prev_link'] = '&lt;';
        $config['prev_tag_open'] = '<li>';
        $config['prev_tag_close'] = '</li>';
        $config['cur_tag_open'] = '<li class="active"><a href="#">';
        $config['cur_tag_close'] = '<span class="sr-only">(current)</span></a></li>';
        $config['num_tag_open'] = '<li>';
        $config['num_tag_close'] = '</li>';

        
        $this->pagination->initialize($config);
        $page =$this->uri->segment(3)?$this->uri->segment(3):1 ;
        $start= ($page-1)* $config['per_page'];
        
        $data['link']=$this->pagination->create_links();
      
        
         $danhsachsp= $this->msp->sp_phantrang( $config['per_page'],$start);
         $data['danhsachsanpham']= $danhsachsp;
        $title_ds ='<li class="active">Danh sách sản phẩm</li>';
        $data['title_ds']= $title_ds;
         $data['title_bar']='Quan ly nguoi dung';
         
        
        $data['path']=array('Viewsanpham/doc_dssp_admin');
        $this->load->view('layoutAdmin',$data);

    }
    public function them_san_pham()
    {
         $data['path']=array('Viewsanpham/themsanpham');
        $this->load->view('layoutAdmin',$data);
    }
}

?>