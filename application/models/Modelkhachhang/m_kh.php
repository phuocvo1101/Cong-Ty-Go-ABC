<?php
    class M_kh extends CI_Model
    {
        private $MaKH, $Hoten, $Diachi, $Dienthoai, $Diachigiaohang, $email;
        
        public function setData($data)
        {
            $this->MaKH = isset($data['MaKH'])?$data['MaKH']:0;
            $this->Hoten = isset($data['Hoten'])?$data['Hoten']:'';
            $this->Diachi = isset($data['Diachi'])?$data['Diachi']:'';
            $this->Dienthoai = isset($data['Dienthoai'])?$data['Dienthoai']:'';
            $this->Diachigiaohang = isset($data['Diachigiaohang'])?$data['Diachigiaohang']:0;
            $this->email = isset($data['email'])?$data['email']:'';
        }
        
        public function getData()
        {
            $data = array(
                'MaKH' => $this->MaKH,
                'Hoten' => $this->Hoten,
                'Diachi' => $this->Diachi,
                'Dienthoai' => $this->Dienthoai,
                'Diachigiaohang' => $this->Diachigiaohang,
                'email' => $this->email
            );
            return $data;
           
        }
    }
 ?> 
 <!--`MaKH`, `Hoten`, `Diachi`, `Dienthoai`, `Diachigiaohang`, `email`-->