<?php
    class Gio_hang extends MY_Controller
    {
        public function __construct()
        {
            parent::__construct();
            
        }
        public function them()
        {
           $tt= $this->input->post('tt');
           $mang= explode('dssp',$tt);
           $id=$mang[0];
           //lay san pham
           $sanpham=$this->m_san_pham->sp_id($id);
           $dg=$mang[1];
           $sl= $this->input->post('sl');
           $data= array(
                'id'=>$id,
                'name'=>$sanpham['tensanpham'],
                'qty'=>$sl,
                'price'=>$dg
           );
           $this->cart->insert($data);
            echo json_encode(array('tsl'=>$this->cart->total_items(),'tt'=>$this->cart->total()));
        }
        public function thongtingiohang()
        {
            if($this->input->post('capnhat') !=''){
                if($this->cart->contents()){
                    
                    $giohang= $this->cart->contents();
                    $mangcapnhat= array();
                    foreach($giohang as $item){
                        $soluongmoi= $this->input->post("sl_".$item['rowid']);
                        if($soluongmoi != $item['qty'] && $soluongmoi>=0){
                            $mangcapnhat[]=array('rowid'=>$item['rowid'],'qty'=>$soluongmoi );
                        }
                        
                    }
                    if($mangcapnhat){
                        $this->cart->update($mangcapnhat);
                    }
                }
            }
            if($this->cart->contents()){
                $this->data['giohang']=$this->cart->contents();
            }
         $this->data['title_bar']='Thông Tin Gi? Hàng';
        $this->data['mlloasanpham']=$this->mlsp->ds_loai_cha();      
        
        $this->data['path']=array('Viewgiohang/danhsachgiohang');
        $this->load->view('Viewsanpham/layoutsanpham',$this->data);
        }
       
        public function xoa_gio_hang()
        {
            $this->cart->destroy();
            redirect('gio-hang/thong-tin-gio-hang');
        }
    }
 ?>