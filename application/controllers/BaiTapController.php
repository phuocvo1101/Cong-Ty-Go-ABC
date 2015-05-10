<?php
    class BaiTapController extends MY_Controller
    {
        public function __construct()
        {
            parent::__construct();
        }
        public function baitap2_1()
        {
            $this->load->view('ViewBaiTap2/baitap2_1');
        }
        public function baitap2_2()
        {
            $this->load->view('ViewBaiTap2/baitap2_2');
        }
        public function baitap2_3()
        {
            $this->load->view('ViewBaiTap2/baitap2_3');
        }
        public function baitap2_4()
        {
            $this->load->view('ViewBaiTap2/baitap2_4');
        }
        
    }
?>