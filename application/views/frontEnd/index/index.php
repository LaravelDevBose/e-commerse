

<div class="ban-bottom-w3l">
	<div class="container">

		<div class="row">
			<div class="col-md-6">
				<div class="panel panel-default">
				  	<div class=" c_header">
				    	<h3 class="panel-title ">Welcome Message</h3>
				  	</div>
				  	<div class="panel-body">
				    	<p>
				    		<?php if($welcome_note && isset($welcome_note)){echo $welcome_note->value; }?>
				    	</p>
				  	</div>
				</div>

			</div>
			<div class="col-md-6">
				<div class="panel panel-default">
				  	<div class="c_header">
				    	<h3 class="panel-title"><?= ucfirst($md_desig->value); ?> Message</h3>
				  	</div>
				  	<div class="panel-body">
				    	<div class="col-md-3" style="float: left;">
							
							<?php if($md_image && isset($md_image)){
								$image = base_url().$md_image->value; 
								if(!@getimagesize($image)){$image = base_url().'libs/upload_pic/admin_image/admin_defult.jpg' ; }
							}?>
							<img  class="img-fluid" src="<?= $image?>" alt="<?= $md_name->value; ?>" style="margin: 0 auto; height: 100px; width: 100px;">
						
						</div>
						<div class="col-md-9 col-sm-9" >
							<p class="md-name"><?= ucfirst($md_name->value); ?></p>
							<p class="md-des"><?= ucfirst($md_desig->value); ?></p>
							<p class="card-text" style="padding-top: 5px;"><?php if($md_message && isset($md_message)){echo substr($md_message->value, 0, 350); }?>
								
							</p>
						</div>
						<div class="col-md-12" style="clear: both; padding-top: 10px;">
							<a href="<?= base_url();?>message-of-md" class="btn btn-sm btn-info pull-right" >Read More</a>
						</div>
				  	</div>
				</div>
			</div>
		</div>

		<div class="clearfix"></div>
	</div>
</div>

<!--banner-bottom-->



<!--new-arrivals-->
<?php if($feature_products): $i = 0; ?>
<div class="new-arrivals-w3agile">
	<div class="container">
		<h2 class="tittle">Feature Arrivals</h2>
		<?php $count =0;  foreach($feature_products as $feature): ?>

			<?php if($i == 0){ ?>
			<div class="arrivals-grids">
			<?php }?>
			
			<div class="col-md-3 arrival-grid simpleCart_shelfItem">
				<div class="grid-arr">
					<div  class="grid-arrival">
						<figure>		
							<a href="<?= base_url();?>pop_up/product/<?= $feature->id; ?>" class="new-gri linka fancybox fancybox.ajax" >
						<?php 
						$product_images = $this->db->where('product_id', $feature->id)->limit(2)->get('product_images')->result();
							if($product_images){
								foreach($product_images as $product_image){
						 ?>
								<div class="grid-img">
								<?php  $image = base_url().$product_image->image_path; if(!@getimagesize($image)){ $image = base_url().'libs/upload_pic/no_image_available.jpeg';}  ?>
									<img  src="<?= $image;?>" class="img-responsive" alt="<?= ucfirst($feature->product_name);?>">
								</div>
						<?php } }?>
										
							</a>		
						</figure>	
					</div>

					<?php if($feature->top_sell = 1 ): ?>
						<div class="ribben">
							<p>TOP SALE</p>
						</div>
					<?php endif;?>
						

					<div class="women">
						<h6 style="font-size: 1em;"><a href="<?= base_url();?>singel/product/<?= $feature->id; ?>"><?= ucfirst($feature->product_name);?></a></h6>
						<span class="size"><?= ucfirst($feature->b_title); ?></span>
						<p>
							<?php if($feature->prv_price): ?><del><?= $feature->prv_price; ?> Tk</del> <?php endif; ?>
							<em class="item_price"><?= $feature->price ;?> Tk</em>
						</p>
						<a href="#" data-text="Add To Cart" data-product_id="<?= $feature->id; ?>" data-product_name="<?= ucfirst($feature->product_name);?>" data-qty="1" data-price="<?= $feature->price ;?>" class="my-cart-b  cart_add">Add To Cart</a>
					</div>
				</div>
			</div>

			<?php $i++; $count++;  if($i==4){$i = 0;} if($i==0 || count($feature_products) == $count){?>
			<div class="clearfix"></div>
		</div>
		<?php } endforeach;?> <!-- /if($i==0) /foreach($feature_products as $feature) -->
	</div>
</div>
<?php endif; ?>
<!--new-arrivals-->
<div class="ban-bottom-w3l" style="background-color: #ffffff">
	<div class="container">

		<div class="row">
			<div class="col-md-6">
				<div class="panel panel-default">
				  	<div class=" c_header">
				    	<h3 class="panel-title ">Our Regards</h3>
				  	</div>
				  	<div class="panel-body" style="text-align: left; font-style: justify;">
				    	<p>
				    		<?php if($regards && isset($regards)){echo ucfirst($regards->value); }?>
				    	</p>
				  	</div>
				</div>

			</div>

			<div class="col-md-6">
				<div class="panel panel-default">
				  	<div class=" c_header">
				    	<h3 class="panel-title ">Our Regards</h3>
				  	</div>
				  	<div class="panel-body" style="text-align: left; font-style: justify;">
				    	<marquee onmouseover="this.stop();" onmouseout="this.start();" direction="up" scrollamount="1" scrolldelay="50" top="0" left="0" >
			                <div class="marqueeContent">
			                    <?php if($events && isset($events)): foreach ($events as $event): ?>
			                        <p class="latestNewsSummery"><a class="menu_blue" href="<?= base_url('news-and-event/').$event->id; ?>"><?php echo $event->title; ?></a></p>
			                        <p class="latestNewsDate">Published Date: <span><?php echo date("d/m/Y", strtotime($event->date)); ?></span></p>
			                    <?php endforeach; endif; ?>
			                </div>
			            </marquee>
				  	</div>
				</div>

			</div>
		</div>
	</div>
</div>


<?php if($all_products):?>
<div class="new-arrivals-w3agile">
	<div class="container">
		<h3 class="tittle1">All Products</h3>
		<div class="arrivals-grids">
			<?php foreach($all_products as $product):?>
			<div class="col-md-3 arrival-grid simpleCart_shelfItem" style="margin-bottom: 30px;">
				<div class="grid-arr">
					<div  class="grid-arrival">
						<figure>		
							<a href="<?= base_url();?>singel/product/<?= $product->id; ?>">
								<?php 
									$product_images = $this->db->where('product_id', $product->id)->limit(2)->get('product_images')->result();
										if($product_images){
											foreach($product_images as $product_image){
									 ?>
										<div class="grid-img">
											<?php  $image = $product_image->image_path; if(!@getimagesize($image)){ $image = base_url().'libs/upload_pic/no_image_available.jpeg';}  ?>
											<img  src="<?= $image;?>" class="img-responsive" alt="<?= $product->product_name; ?>">
										</div>
								<?php } } ?>			
							</a>		
						</figure>	
					</div>
					
					<?php if($product->top_sell == 1): ?>
						<div class="ribben">
							<p>TOP SALE</p>
						</div>
					<?php endif;?>
						
					<div class="women">
						<h6 style="font-size: 1em;"><a href="<?= base_url(); ?>singel/product/<?= $product->id; ?>"><?= ucfirst($product->product_name);?></a></h6>
						<span class="size"><?= ucfirst($product->b_title); ?></span>
						<p>
							<?php if($product->prv_price): ?><del><?= $product->prv_price; ?> Tk</del> <?php endif; ?>
							<em class="item_price"><?= $product->price ;?> Tk</em>
						</p>
						<a href="#" data-text="Add To Cart" data-product_id="<?= $product->id; ?>" data-product_name="<?= ucfirst($product->product_name);?>" data-qty="1" data-price="<?= $product->price ;?>" class="my-cart-b  cart_add">Add To Cart</a>
					</div>
				</div>
			</div>
			<?php endforeach;?>
			<div class="clearfix"></div>
		</div>
	</div>
</div>
<?php endif; ?>
<!--new-arrivals -->