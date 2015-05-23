<?php
defined('BASEPATH') OR exit('No direct script access allowed');

/*
| -------------------------------------------------------------------------
| URI ROUTING
| -------------------------------------------------------------------------
| This file lets you re-map URI requests to specific controller functions.
|
| Typically there is a one-to-one relationship between a URL string
| and its corresponding controller class/method. The segments in a
| URL normally follow this pattern:
|
|	example.com/class/method/id/
|
| In some instances, however, you may want to remap this relationship
| so that a different class/function is called than the one
| corresponding to the URL.
|
| Please see the user guide for complete details:
|
|	http://codeigniter.com/user_guide/general/routing.html
|
| -------------------------------------------------------------------------
| RESERVED ROUTES
| -------------------------------------------------------------------------
|
| There are three reserved routes:
|
|	$route['default_controller'] = 'welcome';
|
| This route indicates which controller class should be loaded if the
| URI contains no data. In the above example, the "welcome" class
| would be loaded.
|
|	$route['404_override'] = 'errors/page_missing';
|
| This route will tell the Router which controller/method to use if those
| provided in the URL cannot be matched to a valid route.
|
|	$route['translate_uri_dashes'] = FALSE;
|
| This is not exactly a route, but allows you to automatically route
| controller and method names that contain dashes. '-' isn't a valid
| class or method name character, so it requires translation.
| When you set this option to TRUE, it will replace ALL dashes in the
| controller and method URI segments.
|
| Examples:	my-controller/index	-> my_controller/index
|		my-controller/my-method	-> my_controller/my_method
*/
$route['default_controller'] = 'Welcome';
$route['san-pham'] = 'san_pham';
$route['san-pham/danh-sach'] = 'san_pham/danh_sach';
$route['san-pham/(:num)'] = 'san_pham/danh_sach';
$route['san-pham/chi-tiet-san-pham/[0-9a-zA-Z_-]+'] = 'san_pham/chi_tiet_san_pham';
$route['san-pham/[0-9a-zA-Z_-]+'] = 'san_pham/loaisanphamcha';
$route['chi-tiet-san-pham/[0-9a-zA-Z_-]+'] = 'san_pham/chitietsanpham';
$route['san-pham/[0-9a-zA-Z_-]+/[0-9a-zA-Z_-]+'] = 'san_pham/loaisanpham';
$route['san-pham'] = 'san_pham/danh_sach';

$route['tin-tuc'] = 'tin_tuc';

$route['cong-trinh']= 'cong_trinh/danhsachcongtrinh';
$route['cong-trinh/[0-9a-zA-Z_-]+']= 'cong_trinh/danhsachcongtrinh';

$route['quan-tri'] = 'quan_tri';
$route['quan-tri/dang-nhap'] = 'quan_tri/dang_nhap';
$route['quan-tri/dang-xuat'] = 'quan_tri/dang_xuat';
$route['quan-tri/san-pham'] = 'san_pham/danh_sach_admin';
$route['quan-tri/san-pham/(:num)'] = 'san_pham/danh_sach_admin';

$route['quan-tri/san-pham/them'] = 'san_pham/them_san_pham';
$route['quan-tri/nguoi-dung'] = 'nguoi_dung';
$route['quan-tri/nguoi-dung/them'] = 'nguoi_dung/them';
$route['quan-tri/nguoi-dung/xoa'] = 'nguoi_dung/xoa';
$route['nguoi-dung/thuc-hien-xoa'] = 'nguoi_dung/thuc_hien_xoa';
$route['quan-tri/nguoi-dung/cap-nhat/(:num)'] = 'nguoi_dung/cap_nhat';
$route['quan-tri/nguoi-dung/xoa/(:num)'] = 'nguoi_dung/xoa';
$route['quan-tri/nguoi-dung/thuc-hien-xoa/(:num)'] = 'nguoi_dung/thuc_hien_xoa';
$route['gio-hang/thong-tin-gio-hang'] = 'gio_hang/thongtingiohang';
$route['gio-hang/xoa-gio-hang'] = 'gio_hang/xoa_gio_hang';
$route['khach-hang/dat-hang'] = 'khach_hang/dat_hang';

$route['404_override'] = '';
$route['translate_uri_dashes'] = FALSE;
