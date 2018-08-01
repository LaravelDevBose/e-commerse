<?php

class NewsAndEvent extends CI_Controller
{
	
	public function __construct()
	{
		parent::__construct();

		//check user login or not
		if(!$this->Admin_model->is_admin_loged_in() ){
			redirect('admin/login');
		}
	}

	/*============ view News and Event Page==============*/
	public function news_and_event_page()
	{
		$data['title']='News and Event';
		$data['page_path']='admin/event/news_and_event_page';
		$data['news_events'] = $this->NewsAndEvent_model->get_all_news_and_event();
		$this->load->view('admin/master', $data);
	}


	/*========== news_event_create_page==============*/
	public function news_and_event_create_page()
	{
		$data['title']='News and Event';
		$data['page_path']='admin/event/news_event_create_page';
		$this->load->view('admin/master', $data);
	}

	/*======= news and event store method ================*/

	public function news_and_event_store()
	{
		$this->form_validation->set_rules('title', 'Event Title', 'trim|required');
		$this->form_validation->set_rules('date', 'Event Date', 'trim|required');
		$this->form_validation->set_rules('description', 'description', 'trim|required');
			
		if($this->form_validation->run() == FALSE){
			
			$data['title']='News and Event';
			$data['page_path']='admin/event/news_event_create_page';
			$this->load->view('admin/master', $data);
		}else{

			if($this->NewsAndEvent_model->insert_news_event_info()){
				$data['success'] = 'Stored Successfully.';
				$this->session->set_flashdata($data);
				redirect('news/create');
			}else{
				$data['success'] = 'Stored Un-Successfully.';
				$this->session->set_flashdata($data);
				redirect('news/create');
			}
		}
	}

	/*======= news and event Edit method ================*/

	public function news_and_event_edit($id=null)
	{
		$data['title']='News and Event';
		$data['page_path']='admin/event/news_event_edit_page';
		$data['event'] = $this->NewsAndEvent_model->get_event_by_id($id);
		$this->load->view('admin/master', $data);
	}

	/*======= news and event Update method ================*/

	public function news_and_event_update($id=null)
	{
		$this->form_validation->set_rules('title', 'Event Title', 'trim|required');
		$this->form_validation->set_rules('date', 'Event Date', 'trim|required');
		$this->form_validation->set_rules('description', 'description', 'trim|required');
			
		if($this->form_validation->run() == FALSE){
			
			$data['title']='News and Event';
			$data['page_path']='admin/event/news_event_edit_page';
			$data['event'] = $this->NewsAndEvent_model->get_event_by_id($id);
			$this->load->view('admin/master', $data);
		}else{

			if($this->NewsAndEvent_model->update_news_event_info($id)){
				$data['success'] = 'Update Successfully.';
				$this->session->set_flashdata($data);
				redirect('news_and_event');
			}else{
				$data['success'] = 'Update Un-Successfully.';
				$this->session->set_flashdata($data);
				redirect('news_and_event');
			}
		}
	}

	/*======= news and event delete method ================*/

	public function news_and_event_delete($id=null)
	{
		if($this->NewsAndEvent_model->new_event_delete($id)){
			$data['success'] = 'Delete Successfully.';
			$this->session->set_flashdata($data);
			redirect('news_and_event');
		}else{
			$data['error'] = 'Delete Un-Successfully.';
			$this->session->set_flashdata($data);
			redirect('news_and_event');
		}
	}
}