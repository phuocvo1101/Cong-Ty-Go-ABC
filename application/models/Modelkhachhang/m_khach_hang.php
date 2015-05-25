<?php
    class M_khach_hang extends CI_Model
    {
        public function __construct()
        {
            parent::__construct();
        }
        public function them_khach_hang($data)
        {
            $this->db->insert('khach_hang',$data);
            return $this->db->insert_id();
        }
         public function them_hoa_don($data)
        {
            $this->db->insert('hoa_don',$data);
            return $this->db->insert_id();
        }
         public function them_ct_hoa_don($data)
        {
            return $this->db->insert_batch('ct_hoa_don',$data);
        }
         public function lay_thong_tin_ddh($sohd)
        {
            $chuoiSQL='SELECT `khach_hang`.`MaKH`, `Hoten`, `Diachi`, `Dienthoai`, `Diachigiaohang`, `email`,`hoa_don`.`so_hd`,`ngay_hoadon`,`trigia_hd`,`san_pham`.`masanpham`,`tensanpham`,`hinh`,`so_luong`,`don_gia`,`thanh_tien` FROM `khach_hang`,`hoa_don`,`ct_hoa_don`,`san_pham` WHERE 1 and `khach_hang`.`MaKH`=`hoa_don`.`ma_kh` and `ct_hoa_don`.`so_hd`=`hoa_don`.`so_hd` and `ct_hoa_don`.`masanpham`=`san_pham`.`masanpham` and `hoa_don`.`so_hd`=?';
            $result=$this->db->query($chuoiSQL,array($sohd));
            if($result->num_rows()>0)
                return $result->result_array();
            return false;
        }
    }
 ?>