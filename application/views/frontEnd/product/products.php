<div class="products-agileinfo">
	<h2 class="tittle">Women's Wear</h2>
	<div class="container">
		<div class="product-agileinfo-grids w3l">
			<div class="col-md-3 product-agileinfo-grid">
				<div class="categories">
					<h3>Categories</h3>
					<ul class="tree-list-pad">
						<?php if($categories){ foreach($categories as $category){?>
						<li><a href="<?= base_url();?>category/products/<?= $category->id?>"><?= ucfirst($category->c_title);?></a> </li>
						<?php } } ?>
					</ul>
				</div>
				<!-- <div class="price">
					<h3>Price Range</h3>
					<ul class="dropdown-menu6">
						<li>                
							<div id="slider-range"></div>							
							<input type="text" id="amount" style="border: 0; color: #ffffff; font-weight: normal;" />
						</li>			
					</ul>
					<script type='text/javascript'>//<![CDATA[ 
					$(window).load(function(){
					 $( "#slider-range" ).slider({
								range: true,
								min: 0,
								max: 9000,
								values: [ 1000, 7000 ],
								slide: function( event, ui ) {  $( "#amount" ).val( "$" + ui.values[ 0 ] + " - $" + ui.values[ 1 ] );
								}
					 });
					$( "#amount" ).val( "$" + $( "#slider-range" ).slider( "values", 0 ) + " - $" + $( "#slider-range" ).slider( "values", 1 ) );

					});//]]>  

					</script>
					<script type="text/javascript" src="libs/frontEnd/js/jquery-ui.js"></script>
				</div> -->
				<div class="top-rates">
					<h3>Top Sale products</h3>
					<?php if($top_sale){ foreach($top_sale as $top){ ?>
					<div class="recent-grids">
						<div class="recent-left">
							<a href="<?= base_url(); ?>singel/product/<?= $top->id; ?>">
							<?php  	$product_image = $this->db->where('product_id', $top->id)->get('product_images')->row(); 

									$image = base_url().$product_image->image_path; if(!@getimagesize($image)){ $image = base_url().'libs/upload_pic/no_image_available.jpeg';} 
						 	?>
								<img class="img-responsive " src="<?= $image;?>" alt="<?= $top->product_name; ?>">
							
							</a>	
						</div>
						<div class="recent-right">
							<h6 class="best2"><a href="<?= base_url(); ?>singel/product/<?= $top->id; ?>"><?= ucfirst($top->product_name); ?></a></h6>
							<p>
								<?php if($top->prv_price): ?><del><?= $top->prv_price; ?> Tk</del> <?php endif; ?>
								<em class="item_price"><?= $top->price ;?> Tk</em>
							</p>
						</div>	
						<div class="clearfix"> </div>
					</div>
					<?php }}?>
				</div>
				<div class="brand-w3l">
					<h3>Brands Filter</h3>
					<ul>
						<?php if($brands){ foreach($brands as $brand){?>
						<li><a href="<?= base_url();?>brand/products/<?= $brand->id?>"><?= ucfirst($brand->b_title);?></a></li>
						<?php }}?>
					</ul>
				</div>
				<!-- <div class="cat-img">
					<img class="img-responsive " src="<?= base_url();?>libs/frontEnd/images/45.jpg" alt="">
				</div> -->
			</div>
			<div class="col-md-9 product-agileinfon-grid1 w3l">
				
				<div class="bs-example bs-example-tabs" role="tabpanel" data-example-id="togglable-tabs">
					<?php  if($products){ $i = 0;  foreach($products as $product){ ?>

					<?php if($i == 0):?>
					<div class="product-tab" style="margin-bottom: 30px;">
					<?php endif;?>
						<div class="col-md-4 product-tab-grid simpleCart_shelfItem paginate" >
							<div class="grid-arr">
								<div  class="grid-arrival">
									<figure>		
										<a href="<?= base_url();?>singel/product/<?= $product->id; ?>" class="new-gri" title="<?= ucfirst($product->product_name);?>">
											<?php 
												$product_images = $this->db->where('product_id', $product->id)->limit(2)->get('product_images')->result();
													if($product_images){
														foreach($product_images as $product_image){
											?>

											<div class="grid-img">
												<?php  $image = base_url().$product_image->image_path; if(!@getimagesize($image)){ $image = base_url().'libs/upload_pic/no_image_available.jpeg';}  ?>
												<img  src="<?= $image;?>" class="img-responsive" alt="<?= ucfirst($product->product_name);?>">
											</div>
											<?php } }?>		
										</a>		
									</figure>	
								</div>
								
								<div class="women">
									<h6><a href="<?= base_url();?>singel/product/<?= $product->id; ?>" title="<?= ucfirst($product->product_name);?>" ><?= ucfirst($product->product_name);?></a></h6>
									<span class="size"><?= ucfirst($product->b_title); ?></span>
									<p>
										<?php if($product->prv_price): ?><del><?= $product->prv_price; ?> Tk</del> <?php endif; ?>
										<em class="item_price"><?= $product->price ;?> Tk</em>
									</p>
									<a href="#" data-text="Add To Cart" data-product_id="<?= $product->id; ?>" data-product_name="<?= ucfirst($product->product_name);?>" data-qty="1" data-price="<?= $product->price ;?>" class="my-cart-b  cart_add">Add To Cart</a>
								</div>
							</div>
						</div>
						<?php $i++; if($i ==3 ){$i =0; } if($i==0 ){ ?>
						<div class="clearfix"></div>
					</div>
				<?php } } } ?>
				</div>
			</div>
			<div class="clearfix"> </div>
			<div class="row">
				    <div id="page-nav"></div>

				    <script>
				        $(function($) {
				                
				                var pageParts = $(".paginate");
				                
				                var numPages = pageParts.length;
				                
				                var perPage = 18;
				                
				                pageParts.slice(perPage).hide();
				                
				                if(numPages > perPage){
				                    $("#page-nav").pagination({
				                        items: numPages,
				                        itemsOnPage: perPage,
				                        cssStyle: "light-theme",
				                        
				                        onPageClick: function(pageNum) {
				                            
				                            var start = perPage * (pageNum - 1);
				                            var end = start + perPage;
				                        
				                            pageParts.hide()
				                                     .slice(start, end).show();
				                        }
				                    });
				                }
				                
				            });
				    </script>
				</div>
		</div>
	</div>
</div>
</div>
<!--content-->