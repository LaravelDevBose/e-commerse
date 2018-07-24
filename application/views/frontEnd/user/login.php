<!--login-->
<div class="login">
	<div class="main-agileits">
		<div class="form-w3agile">
			<h3>Login To Khan Traders</h3>
			<form action="<?= base_url(); ?>user/login" method="post">
				<input type="hidden" name="page" value="login">
				<div class="key">
					<i class="fa fa-envelope" aria-hidden="true"></i>
					<input  type="text" value="User Name" name="username" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'User Name';}" required="">
					<div class="clearfix"></div>
				</div>
				<div class="key">
					<i class="fa fa-lock" aria-hidden="true"></i>
					<input  type="password" value="Password" name="password" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Password';}" required="">
					<div class="clearfix"></div>
				</div>
				<input type="submit" value="Login">
			</form>
		</div>
		<div class="forg">
			<a href="<?= base_url(); ?>register" class="forg-right">Register</a>
			<div class="clearfix"></div>
		</div>
	</div>
</div>
<!--login-->