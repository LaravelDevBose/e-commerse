<div class="panel-body">
	<div class="news-gr">
		<div class="col-md-5 new-grid1">
			<?php 
				$product_image = $this->db->where('product_id', $product->id)->limit(1)->get('product_images')->row();
				$image = $product_image->image_path; if(!@getimagesize($image)){ $image = base_url().'libs/upload_pic/no_image_available.jpeg';}  
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
						   <button class="btn btn-danger my-cart-btn my-cart-b" >Add to Cart</button>
						</div>


					</div>
					
					<div class="clearfix"> </div>
				</div>
			
		</div>
	</div>
	<div class="clearfix"></div>
</div>