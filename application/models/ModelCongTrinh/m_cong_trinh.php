<?php
    class M_cong_trinh extends CI_Model
    {
        public function __construct()
        {
            parent::__construct();
        }
        public function ds_cong_trinh($limit,$start)
        {
            $query=$this->db->get('cong_trinh',$limit,$start);
            if($query->num_rows()==0){
                return false;
            }
            return $query->result_array();
        }
        public function ds_cong_trinh_moi($limit,$start)
        {
            
        }
         public function cong_trinh_id($id)
        {
            $this->db->where(array('ma_cong_trinh'=>$id));
            $query=$this->db->get('cong_trinh');
            if($query->num_rows()==0){
                return false;
            }
            return $query->result_array();
        }
        public function them_cong_trinh($data)
        {
            return $this->db->insert('cong_trinh',$data);
        }
        public function cap_nhat_cong_trinh()
        {
            $this->db->where(array('ma_cong_trinh'=>$data['ma_cong_trinh']));
            return $this->db->update('cong_trinh',$data);
        }
        public function xoa_cong_trinh($id)
        {
            $this->db->where(array('ma_cong_trinh'=>$id));
            return $this->db->delete('cong_trinh');
        }
    }
?>