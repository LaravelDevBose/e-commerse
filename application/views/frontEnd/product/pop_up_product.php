<div class="panel-body">
	<div class="news-gr">
		<div class="col-md-5 new-grid1">
			<?php 
				$product_image = $this->db->where('product_id', $product->id)->limit(1)->get('product_images')->row();
				$image = base_url().$product_image->image_path; if(!@getimagesize($image)){ $image = base_url().'libs/upload_pic/no_image_available.jpeg';}  
			?>
		<img src="<?= $image ;?>" class="img-responsive" alt="<?= $product->product_name; ?>">
		</div>
			<div class="col-md-7 new-grid">
				<h5><?= ucfirst($product->product_name); ?></h5>
				<h6>Quick Overview</h6>
				<span><?= ucfirst($product->overview); ?></span>
				<div class="color-quality">
					<div class="color-quality-left">
						<span class="size">QTY: 1</span>
						<p>
							<?php if($product->prv_price): ?><del><?= $product->prv_price; ?> Tk</del> <?php endif; ?>
							<em class="item_price"><?= $product->price ;?> Tk</em>
						</p>
						<div class="add">
						   <a href="#" data-text="Add To Cart" data-product_id="<?= $product->id; ?>" data-product_name="<?= ucfirst($product->product_name);?>" data-qty="1" data-price="<?= $product->price ;?>" class="my-cart-b  cart_add">Add To Cart</a>
						</div>


					</div>
					
					<div class="clearfix"> </div>
				</div>
			
		</div>
	</div>
	<div class="clearfix"></div>
</div>

<script type="text/javascript">
	$('.cart_add').click(function(){
		var product_id = $(this).attr('data-product_id');
		var product_name = $(this).attr('data-product_name');
		var qty = $(this).attr('data-qty');
		var price = $(this).attr('data-price');

		$.ajax({
			url:'<?= base_url();?>cart/add',
			type:'POST',
			dataType:'json',
			data:{product_id:product_id,product_name:product_name, qty:qty,price:price},
			success:function(data){
				console.log(data);
				
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
