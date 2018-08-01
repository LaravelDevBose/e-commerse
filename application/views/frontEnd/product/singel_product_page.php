<!--single-->
<div class="single-wl3">
	<div class="container">
		<div class="single-grids">
			<div class="col-md-9 single-grid">
				<div clas="single-top">
					<?php 
						$product_images = $this->db->where('product_id', $product->id)->get('product_images')->result();
						if($product_images){	
					?>
					<div class="single-left">
						<div class="flexslider">
							<ul class="slides">
								<?php foreach($product_images as $product_image){
										$image = base_url().$product_image->image_path; if(!@getimagesize($image)){ $image = base_url().'libs/upload_pic/no_image_available.jpeg';} 
									?>
								<li data-thumb="<?= $image;?>">
									<div class="thumb-image"> <img src="<?= $image ;?>" data-imagezoom="true" class="img-responsive"> </div>
								</li>
								<?php } ?>
							 </ul>
						</div>
					</div>

					<?php } ?>

					<div class="single-right simpleCart_shelfItem">
						<h4><?= ucfirst($product->product_name);?></h4>
						<p>
							<span class="size">Brand: <?= $product->b_title;?> </span> 
							<span class="size pull-right">Category: <?= $product->c_title; ?></span>
						</p>
						
						<p>
						<?php if($product->prv_price): ?><del><?= $product->prv_price; ?> Tk</del> <?php endif; ?>
						</p>

						<p class="price item_price"><?= $product->price ;?> Tk</p>
						<div class="description">
							<p><span>Quick Overview : </span><?= $product->overview ?></p>
						</div>
						<div class="color-quality">
							<h6>Quality :</h6>
								<div class="quantity"> 
									<div class="quantity-select">                           
										<div class="entry value-minus1">&nbsp;</div>
										<div class="entry value1">1</div>
										<div class="entry value-plus1 active">&nbsp;</div>
									</div>
								</div>
									<!--quantity-->
											<script>
											$('.value-plus1').on('click', function(){
												var divUpd = $(this).parent().find('.value1'), newVal = parseInt(divUpd.text(), 10)+1;
												divUpd.text(newVal);
											});

											$('.value-minus1').on('click', function(){
												var divUpd = $(this).parent().find('.value1'), newVal = parseInt(divUpd.text(), 10)-1;
												if(newVal>=1) divUpd.text(newVal);
											});
											</script>
										<!--quantity-->
						</div>
						<div class="women">
							<a href="#" data-text="Add To Cart" data-product_id="<?= $product->id?>" data-product_name="<?= $product->product_name; ?>" data-price="<?= $product->price; ?>" class="my-cart-b  add_cart">Add To Cart</a>
						</div>
					</div>
					<div class="clearfix"> </div>
				</div>
			</div>
			<div class="col-md-3 single-grid1">
				<h3 style="text-align: center; margin-bottom: 20px; color: #1565C0; font-size: 25px; ">Related Products</h3>
				<?php if($related_products){ foreach($related_products as $product){?>
				<div class="recent-grids">
					<div class="recent-left">
						<?php  	
						$product_image = $this->db->where('product_id', $product->id)->get('product_images')->row();

						$image = base_url().$product_image->image_path; if(!@getimagesize($image)){ $image = base_url().'libs/upload_pic/no_image_available.jpeg';} 
					 	?>
						<a href="<?= base_url(); ?>singel/product/<?= $product->id; ?>"><img class="img-responsive " src="<?= $image ;?>" alt="<?= ucfirst($product->product_name)?>"></a>	
					</div>
					<div class="recent-right">
						<h6 class="best2"><a style="font-size: 1.1em;" href="<?= base_url(); ?>singel/product/<?= $product->id; ?>"><?= ucfirst($product->product_name)?> </a></h6>
						<span class="size" style="font-size: .9em;">Brand: <?= ucfirst($product->b_title); ?></span>
						<span class=" price-in1"> <?= $product->price; ?> TK</span>
					</div>	
					<div class="clearfix"> </div>
				</div>

			<?php } } ?>
			</div>
			<div class="clearfix"> </div>
		</div>
		<!--Product Description-->
			<div class="product-w3agile">
				<h3 class="tittle1">Product Description</h3>
				<div class="product-grids">
					<div class="col-md-4 product-grid">
						<h3 style="text-align: center; margin-bottom: 20px; color: #1565C0; ">Feature Products</h3>
						<?php if($feature_products){ $count = 0; $i = 0;?>
						<div id="owl-demo" class="owl-carousel">

						<?php foreach($feature_products as $f_product){?>
							<?php if($i ==0 ){ ?>
							<div class="item">
							<?php } ?>

								<div class="recent-grids">
									<div class="recent-left">
										<?php  	
											$product_image = $this->db->where('product_id', $f_product->id)->get('product_images')->row();

											$image = base_url().$product_image->image_path; if(!@getimagesize($image)){ $image = base_url().'libs/upload_pic/no_image_available.jpeg';} 
										 	?>
										<a href="<?= base_url(); ?>singel/product/<?= $f_product->id; ?>"><img class="img-responsive " src="<?= $image ;?>" alt="<?= ucfirst($f_product->product_name)?>"></a>	
									</div>
									<div class="recent-right">
										<h6 class="best2"><a style="font-size: 1.1em;" href="<?= base_url(); ?>singel/product/<?= $f_product->id; ?>"><?= ucfirst($f_product->product_name)?> </a></h6>
										<span class="size" style="font-size: .9em;">Brand: <?= ucfirst($f_product->b_title); ?></span>
										<span class=" price-in1"> <?= $f_product->price; ?> TK</span>
									</div>	
									<div class="clearfix"> </div>
								</div>
								
							<?php $count++; $i++; if($i ==4){$i =0; } if($i ==0 || count($feature_products)== $count){ ?>
							</div>
						<?php } }?>
						</div>
						<?php }?>
					</div>
					<div class="col-md-8 product-grid1">
						<div class="tab-wl3">
							<div class="bs-example bs-example-tabs" role="tabpanel" data-example-id="togglable-tabs">
								<div class="descr">
									<?= $product->details; ?>
								</div>
							</div>
						</div>
					</div>
					<div class="clearfix"> </div>
				</div>
			</div>
		<!--Product Description-->
	</div>
</div>
<!--single-->
<?php if($top_sale_products):?>
<div class="new-arrivals-w3agile">
	<div class="container">
		<h3 class="tittle1">Best Sale Products</h3>
		<div class="arrivals-grids">
			<?php foreach($top_sale_products as $t_product){?>
			<div class="col-md-3 arrival-grid simpleCart_shelfItem">
				<div class="grid-arr">
					<div  class="grid-arrival">
						<figure>		
							<a href="<?= base_url();?>pop_up/product/<?= $t_product->id; ?>" class="new-gri linka fancybox fancybox.ajax" >
						<?php 
						$product_images = $this->db->where('product_id', $t_product->id)->limit(2)->get('product_images')->result();
							if($product_images){
								foreach($product_images as $product_image){
						 ?>
								<div class="grid-img">
								<?php  $image = base_url().$product_image->image_path; if(!@getimagesize($image)){ $image = base_url().'libs/upload_pic/no_image_available.jpeg';}  ?>
									<img  src="<?= $image;?>" class="img-responsive" alt="<?= ucfirst($t_product->product_name);?>">
								</div>
						<?php } }?>
										
							</a>		
						</figure>	
					</div>

					<div class="women">
						<h6 style="font-size: .9em!important;"><a href="<?= base_url();?>singel/product/<?= $t_product->id; ?>"><?= ucfirst($t_product->product_name);?></a></h6>
						<span class="size"><?= ucfirst($t_product->b_title); ?></span>
						<p>
							<?php if($t_product->prv_price): ?><del><?= $t_product->prv_price; ?> Tk</del> <?php endif; ?>
							<em class="item_price"><?= $t_product->price ;?> Tk</em>
						</p>
						<a href="#" data-text="Add To Cart" data-product_id="<?= $t_product->id; ?>" data-product_name="<?= ucfirst($t_product->product_name);?>" data-qty="1" data-price="<?= $t_product->price ;?>" class="my-cart-b  cart_add">Add To Cart</a>
					</div>
				</div>
			</div>
			<?php }?>
			<div class="clearfix"></div>
		</div>
	</div>
</div>

<?php endif; ?>
<!--new-arrivals-->


<script type="text/javascript">
	
	$('.add_cart').click(function(){
		var product_id = $(this).attr('data-product_id');
		var product_name = $(this).attr('data-product_name');
		var qty = parseInt($('.value1').text());
		var price = $(this).attr('data-price');

		$.ajax({
			url:'<?= base_url();?>cart/add',
			type:'POST',
			dataType:'json',
			data:{product_id:product_id,product_name:product_name, qty:qty,price:price},
			success:function(data){
				console.log(data);

				if(data == 1){
					swal({
	                text: "Product Add To the Cart Successfully.",
	                icon: "success",
	                buttons: true,
	                timer: 1500,
	              });

					$.ajax({
						url:'<?= base_url();?>cart/info',
						type:'POST',
						dataType:'json',
						success:function(data){
							$('#cart_total').text(data.total);
							$('#item_total').text(data.item_qty);
							$('#total_amount').text(data.total);
						}
					});
				}else{
					swal({
	                  text: "Product Not Add To the Cart. Try Again!",
	                  icon: "error",
	                  buttons: false,
	                  timer: 1500,
	                });
				}
				 
			},
			error:function(error){
				console.log(error);
				swal({
                  text: "Product Not Add To the Cart. Try Again!",
                  icon: "error",
                  buttons: false,
                  timer: 1500,
                });
			}
		});
	});
</script>