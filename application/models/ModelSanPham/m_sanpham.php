<?php
    class M_sanpham extends CI_Model
    {
        private $masanpham, $tensanpham, $tensanphamurl, $diengiai, $dongia,
                $hinh, $ngaycapnhat, $maloai, $sanphammoi;
        
        public function setData($data)
        {
            $this->masanpham = isset($data['masanpham'])?$data['masanpham']:0;
            $this->tensanpham = isset($data['tensanpham'])?$data['tensanpham']:'';
            $this->tensanphamurl = isset($data['tensanphamurl'])?$data['tensanphamurl']:'';
            $this->diengiai = isset($data['diengiai'])?$data['diengiai']:'';
            $this->dongia = isset($data['dongia'])?$data['dongia']:0;
            $this->hinh = isset($data['hinh'])?$data['hinh']:'';
            $this->ngaycapnhat = isset($data['ngaycapnhat'])?$data['ngaycapnhat']:date('Y-m-d');
            $this->maloai = isset($data['maloai'])?$data['maloai']:0;
            $this->sanphammoi = isset($data['sanphammoi'])?$data['sanphammoi']:1;
        }
        
        public function getData()
        {
            $data = array(
                'masanpham' => $this->masanpham,
                'tensanpham' => $this->tensanpham,
                'tensanphamurl' => $this->tensanphamurl,
                'diengiai' => $this->diengiai,
                'dongia' => $this->dongia,
                'hinh' => $this->hinh,
                'ngaycapnhat' => $this->ngaycapnhat,
                'maloai' => $this->maloai,
                'sanphammoi' => $this->sanphammoi
            );
            return $data;
           
        }
    }
 ?> 
 <!--masanpham`, `tensanpham`, `tensanphamurl`, `diengiai`, `dongia`,
  `hinh`, `ngaycapnhat`, `maloai`, `sanphammoi -->