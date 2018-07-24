<div class="login">
	<div class="main-agileits">
		<div class="form-w3agile form1">
			<h3>Register</h3>
			<form action="<?= base_url();?>user/registaion" method="post">
				<input type="hidden" name="page" value="register">
				<div class="key">
					<i class="fa fa-user" aria-hidden="true"></i>
					<input  type="text" value="Name" name="name" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Name';}" required>
					<div class="clearfix"></div>
				</div>

				<div class="key">
					<i class="fa fa-user" aria-hidden="true"></i>
					<input  type="text" value="Username" name="username" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Username';}" required>
					<div class="clearfix"></div>
				</div>
				<div class="key">
					<i class="fa fa-envelope" aria-hidden="true"></i>
					<input  type="text" value="Email" name="email" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Email';}" required>
					<div class="clearfix"></div>
				</div>

				<div class="key">
					<i class="fa fa-envelope" aria-hidden="true"></i>
					<input  type="text" value="Phone Number" name="phone_num" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = '0170000000';}" required="">
					<div class="clearfix"></div>
				</div>


				<div class="key">
					<i class="fa fa-lock" aria-hidden="true"></i>
					<input  type="password" value="Password" name="password" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Password';}" required="">
					<div class="clearfix"></div>
				</div>
				<div class="key">
					<i class="fa fa-lock" aria-hidden="true"></i>
					<input  type="password" value="Confirm Password" name="confirm_password" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Confirm Password';}" required="">
					<div class="clearfix"></div>
				</div>
				<input type="submit" value="Submit">
			</form>
		</div>
			
	</div>
</div>
<!--register-->