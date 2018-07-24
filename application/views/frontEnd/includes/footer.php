<div class="footer-w3l">
	<div class="container">
		<div class="footer-grids">
			<div class="col-md-4 footer-grid">
				<h4>About </h4>
				<p><?= $about_us->value; ?></p>
				<!-- <div class="social-icon">
					<a href="#"><i class="icon"></i></a>
					<a href="#"><i class="icon1"></i></a>
					<a href="#"><i class="icon2"></i></a>
					<a href="#"><i class="icon3"></i></a>
				</div> -->
			</div>
			<!-- <div class="col-md-3 footer-grid">
				<h4>My Account</h4>
				<ul>
					
					<li><a href="login">Login</a></li>
					<li><a href="register"> Create Account </a></li>
				</ul>
			</div> -->
			<div class="col-md-4 footer-grid">
				<h4>Information</h4>
				<ul>
					<li><a href="<?= base_url(); ?>">Home</a></li>
					<li><a href="<?= base_url(); ?>contact_us">Mail Us</a></li>
					<li><a href="<?= base_url(); ?>checkout">Checkout</a></li>
					<li><a href="<?= base_url(); ?>cart">Cart</a></li>
				</ul>
			</div>
			<div class="col-md-4 footer-grid foot">
				<h4>Contacts</h4>
				<ul>
					<li><i class="glyphicon glyphicon-map-marker" aria-hidden="true"></i><a href="#"><?= $address->value; ?></a></li>
					<li><i class="glyphicon glyphicon-earphone" aria-hidden="true"></i><a href="#"><?= $phone->value; ?></a></li>
					<li><i class="glyphicon glyphicon-envelope" aria-hidden="true"></i><a href="mailto:<?= $email->value; ?>"> <?= $email->value; ?></a></li>
					
				</ul>
			</div>
		<div class="clearfix"> </div>
		</div>
		
	</div>
</div>

<div class="copy-section">
	<div class="container">
		<div class="copy-left">
			<p>&copy; 2018 Khan Traders . All rights reserved | Design by <a href="http://w3layouts.com">W3layouts</a></p>
		</div>
		<div class="copy-right">
			<img src="<?= base_url();?>libs/frontEnd/images/card.png" alt=""/>
		</div>
		<div class="clearfix"></div>
	</div>
</div>