

				<div class="login">
					<div class="main-agileits" >
						<div class="form-w3agile form1">
							<h3>Shipping Details</h3>
							<form action="<?= base_url();?>order" method="post">
								<input type="hidden" name="page" value="checkout">
								<div class="key">
									<i class="fa fa-user" aria-hidden="true"></i>
									<input  type="text" value="Name" name="name" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Name';}" required>
									<div class="clearfix"></div>
								</div>

								
								<div class="key">
									<i class="fa fa-envelope" aria-hidden="true"></i>
									<input  type="text" value="Email" name="email" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Email';}" required>
									<div class="clearfix"></div>
								</div>

								<div class="key">
									<i class="fa fa-phone" aria-hidden="true"></i>
									<input  type="text" value="Phone Number" name="phone_num" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = '0170000000';}" required="">
									<div class="clearfix"></div>
								</div>


								<div class="key">
									<textarea name="address" placeholder="Shipping Address..." class="form-control" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Shipping Address..';}" required=""></textarea>


									
									<div class="clearfix"></div>
								</div>
								
								<input type="submit" value="Order">
							</form>
						</div>
					</div>
				</div>

