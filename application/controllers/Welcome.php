<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Welcome extends MY_Controller {


	public function index()
	{
	   //$this->data['name'] = 'abc';
	   $this->data['path']=array('welcome_message');
		$this->load->view('layout',$this->data);
	}
}
