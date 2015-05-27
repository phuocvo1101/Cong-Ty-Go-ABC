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
                    //them khach hang
                    $makh=$this->m_khach_hang->them_khach_hang($this->m_kh->getData());
                    //them hoa don
                    $data_hoadon= array(
                        'ngay_hoadon'=>gmDate('Y-m-d'),'ma_kh'=>$makh, 'trigia_hd'=>$this->cart->total()
                    );
                     $so_hoadon=$this->m_khach_hang->them_hoa_don($data_hoadon);
                     //them chi tiet hoa don
                     $mang_cthd =array();
                     
                     foreach($this->cart->contents() as $item){
                        $mang_cthd[]= array(
                        'so_hd'=>$so_hoadon,
                        'masanpham'=>$item['id'],
                        'so_luong'=>$item['qty'],
                        'don_gia'=>$item['price'],
                        'thanh_tien'=>$item['subtotal']
                        );
                     }
                     $kq=$this->m_khach_hang->them_ct_hoa_don($mang_cthd);
                     $this->cart->destroy();
                     $tt_ddh=$this->m_khach_hang->lay_thong_tin_ddh($so_hoadon);
                     $this->gui_mail($tt_ddh);
                     redirect('khach-hang/thong-tin-don-dat-hang/'.$so_hoadon);
                   
                }
               
            }
           $this->data['title_bar']='Khách hàng dặt hàng';
            $this->data['mlloasanpham']=$this->mlsp->ds_loai_cha();      
            
            $this->data['path']=array('Viewkhachhang/themkhachhang');
            $this->load->view('Viewsanpham/layoutsanpham',$this->data);
        }
        public function thong_tin_don_dat_hang()
        {
            $sohd= $this->uri->segment(3);
            $tt_ddh=$this->m_khach_hang->lay_thong_tin_ddh($sohd);
            $this->data['title_bar']='Khách hàng dặt hàng';
            $this->data['ttddh']=$tt_ddh;
            $this->data['mlloasanpham']=$this->mlsp->ds_loai_cha();      
            
            $this->data['path']=array('Viewkhachhang/thongtindondathang');
            $this->load->view('Viewsanpham/layoutsanpham',$this->data);
        }
        public function gui_mail($don_hang)
        {
            //cau hinh mail
                $this->load->library('email');
            	$config['protocol'] = 'smtp';
            	$config['smtp_host'] = 'ssl://smtp.gmail.com';
            	$config['smtp_port'] = '465';
            	$config['smtp_timeout'] = '7';
            	$config['smtp_user'] = "phuocvo1101@gmail.com"; //gmail lam mail server
            	$config['smtp_pass'] = "0509tr89"; //password gmail
            	$config['charset'] = 'utf-8';
            	$config['newline'] = "\r\n";
            	$config['mailtype'] = 'html'; // or html
            	$config['validation'] = TRUE; // bool whether to validate email or not
            	
            	$this->email->initialize($config);
            	$this->email->from('phuocvo1101@gmail.com','0509tr89'); //mail nguoi gui
            	$this->email->to($don_hang[0]['email']);
            	$this->email->subject('Đơn đặt hàng của khách hàng');
            	$this->email->message($this->tao_noi_dung($don_hang));
            	$this->email->send();  
        }
        public function tao_noi_dung($don_hang)
        {
            $noi_dung='<p>Mã khách hàng'.$don_hang[0]['MaKH'].'</p>';
    		$noi_dung.='<p>Tên khách hàng: '.$don_hang[0]['Hoten'] .'</p>';
    		$noi_dung.='<p>Địa chỉ giao hàng: '.$don_hang[0]['Diachigiaohang'].'</p>';
    		$noi_dung.='<p>Email: '. $don_hang[0]['email'] .'</p>';
    		$noi_dung.='<p>Điện thoại: '. $don_hang[0]['Dienthoai'] .'</p>';
      
    		$noi_dung.='<table>
    			<thead>
    			  <tr>
    				<th>STT</th>
    				<th>Mã sản phẩm</th>
    				<th>Tên sản phẩm</th>
    				<th>Đơn giá</th>
    				<th>Số lượng</th>
    				<th>Thành tiền</th>
    			  </tr>
    			</thead>
    			<tbody>';
    			$i=1;
    			foreach($don_hang as $item)
                {
    				$noi_dung.='<tr>';
    				$noi_dung.='<th>'.$i.'</th>';
    				$noi_dung.='<td>'.$item['masanpham'].'</td>';
    				$noi_dung.='<td>'.$item['tensanpham'].'</td>';
    				$noi_dung.='<td>'.$item['don_gia'].'</td>';
    				$noi_dung.='<td>'.$item['so_luong'].'</td>';
    				$noi_dung.='<td>'.$item['thanh_tien'].'</td>';
                    $noi_dung.='</tr>';
    
    			     $i++;
    			}
            $noi_dung.='</tbody>';
            $noi_dung.='</table>';
            return $noi_dung;
            
        }

    }
 ?>
 