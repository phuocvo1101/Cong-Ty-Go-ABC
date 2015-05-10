<?php
class M_nguoidung extends CI_Model
{
    private $ma_nguoi_dung,$tendn, $mat_khau,$ten_nguoi_dung,
            $ngay_sinh,$gioi_tinh, $dia_chi, $email,
             $cmnd, $dien_thoai, $ma_loai_nguoi_dung;
    public function setNguoiDung($data)
    {
        $data= array(
            $this->ma_nguoi_dung=isset($data['ma_nguoi_dung'])? $data['ma_nguoi_dung']:0,
            $this->tendn=isset($data['tendn'])? $data['tendn']:'',
            $this->mat_khau=isset($data['mat_khau'])? $data['mat_khau']:'',
            $this->ten_nguoi_dung=isset($data['ten_nguoi_dung'])? $data['ten_nguoi_dung']:'',
            $this->ngay_sinh=isset($data['ngay_sinh'])? $data['ngay_sinh']:'',
            $this->gioi_tinh=isset($data['gioi_tinh']) && $data['gioi_tinh']=='on' ?1:0,
            $this->dia_chi=isset($data['dia_chi'])? $data['dia_chi']:'',
            $this->email=isset($data['email'])? $data['email']:'',
            $this->cmnd=isset($data['cmnd'])? $data['cmnd']:'',
            $this->dien_thoai=isset($data['dien_thoai'])? $data['dien_thoai']:'',
            $this->ma_loai_nguoi_dung=isset($data['ma_loai_nguoi_dung'])? $data['ma_loai_nguoi_dung']:1
        );
    }
    public function getNguoiDung()
    {
        $data = array(
            'ma_nguoi_dung'=>$this->ma_nguoi_dung,
            'tendn'=>$this->tendn,
            'mat_khau'=>$this->mat_khau,
            'ten_nguoi_dung'=>$this->ten_nguoi_dung,
            'ngay_sinh'=>$this->ngay_sinh,
            'gioi_tinh'=>$this->gioi_tinh,
            'dia_chi'=>$this->dia_chi,
            'email'=>$this->email,
            'cmnd'=>$this->cmnd,
            'dien_thoai'=>$this->dien_thoai,
            'ma_loai_nguoi_dung'=>$this->ma_loai_nguoi_dung
        );
        return $data;
    }
}
?>
