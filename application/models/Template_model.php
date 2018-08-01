<?php

Class Template_model extends CI_Model{

	public function get_wellcome_note()
	{
		$result = $this->db->where('field_name', 'wellcome_note')->get('template')->row();

		if($result): return $result;  else: return FALSE; endif;
	}


	public function insert_or_update_wellcome_note_info()
	{
		$attr = array(
			'field_name' => 'wellcome_note',
			'value' => $this->input->post('wellcome_note')
		);


		$result = $this->get_wellcome_note();
		if($result){
			$this->db->where('field_name', 'wellcome_note');
			$this->db->update('template', $attr);

			if($this->db->affected_rows()){
				return TRUE;
			}else{
				return FALSE;
			}
		}

		$insert = $this->db->insert('template', $attr);

		if($insert): return TRUE; else: return FALSE; endif;
	}


	public function get_regards()
	{
		$result = $this->db->where('field_name', 'regard')->get('template')->row();

		if($result): return $result;  else: return FALSE; endif;
	}


	public function insert_or_update_regard_info()
	{
		$attr = array(
			'field_name' => 'regard',
			'value' => $this->input->post('regard')
		);


		$result = $this->get_regards();
		if($result){
			$this->db->where('field_name', 'regard');
			$this->db->update('template', $attr);

			if($this->db->affected_rows()){
				return TRUE;
			}else{
				return FALSE;
			}
		}

		$insert = $this->db->insert('template', $attr);

		if($insert): return TRUE; else: return FALSE; endif;
	}

	


	/*======== get Md name data=============*/
	public function get_md_name_data() 
	{
		$result = $this->db->where('field_name', 'md_name')->get('template')->row();

		if($result): return $result;  else: return FALSE; endif;
	}

	/*======== get Md Designation data=============*/
	public function get_md_desig_data()
	{
		$result = $this->db->where('field_name', 'md_desig')->get('template')->row();

		if($result): return $result;  else: return FALSE; endif;
	}

	/*======== get Md Image data=============*/
	public function get_md_image_data()
	{
		$result = $this->db->where('field_name', 'md_image')->get('template')->row();

		if($result): return $result;  else: return FALSE; endif;
	}

	/*======== get Md Message data=============*/
	public function get_md_message_data()
	{
		$result = $this->db->where('field_name', 'md_message')->get('template')->row();

		if($result): return $result;  else: return FALSE; endif;
	}

	/*======== udpate or insert Md Information==============*/
	public function insert_or_update_md_info($file_name = null)
	{	
		
		$attr1 = array(
			'field_name' => 'md_name',
			'value' => $this->input->post('md_name')
		);

		$attr2 = array(
			'field_name' => 'md_desig',
			'value' => $this->input->post('md_desig')
		);

		$attr3 = array(
			'field_name' => 'md_image',
			'value' => $file_name
		);
		$attr4 = array(
			'field_name' => 'md_message',
			'value' => $this->input->post('md_message')
		);


		$result1 = $this->get_md_name_data();
		$result2 = $this->get_md_desig_data();
		$result3 = $this->get_md_image_data();
		$result4 = $this->get_md_message_data();
		if($result1){
			$this->db->where('field_name', 'md_name');
			$this->db->update('template', $attr1);
		}else{

			$this->db->insert('template', $attr1);
		}

		if($result2){
			$this->db->where('field_name', 'md_desig');
			$this->db->update('template', $attr2);
		}else{
			$this->db->insert('template', $attr2);
		}	
		

		if($result3){
			$this->db->where('field_name', 'md_image');
			$this->db->update('template', $attr3);

			if(file_exists($result3->value)){
				unlink($result3->value);
			}
		}else{
			$this->db->insert('template', $attr3);
		}
		


		if($result4){
			$this->db->where('field_name', 'md_message');
			$this->db->update('template', $attr4);
		}else{
			$this->db->insert('template', $attr4);
		}

		

		 return TRUE; 
	}


	// ==== insert about us informaion

	public function insert_or_update_about_us_info()
	{
		$attr = array(
			'field_name' => 'about_us',
			'value' => $this->input->post('about_us')
		);


		$result = $this->get_about_us_info();
		if($result){
			$this->db->where('field_name', 'about_us');
			$this->db->update('template', $attr);

			if($this->db->affected_rows()){
				return TRUE;
			}else{
				return FALSE;
			}
		}

		$insert = $this->db->insert('template', $attr);

		if($insert): return TRUE; else: return FALSE; endif;
	}


	//======= get about Us Information

	public function get_about_us_info()
	{
		$result = $this->db->where('field_name', 'about_us')->get('template')->row();

		if($result): return $result;  else: return FALSE; endif;
	}



	// ==== insert and Update adress informaion
	public function insert_or_update_address_info()
	{
		$attr = array(
			'field_name' => 'address',
			'value' => $this->input->post('address')
		);


		$result = $this->get_address_info();
		if($result){
			$this->db->where('field_name', 'address');
			$this->db->update('template', $attr);

			if($this->db->affected_rows()){
				return TRUE;
			}else{
				return FALSE;
			}
		}

		$insert = $this->db->insert('template', $attr);

		if($insert): return TRUE; else: return FALSE; endif;
	}


	//======= get address Information

	public function get_address_info()
	{
		$result = $this->db->where('field_name', 'address')->get('template')->row();

		if($result): return $result;  else: return FALSE; endif;
	}


	// ==== insert and Update phone informaion
	public function insert_or_update_phone_info()
	{
		$attr = array(
			'field_name' => 'phone',
			'value' => $this->input->post('phone')
		);


		$result = $this->get_phone_info();
		if($result){
			$this->db->where('field_name', 'phone');
			$this->db->update('template', $attr);

			if($this->db->affected_rows()){
				return TRUE;
			}else{
				return FALSE;
			}
		}

		$insert = $this->db->insert('template', $attr);

		if($insert): return TRUE; else: return FALSE; endif;
	}


	//======= get phone Information

	public function get_phone_info()
	{
		$result = $this->db->where('field_name', 'phone')->get('template')->row();

		if($result): return $result;  else: return FALSE; endif;
	}


	// ==== insert and Update Email informaion
	public function insert_or_update_email_info()
	{
		$attr = array(
			'field_name' => 'email',
			'value' => $this->input->post('email')
		);


		$result = $this->get_email_info();
		if($result){
			$this->db->where('field_name', 'email');
			$this->db->update('template', $attr);

			if($this->db->affected_rows()){
				return TRUE;
			}else{
				return FALSE;
			}
		}

		$insert = $this->db->insert('template', $attr);

		if($insert): return TRUE; else: return FALSE; endif;
	}


	//======= get address Information

	public function get_email_info()
	{
		$result = $this->db->where('field_name', 'email')->get('template')->row();

		if($result): return $result;  else: return FALSE; endif;
	}
}