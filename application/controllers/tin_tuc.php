<?php
    class Tin_tuc extends MY_Controller
    {
        public function __construct()
        {
            parent::__construct();
        }
        public function index()
        {
            $this->data['path']=array('Viewtintuc/doc_dstt');
            $this->load->view('Viewtintuc/layouttintuc',$this->data);
        }
    }
 ?>