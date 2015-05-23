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
    }
 ?>