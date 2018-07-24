<?php 
Class Order extends CI_Controller{


	public function __construct()
	{
		parent::__construct();

		//check user login or not
		if(!$this->Admin_model->is_admin_loged_in() ){
			redirect('admin/login');
		}
	}

	/*============ Show Order List============*/
	public function order_list()
	{
		$data['title'] = 'Order List';
		$data['page_path'] = 'admin/order/order_page';
		$data['orders'] = $this->Cart_model->get_undeliver_order_data();
		$this->load->view('admin/master', $data);
	}
}