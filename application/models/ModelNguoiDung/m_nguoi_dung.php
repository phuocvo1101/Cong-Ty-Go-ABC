<?php
    class M_nguoi_dung extends CI_Model
    {
        public function ds_nguoi_dung()
        {
            $query= $this->db->query('select * from nguoi_dung');
            if($query->num_rows()>0){
                return $query->result_array();
            }
            return false;
        }
        public function nguoi_dung_dang_nhap($tendn,$matkhau)
        {
            $this->db->where(array('tendn'=>$tendn,'mat_khau'=>$matkhau));
            $query=$this->db->get('nguoi_dung');
            if($query->num_rows()>0){
                return $query->row_array();
            }
            return false;
        }
        public function nguoi_dung_id($id)
        {
            $query= $this->db->query('select * from nguoi_dung Where ma_nguoi_dung =?',array($id));
            if($query->num_rows()>0){
                return $query->row_array();
            }
            return false;
        }
        public function them_nguoi_dung($data)
        {
            $query = $this->db->query('insert into nguoi_dung(tendn, mat_khau, ten_nguoi_dung, ngay_sinh, gioi_tinh, dia_chi, email,
                      cmnd, dien_thoai, ma_loai_nguoi_dung) value(?,?,?,?,?,?,?,?,?,?)',array( $data['tendn'],$data['mat_khau'],$data['ten_nguoi_dung'], $data['ngay_sinh'], $data['gioi_tinh'], $data['dia_chi'],
                      $data['email'], $data['cmnd'], $data['dien_thoai'], $data['ma_loai_nguoi_dung']));
            if($query){
                return $query;
            }
            return false;
  
        }
        public function cap_nhat($data)
        {
            $query =$this->db->query('update nguoi_dung set tendn= ?, mat_khau= ?, ten_nguoi_dung= ?, ngay_sinh= ?, gioi_tinh= ?, dia_chi= ?, email= ?,
                      cmnd= ?, dien_thoai= ?, ma_loai_nguoi_dung = ? where ma_nguoi_dung = ?',array( $data['tendn'],$data['mat_khau'],$data['ten_nguoi_dung'], $data['ngay_sinh'], $data['gioi_tinh'], $data['dia_chi'],
                      $data['email'], $data['cmnd'], $data['dien_thoai'], $data['ma_loai_nguoi_dung'],$data['ma_nguoi_dung']));
             if($query){
                return $query;
             }
             return false;
        }
         public function xoa($id)
        {
            $query= $this->db->query('delete from nguoi_dung where ma_nguoi_dung =?',array($id));
            return $query;
        }
            
        public function loai_nguoi_dung()
        {
            $query= $this->db->query('select * from loai_nguoi_dung');
            if($query->num_rows()>0){
                return $query->result_array();
            }
            return false;
        }
    }
 ?>
 