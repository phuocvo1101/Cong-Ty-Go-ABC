<?php
class Cong_trinh extends MY_Controller
{
    public function __construct()
    {
        parent::__construct();
        $this->load->model('ModelCongTrinh/m_cong_trinh', 'mct');
    }
    public function index()
    {
        
    }
    public function danhsachcongtrinh()
    {
        $this->load->library('pagination');
         $config['base_url'] = site_url().'/cong-trinh';
        $config['total_rows'] = $this->mct->tongsocongtrinh();
        $config['per_page'] = 2;
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
      
        $ds_congtrinh= $this->mct->ds_cong_trinh($config['per_page'],$start);
        $menu_dsct= $this->mct->dsct();
        $this->data['menudsct']=$menu_dsct;
        $this->data['dsct']=$ds_congtrinh;
        $title_ds ='<li class="active">Danh sách công trình</li>';
        $this->data['title_ds']= $title_ds;
         $this->data['title_bar']='Quản lý người dùng';
          
        $this->data['path']= array('ViewCongTrinh/doc_dscongtrinh');
        $this->load->view('ViewCongTrinh/layoutcongtrinh', $this->data);
    }
}
 ?>