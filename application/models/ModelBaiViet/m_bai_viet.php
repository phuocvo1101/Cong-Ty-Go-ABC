<?php
    class M_bai_viet extends CI_Model
    {
        public function __construct()
        {
            parent::__construct();
        }
        public function ds_tin_tuc_moi()
        {
            $this->db->where(array('tin_tuc_moi'=>1));
            $query = $this->db->get('tin_tuc');
            if($query->num_rows()==0){
                return false;
            }
            return $query->result_array();
            
        }
        public function ds_tin_tuc_moi_phan_trang($limit,$start)
        {
            $this->db->select('*')->from('tuc_tuc')->where(array('tin_tuc_moi'=>1))->limit($limit,$start);
            $query=$this->db->get();
            if($query->num_rows()==0){
                return false;
            }
            return $query->result_array();
        }
        public function tong_so_tin_tuc_moi()
        {
            $this->db->where(array('tin_tuc_moi'=>1));
            $this->db->from('tin_tuc');
            $query=$this->db->count_all_results();
            if(!$query){
                return false;
            }
            return $query;
        }
        public function bai_viet_ma_bai_viet($ma_bai_viet)
        {
            $this->db->where(array('ma_bai_viet'=>$ma_bai_viet));
            $query=$this->db->get('bai_viet');
            if($query->num_rows()==0){
                return false;
            }
            return $query->row_array();
        }
        public function thong_tin_cong_ty()
        {
            
        }
        public function tong_dong_theo_loai_bai_viet($maloaibaiviet,$mabaiviet)
        {
            $this->db->where(array('ma_loai_bai_viet'=>$maloaibaiviet));
            $this->db->from('bai_viet');
            $query=$this->db->count_all_results();
            if(!$query){
                return false;
            }
            return $query;
        }
        public function ds_theo_loai_bai_viet($maloaibaiviet,$mabaiviet,$limit,$start)
        {
            $this->db->where(array('ma_loai_bai_viet'=>$maloaibaiviet));
            $this->db->from('bai_viet');
            $this->db->limit($limit,$start);
            $query=$this->db->count_all_results();
            if(!$query){
                return false;
            }
            return $query;
        }
        public function them_bai_viet($data)
        {
            return $this->db->insert('bai_viet',$data);
        }
        public function cap_nhat_bai_viet($data)
        {
            $this->db->where(array('ma_bai_viet'=>$data['ma_bai_viet']));
            return $this->db->update('bai_viet',$data);
        }
    }
 ?>