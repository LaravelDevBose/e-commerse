<div class="header">
	<div class="header-top">
		<div class="container">
			 <div class="top-left">
				<a href="#"> Help  <i class="glyphicon glyphicon-phone" aria-hidden="true"></i> <?= $phone->value; ?></a>
			</div>
			<div class="top-right">
			<ul>
				<li><a href="<?= base_url();?>checkout">Checkout</a></li>
				<li>
					<a href="<?= base_url();?>cart">
						
							<div class="total">
								<span class="total" id="cart_total"><?= $this->cart->total(); ?> </span> 	Tk 
								(<span id="item_total" ><?= count($this->cart->contents());?></span> items)
							</div>
							<img src="<?= base_url();?>libs/frontEnd/images/bag.png" alt="" />
						
					</a>
				</li>
				<!-- <li><a href="login">Login</a></li> -->
				<!-- <li><a href="register"> Create Account </a></li> -->
			</ul>
			</div>
			<div class="clearfix"></div>
		</div>
	</div>
	<div class="heder-bottom"> 
		<div class="container">
			<div class="logo-nav">
				<div class="logo-nav-left">
					<h1><a href="<?= base_url(); ?>">Khan Traders <span>Shop anywhere</span></a></h1>
				</div>
				<div class="logo-nav-left1">
					<nav class="navbar navbar-default">
					<!-- Brand and toggle get grouped for better mobile display -->
					<div class="navbar-header nav_2">
						<button type="button" class="navbar-toggle collapsed navbar-toggle1" data-toggle="collapse" data-target="#bs-megadropdown-tabs">
							<span class="sr-only">Toggle navigation</span>
							<span class="icon-bar"></span>
							<span class="icon-bar"></span>
							<span class="icon-bar"></span>
						</button>
					</div> 
					<div class="collapse navbar-collapse" id="bs-megadropdown-tabs">
						<ul class="nav navbar-nav">
							<li class="active"><a href="<?= base_url(); ?>" class="act">Home</a></li>	
							<!-- Mega Menu -->
							<?php if($categories) : foreach($categories as $category):?>
							<li> <a href="<?= base_url(); ?>category/products/<?= $category->id; ?>"><?= ucfirst($category->c_title);?></b></a> </li>
							<?php endforeach; endif; ?>
						</ul>
					</div>
					</nav>
				</div>
				
				<div class="clearfix"> </div>
			</div>
		</div>
	</div>
</div>