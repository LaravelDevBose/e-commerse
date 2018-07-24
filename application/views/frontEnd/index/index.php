
<?php if(isset($top_ads)){ $i = 0; $j=0; ?>
<div class="ban-bottom-w3l">
	<div class="container">

		<?php foreach($top_ads as $top){ ?>
			<?php $ads_img = $top->image_path; if(!@getimagesize($ads_img)){ $ads_img = base_url().'libs/upload_pic/no_image_available.jpeg';} ?>

			<?php if($top->position == 1){ ?>
			<div class="col-md-6 ban-bottom">
				<div class="ban-top">

					<img src="<?= $ads_img ?>" class="img-responsive" alt=""/>
					<div class="ban-text">
						<h4><?= $top->a_title; ?></h4>
					</div>
					<?php if(!is_null($top->discount)): ?>
					<div class="ban-text2 hvr-sweep-to-top">
						<h4><?= $top->discount; ?>% <span>Off/-</span></h4>
					</div>
					<?php endif;?>
				</div>
			</div>

			<?php }?> <!-- /if($top->position == 1) -->

			<?php if($top->position == 2 || $top->position== 3 || $top->position==4){ ?>
				<?php if($i == 0){?>
			<div class="col-md-6 ban-bottom3">
				<?php }?> <!--/if($i == 0) -->


				<?php if($top->position == 2){?>
				<div class="ban-top">
					<img src="<?= $ads_img; ?>" class="img-responsive" alt=""/>
					<div class="ban-text1">
						<h4><?= $top->a_title; ?></h4>
					</div>
					<?php if(!is_null($top->discount)): ?>
						<div class="latest-text2 hvr-sweep-to-top" style="    width: 11%;">
							<h4>-<?= $top->discount; ?>%</h4>
						</div>
					<?php endif;?>
				</div>
				<?php }?><!--/if($top->position == 2) -->


				<?php if($top->position== 3 || $top->position==4){ ?>
					<?php if($j == 0){?>
				<div class="ban-img">
					<?php }?> <!--/if($j == 0) -->

					<?php if($top->position == 3){?>
					<div class=" ban-bottom1">
						<div class="ban-top">
							<img src="<?= $ads_img; ?>" class="img-responsive" alt=""/>
							<div class="ban-text1">
								<h4><?= $top->a_title; ?></h4>
							</div>
							<?php if(!is_null($top->discount)): ?>
								<div class="latest-text2 hvr-sweep-to-top" style="width: 23%; left: 37%;">
									<h4>-<?= $top->discount; ?>%</h4>
								</div>
							<?php endif;?>
						</div>
					</div>
					<?php } if($top->position == 4){?> <!--/if($top->position == 3) --> 

					<div class="ban-bottom2">
						<div class="ban-top">
							<img src="<?= $ads_img; ?>" class="img-responsive" alt=""/>
							<div class="ban-text1">
								<h4><?= $top->a_title; ?></h4>
							</div>
							<?php if(!is_null($top->discount)): ?>
								<div class="latest-text2 hvr-sweep-to-top" style="width: 23%; left: 37%;">
									<h4>-<?= $top->discount; ?>%</h4>
								</div>
							<?php endif;?>
						</div>
					</div>


					<div class="clearfix"></div>	
					<?php }  $j++; if($j==2){ ?>  <!--/if($top->position == 4) --> 
				</div>
				<?php } }?> <!-- /if($j==2) /if($top->position== 3 || $top->position==4) -->

				<?php $i++; if($i==3){ ?>
			</div>
			<?php }  } ?> <!--/if($i==3) /if($top->position == 2 || $top->position== 3 || $top->position==4) -->

		<?php }?> <!--foreach end -->

		<div class="clearfix"></div>
	</div>
</div>
<?php } ?> <!--main if end -->
<!--banner-bottom-->



<!--new-arrivals-->
<?php if($feature_products): $i = 0; ?>
<div class="new-arrivals-w3agile">
	<div class="container">
		<h2 class="tittle">Feature Arrivals</h2>
		<?php foreach($feature_products as $feature): ?>

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
					<?php endif; if($feature->discount != null ):  ?>
						<div class="ribben1">
							<p>-<?= $feature->discount ?>%</p>
						</div>
					<?php endif; ?>

					<div class="women">
						<h6><a href="<?= base_url();?>singel/product/<?= $feature->id; ?>"><?= ucfirst($feature->product_name);?></a></h6>
						<span class="size"><?= ucfirst($feature->b_title); ?></span>
						<p>
							<?php if($feature->prv_price): ?><del><?= $feature->prv_price; ?> Tk</del> <?php endif; ?>
							<em class="item_price"><?= $feature->price ;?> Tk</em>
						</p>
						<a href="#" data-text="Add To Cart" data-product_id="<?= $feature->id; ?>" data-product_name="<?= ucfirst($feature->product_name);?>" data-qty="1" data-price="<?= $feature->price ;?>" class="my-cart-b  cart_add">Add To Cart</a>
					</div>
				</div>
			</div>

			<?php $i++; if($i==4){$i = 0;} if($i==0 || count($feature_products) == $i){?>
			<div class="clearfix"></div>
		</div>
		<?php } endforeach;?> <!-- /if($i==0) /foreach($feature_products as $feature) -->
	</div>
</div>
<?php endif; ?>
<!--new-arrivals-->



<!--accessories-->
<?php if($middel_ads){

$ads_img = $middel_ads->image_path; if(!@getimagesize($ads_img)){ $ads_img = base_url().'libs/upload_pic/no_image_available.jpeg';} 
	?>

<div class="accessories-w3l" style="background: url('<?= $ads_img; ?>') no-repeat 0px 0px">
	<div class="container">
		<?php if(!is_null($middel_ads->discount)):?>
		<h3 class="tittle"><?= $middel_ads->discount; ?>% Discount on</h3>
		<?php endif;?>
		<span><?= ucfirst($middel_ads->a_title); ?></span>
		<!-- <div class="button">
			<a href="#" class="button1"> Shop Now</a>
			<a href="#" class="button1"> Quick View</a>
		</div> -->
	</div>
</div>
<?php }?>
<!--accessories-->
<!--Products-->

<?php if($new_products): $i=0; ?>
<div class="product-agile">
	<div class="container">
		<h3 class="tittle1"> New Products</h3>
		<div class="slider">
			<div class="callbacks_container">
				<ul class="rslides" id="slider">
					<?php foreach($new_products as $product){?>
						<?php if($i == 0){?>
					<li>	 
						<div class="caption">
							<?php }?> <!-- /if($i == 0) -->
							<div class="col-md-3 cap-left simpleCart_shelfItem">
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
									
									<?php if($product->discount != null ): ?>
									<div class="ribben1">
										<p>-<?= $product->discount ?>%</p>
									</div>
									<?php endif; ?>
									<div class="women">
										<h6><a href="<?= base_url(); ?>singel/product/<?= $product->id; ?>"><?= ucfirst($product->product_name);?></a></h6>
										<span class="size"><?= ucfirst($product->b_title); ?></span>
										<p>
											<?php if($product->prv_price): ?><del><?= $product->prv_price; ?> Tk</del> <?php endif; ?>
											<em class="item_price"><?= $product->price ;?> Tk</em>
										</p>
										<a href="#" data-text="Add To Cart" data-product_id="<?= $product->id; ?>" data-product_name="<?= ucfirst($product->product_name);?>" data-qty="1" data-price="<?= $product->price ;?>" class="my-cart-b  cart_add"  >Add To Cart</a>
									</div>
								</div>
							</div>

							<?php $i++; if($i==4){$i =0;} if($i==0 || count($new_products) == $i){?>
							<div class="clearfix"></div>
						</div>
					</li>

					<?php } }?><!--/if($i==0 || count($new_products) == $i) /foreach($new_products as $product) -->
				</ul>
			</div>
		</div>
	</div>
</div>
<?php endif; ?>
<!--Products-->


<?php if($bottom_ads): $i=0;?>
<div class="latest-w3">
	<div class="container">
		<h3 class="tittle1">Latest Fashion Trends</h3>
		<?php foreach($bottom_ads as $bottom): ?>

			<?php if($i == 0): ?>
			<div class="latest-grids">
			<?php endif;?> <!--/if($i == 0): -->

				<div class="col-md-4 latest-grid">
					<div class="latest-top">
						<?php $ads_img = $bottom->image_path; if(!@getimagesize($ads_img)){ $ads_img = base_url().'libs/upload_pic/no_image_available.jpeg';} ?>
						<img  src="<?= $ads_img;?>" class="img-responsive"  alt="<?= ucfirst($bottom->a_title)?>">
						<div class="latest-text">
							<h4><?= ucfirst($bottom->a_title)?></h4>
						</div>
						<?php if($bottom->discount): ?>
						<div class="latest-text2 hvr-sweep-to-top">
							<h4>-<?= $bottom->discount; ?>%</h4>
						</div>
						<?php endif; ?>
					</div>
				</div>
				<?php $i++; if($i == 3){$i =0; }?> <!-- increnet and check then reset $i value-->

			<?php if($i==0): ?>
				<div class="clearfix"></div>
			</div>
		<?php endif; endforeach; ?> <!-- /if($i==0) /foreach($bottom_ads as $bottom) -->
	</div>
</div>
<?php endif; ?>


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
					<?php if($product->discount != null ): ?>
						<div class="ribben1">
							<p>-<?= $product->discount ?>%</p>
						</div>
					<?php endif; if($product->top_sell == 1): ?>
						<div class="ribben">
							<p>TOP SALE</p>
						</div>
					<?php endif;?>
						
					<div class="women">
						<h6><a href="<?= base_url(); ?>singel/product/<?= $product->id; ?>"><?= ucfirst($product->product_name);?></a></h6>
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