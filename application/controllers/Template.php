<?php
Class Template extends CI_Controller{


	public function __construct()
	{
		parent::__construct();

		//check user login or not
		if(!$this->Admin_model->is_admin_loged_in() ){
			redirect('admin/login');
		}
	}

	/*========== Well Come Note Page=============*/
	public function wellcome_note_page()
	{
		$data['title']='WellCome Note';
		$data['page_path']='admin/template/wellcome_note_page';
		$data['note'] = $this->Template_model->get_wellcome_note();
		$this->load->view('admin/master', $data);
	}


	/*============ wellcome Note info update =============*/
	public function wellcome_note_update()
	{
		$this->form_validation-> set_rules('wellcome_note', 'Well Come Note', 'trim|required');
			
		if($this->form_validation->run() == FALSE){
			$data['title']='WellCome Note';
			$data['page_path']='admin/template/wellcome_note_page';
			$data['note'] = $this->Template_model->get_wellcome_note();
			$this->load->view('admin/master', $data);
		}else{

			if($this->Template_model->insert_or_update_wellcome_note_info()){
				$data['success'] = ' Updated Successfully!';
				$this->session->set_flashdata($data);
				redirect('wellcome_note');
			}else{
				$data['error'] = 'Updated Not Successfully!';
				$this->session->set_flashdata($data);
				redirect('wellcome_note');
			}
		}
	}


	/*========== Well Come Note Page=============*/
	public function rgards_page()
	{
		$data['title']='Regards page';
		$data['page_path']='admin/template/regards_page';
		$data['regard'] = $this->Template_model->get_regards();
		$this->load->view('admin/master', $data);
	}


	/*============ wellcome Note info update =============*/
	public function regards_update()
	{
		$this->form_validation-> set_rules('regard', 'Regards', 'trim|required');
			
		if($this->form_validation->run() == FALSE){
			$data['title']='Regards page';
			$data['page_path']='admin/template/regards_page';
			$data['regard'] = $this->Template_model->get_regards();
			$this->load->view('admin/master', $data);
		}else{

			if($this->Template_model->insert_or_update_regard_info()){
				$data['success'] = ' Updated Successfully!';
				$this->session->set_flashdata($data);
				redirect('rgards_page');
			}else{
				$data['error'] = 'Updated Not Successfully!';
				$this->session->set_flashdata($data);
				redirect('rgards_page');
			}
		}
	}
	
	/*========== Well Come Note Page=============*/
	public function md_message_page()
	{
		$data['title']='Md. Message';
		$data['page_path']='admin/template/md_message_page';
		$data['md_name'] = $this->Template_model->get_md_name_data();
		$data['md_desig'] = $this->Template_model->get_md_desig_data();
		$data['md_image'] = $this->Template_model->get_md_image_data();
		$data['md_message'] = $this->Template_model->get_md_message_data();
		$this->load->view('admin/master', $data);
	}


	/*======== md message Update ============*/
	public function md_message_update()
	{
		$this->form_validation-> set_rules('md_name', 'Name', 'trim|required');
			
		if($this->form_validation->run() == FALSE){
			$data['title']='Md. Message';
			$data['page_path']='admin/template/md_message_page';
			$data['md_name'] = $this->Template_model->get_md_name_data();
			$data['md_desig'] = $this->Template_model->get_md_desig_data();
			$data['md_image'] = $this->Template_model->get_md_image_data();
			$data['md_message'] = $this->Template_model->get_md_message_data();
			$this->load->view('admin/master', $data);
		}else{
			$imageName = $_FILES['md_image']['name'];
			$file_path = null;
			if(isset($imageName)){
				$tmp_name = $_FILES['md_image']['tmp_name'];	

				$file_path = $this->image_upload($imageName, $tmp_name);
				$this->image_resize($file_path);
			}

			

			if($this->Template_model->insert_or_update_md_info($file_path)){
				$data['success'] = ' Updated Successfully!';
				$this->session->set_flashdata($data);
				redirect('md_message');
			}else{
				$data['error'] = 'Updated Not Successfully!';
				$this->session->set_flashdata($data);
				redirect('md_message');
			}
		}
	}

	
	// -----view About Page

	public function about_info()
	{
		$data['title']='About Info';
		$data['page_path']='admin/template/about_page';
		$data['about_us'] = $this->Template_model->get_about_us_info();
		$data['address'] = $this->Template_model->get_address_info();
		$data['phone'] = $this->Template_model->get_phone_info();
		$data['email'] = $this->Template_model->get_email_info();
		$this->load->view('admin/master', $data);
	}


	//========== updated About Us info

	public function about_us()
	{
		$this->form_validation-> set_rules('about_us', 'About Us', 'trim|required');
			
		if($this->form_validation->run() == FALSE){
			echo 0;
		}else{

			if($this->Template_model->insert_or_update_about_us_info()){
				echo 1;
			}else{
				echo 0;
			}
		}
	}

	//========== updated About Us info

	public function address()
	{
		$this->form_validation->set_rules('address', 'Address', 'trim|required');
			
		if($this->form_validation->run() == FALSE){
			echo 0;
		}else{

			if($this->Template_model->insert_or_update_address_info()){
				echo 1;
			}else{
				echo 0;
			}
		}
	}


	//========== updated or insert phone_number info

	public function phone_number()
	{
		$this->form_validation->set_rules('phone', 'Phone', 'trim|required');
			
		if($this->form_validation->run() == FALSE){
			echo 0;
		}else{

			if($this->Template_model->insert_or_update_phone_info()){
				echo 1;
			}else{
				echo 0;
			}
		}
	}

	//========== updated or insert Email Address info

	public function email_address()
	{
		$this->form_validation->set_rules('email', 'Email Address', 'trim|required');
			
		if($this->form_validation->run() == FALSE){
			echo 0;
		}else{

			if($this->Template_model->insert_or_update_email_info()){
				echo 1;
			}else{
				echo 5;
			}
		}
	}


	/*==========Image Upload In Folder===========*/
	public function image_upload($imageName = null, $tmp_name){
		$type = explode('.', $imageName);
		$type = $type[count($type)-1];
		$file_name= uniqid(rand()).'.'.$type;

		if( in_array($type, array('jpg', 'png', 'jpeg', 'gif', 'JPG', 'PNG', 'JPEG', 'GIF' )) ){

				if( is_uploaded_file( $tmp_name ) ){
					$dist_path = 'libs/upload_pic/temp_image/'.$file_name ;
				move_uploaded_file( $tmp_name, $dist_path);
				return $dist_path;
				
			}else{
				return false;
			}
		}else{
			return false;
		}
	}



	// =============== Resize Uploded Image ==================
	public function image_resize($sourse){

		 /* First size */
		 $configSize1['image_library']   = 'gd2';
		 $configSize1['source_image'] 	 = $sourse;
		 $configSize1['create_thumb']    = FALSE;
		 $configSize1['maintain_ratio']  = FALSE;
		 $configSize1['width']           = 120;
		 $config['quality']   			 = '100';
		 $configSize1['height']          = 80;
		 $configSize1['new_image'] 		 = 'libs/upload_pic/temp_image/';

		 $this->image_lib->initialize($configSize1);
		 $this->image_lib->resize();
		 $this->image_lib->clear();		 
	}

	
}