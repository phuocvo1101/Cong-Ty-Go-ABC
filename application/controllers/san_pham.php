<?php
class san_pham extends MY_Controller
{
    public function __construct()
    {
        parent::__construct();
        $this->load->model('ModelSanPham/m_san_pham','msp');
        
    }
    public function index()
    {
        $loai_sp= $this->mlsp->ds_loai_cha();
        $this->data['loaisp']=$loai_sp;
        $this->data['path']=array('Viewsanpham/menusanpham');
       $this->load->view('layout',$this->data);
    }
    public function tim_kiem()
    {
        $gttim= $this->input->post('tim');
        $dssp= $this->msp->dssp_tim_kiem($gttim);
        $chuoi='';
        if(!$dssp){
            $chuoi= 0;
        }else{
            foreach($dssp as $sp)
            {

              $chuoi.='<div class="col-xs-6 col-md-3">
                <div class="thumbnail">';
              $chuoi.='<img src="'.base_url('public/hinhsanphamlon/'.$sp['hinh']).'" alt="'.$sp['tensanpham'].'">
                  <div class="caption">';
              $chuoi.='<p align="center" style="height: 30px;">'.$sp['tensanpham'].'</p>';
              $chuoi.='<h4 align="center">Giá : '. number_format($sp['dongia']).'vnđ</h4>';
              $chuoi.='<p><a href="'.site_url('chi-tiet-san-pham/'.$sp['tensanphamurl'].'-'.$sp['masanpham']).'" class="btn btn-primary" role="button">Chi tiết</a></p>';
              $chuoi.='</div>
                </div>
              </div>';
            }
        }
        echo json_encode(array('gt'=>$chuoi));
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
         $this->data['title_bar']='Quản lý người dùng';
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
         $this->data['title_bar']='Quan Ly San Pham';
           $this->data['mlloasanpham']=$this->mlsp->ds_loai_cha();
         $danhsachsp= $this->msp->sp_theo_loai($id);
        $this->data['danhsachsanpham']= $danhsachsp;
        
        $this->data['path']=array('Viewsanpham/docdanhsachsanpham');
        $this->load->view('Viewsanpham/layoutsanpham',$this->data);
    }
    
   /* public function chi_tiet_san_pham()
    {
      $id= $this->uri->segment(3);
      $data['masp']=$id;
      $this->load->view('Viewsanpham/chitiet',$data);
    }*/
    public function chitietsanpham()
    {
        $chuoi= $this->uri->segment(2);
        $mang= explode('-',$chuoi);
        $id= $mang[count($mang)-1];
        $sanpham= $this->msp->sp_id($id);
        if(!$sanpham){
            redirect('san-pham');
        }
        $dsspcungloai= $this->msp->sp_cung_loai($id,$sanpham['maloai']);
          $this->data['danhsachsanpham']= $dsspcungloai;
         $this->data['sanpham']=$sanpham;
          $this->data['title_ds']= 'san pham cung loai';
          $this->data['mlloasanpham']=$this->mlsp->ds_loai_cha();
        $this->data['path']= array('Viewsanpham/chitiet','Viewsanpham/docdanhsachsanpham');
        $this->load->view('Viewsanpham/layoutsanpham',$this->data);
        
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
        $title_ds ='Danh sách sản phẩm';
        $data['title_ds']= $title_ds;
         $data['title_bar']='Quan ly san pham';
         
        
        $data['path']=array('Viewsanpham/doc_dssp_admin');
        $this->load->view('layoutAdmin',$data);

    }
    public function them_san_pham()
    {
        if($this->input->post('submit') != ''){
            $this->load->library('form_validation');
           $config = array(
                array('field' => 'tensanpham','label' => 'Tên Sản Phẩm','rules' => 'required'),
                array('field' => 'tensanphamurl','label' => 'Tên URL','rules' => 'required'),
                array('field' => 'dongia','label' => 'Đơn Giá','rules' => 'required|numeric'),
       
            );
            $this->form_validation->set_message('required','<span style="color:red">%s phải nhập dữ liệu</span>');
            $this->form_validation->set_message('numeric','<span style="color:red">%s phải là số</span>');
            $this->form_validation->set_rules($config);
            if($this->form_validation->run()){
                //thuc hien upload file
                $config['upload_path']          = './public/hinhsanphamlon/';
                $config['allowed_types']        = 'gif|jpg|png';
                $config['max_size']             = 2000000;
                $config['max_width']            = 1024;
                $config['max_height']           = 768;
                $config['encrypt_name']         = TRUE;

                $this->load->library('upload', $config);

                if ( ! $this->upload->do_upload('hinh'))
                {
                       $data['err']=$this->upload->display_errors();
                }
                else
                {
                   //lay file name (do ma hoa encrypt_name))
                        $data =$this->upload->data();
                        $file_name = $data['file_name'];
                        //watermaking
                        
                        $config1['image_library'] = 'gd2';
                        $config1['source_image'] = './public/hinhsanphamlon/'.$file_name;
                        $config1['wm_text'] = 'Copyright 2006 - John Doe';
                        $config1['wm_type'] = 'text';
                        $config1['wm_font_path'] = './public/fonts/arial.ttf';
                        $config1['wm_font_size'] = '16';
                        $config1['wm_font_color'] = 'ffffff';
                        $config1['wm_vrt_alignment'] = 'bottom';
                        $config1['wm_hor_alignment'] = 'center';
                        
                        $this->load->library('image_lib', $config1);
                        $this->image_lib->watermark();
                        $this->image_lib->clear();
                        //thuc hien luu
                        $data = $this->input->post(null);
                        $data['hinh']= $file_name;
                        $this->load->model('ModelSanPham/m_sanpham');
                        $this->m_sanpham->setData($data);
                        $kq= $this->msp->them_sp($this->m_sanpham->getData());
                        if($kq){
                            redirect('quan-tri/san-pham');
                        }
                }
            }
        }
        $loaisanpham= $this->mlsp->lay_lsp_select();
        $data['lspselect']= $loaisanpham;
         $data['path']=array('Viewsanpham/themsanpham');
        $this->load->view('layoutAdmin',$data);
    }
}

?>