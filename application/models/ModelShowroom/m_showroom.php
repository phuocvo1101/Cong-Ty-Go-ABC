<?php
    class M_showroom extends CI_Model
    {
        public function __construct()
        {
            parent::__construct();
        }
        public function showroom_menu()
        {
            $query=$this->db->get('showroom');
            if($query->num_rows()==0){
                return false;
            }
            return $query->result_array();
        }
        public function ds_showroom()
        {
            
        }
        
    }
?>