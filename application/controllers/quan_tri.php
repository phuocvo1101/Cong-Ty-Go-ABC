<?php
class Quan_tri extends CI_Controller
{
    public function __construct()
    {
        parent::__construct();
        $this->load->model('ModelNguoiDung/m_nguoi_dung');
    }
    public function index()
    {
        if($this->session->userdata('nguoi_dung')==''){
            redirect('quan-tri/dang-nhap');
        }
        $data['path']=array('Viewnguoidung/hethongquantri');
        $this->load->view('layoutAdmin',$data);
    }
    public function dang_xuat()
    {
        $data_dn = array('tendn','nguoi_dung','role');
        $this->session->unset_userdata($data_dn);
        return redirect('quan-tri/dang-nhap');
                    
    }
    public function dang_nhap()
    {
        if($this->input->post('submit')){
            $this->load->library('form_validation');
           $config = array(
                array('field' => 'tendn','label' => 'Tên Đăng Nhập','rules' => 'required'),
                array('field' => 'mat_khau','label' => 'Mật khẩu','rules' => 'required'),
                array('field' => 'mxt','label' => 'Mã xác thực','rules' => 'required'),
       
            );
            $this->form_validation->set_message('required','<span style="color:red">%s phải nhập dữ liệu</span>');
            $this->form_validation->set_rules($config);
            if($this->form_validation->run()){
                //kiem tra ma xac thuc
                $data= $this->input->post(null);
                if($this->session->userdata('word') != ''){
                    $time= time() - 7200;
                    if($time < $this->session->userdata('captcha_time')){
                        $ip_address=$this->input->ip_address();
                        if($ip_address==$this->session->userdata('ip_address') 
                        && strtolower($data['mxt'])==$this->session->userdata('word')){
                            
                            $nguoi_dung = $this->m_nguoi_dung->nguoi_dung_dang_nhap($data['tendn'], $data['mat_khau']);
                            if($nguoi_dung){
                                $data_captcha = array('captcha_time','ip_address','word');
                                //giai phong thong tin  dang nhap
                                $this->session->unset_userdata($data_captcha);
                                $data_dn = array(
                                    'tendn'=>$nguoi_dung['tendn'],
                                    'nguoi_dung'=>$nguoi_dung['ten_nguoi_dung'],
                                    'role'=>$nguoi_dung['ma_loai_nguoi_dung']
                                );
                                $this->session->set_userdata($data_dn);
                                return redirect('quan-tri');
                            }else{
                                $data['err']='Đăng nhập không thành công';
                            }
                            
                        }else{
                            $data['err']='Mã xác thực không hợp lệ';
                        }
                    }else{
                        $data['err']='Mã xác thực không hợp lệ';
                    }
                }
            }
        }
        $this->load->helper('captcha');
        $vals = array(
            'img_path'      => './public/captcha/',
            'img_url'       => site_url().'/public/captcha/',
            'font_path'     => './public/fonts/arial.ttf',
            'img_width'     => '150',
            'img_height'    => 30,
            'expiration'    => 7200,
            'word_length'   => 8,
            'font_size'     => 16,
            'img_id'        => 'Imageid',
            'pool'          => '0123456789',
    
            // White background and border, black text and red grid
            'colors'        => array(
                    'background' => array(255, 255, 255),
                    'border' => array(255, 255, 255),
                    'text' => array(0, 0, 0),
                    'grid' => array(255, 40, 40)
            )
        );
        $cap = create_captcha($vals);
        
        $data_captcha = array(
                'captcha_time'  => $cap['time'],
                'ip_address'    => $this->input->ip_address(),
                'word'          =>strtolower($cap['word']) 
        );
        $this->session->set_userdata($data_captcha);
        $data['image']= $cap['image'];
        $data['path']=array('Viewnguoidung/dangnhap');
        $this->load->view('layoutAdmin',$data);
    }
}
 ?>