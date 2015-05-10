<?php
class M_loai_sp extends CI_Model
{
    // Tao menu doc
    public function ds_loai_cha($maloaicha=0)
    {
        $ds_loaicha= $this->db->get_where('loai_san_pham',array('maloaicha'=>$maloaicha));
        $mang= array();
        if($ds_loaicha->num_rows()>0){
            foreach($ds_loaicha->result_array() as $lc){
                $mang[]= array($lc,$this->ds_loai_con($lc['maloai']));
            }
        }
        return $mang;
    }
    public function ds_loai_con($maloai)
    {
        $ds_loaicon = $this->db->get_where('loai_san_pham',array('maloaicha'=>$maloai));
        if($ds_loaicon->num_rows()>0){
            return $ds_loaicon->result_array();
        }
        return false;
    }
    public function lay_loai_sp($maloai)
    {
        $this->db->where(array('maloai'=>$maloai));
        $result= $this->db->get('loai_san_pham');
        if($result->num_rows()==0){
            return false;
        }
        return $result->row_array();
    }
}
?>
