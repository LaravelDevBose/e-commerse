
<style type="text/css">
	td{
		text-align: center;
	}
</style>
<div class="cart-items">
	<div class="container">
		<h2>My Shopping Bag </h2>
		<table class="table table-bordered">
		  <thead>
		    <tr>
		      <th >#</th>
		      <th >Image</th>
		      <th>Product Name</th> 
		      <th >Qty</th>
		      <th >Price(Tk)</th>
		      <th >SubTotal(Tk)</th>
		      <th >Remove</th>
		    </tr>
		  </thead>
		  <tbody id="tbody">
		  	<?php $i=1; if($cart_products){ foreach($cart_products as $product){  ?>
		    <tr id="<?= $product['rowid']?>">
		      	<th scope="row"><?= $i++; ?></th>
		      	<td ><div class="cart-item" style="width: 100%; height: 100%">
		      		<?php  	
		      		$product_image = $this->db->where('product_id', $product['id'])->get('product_images')->row(); 

					$image = base_url().$product_image->image_path; if(!@getimagesize($image)){ $image = base_url().'libs/upload_pic/no_image_available.jpeg';} 
				 	?>
		      		<img src="<?= $image;?>" class="img-responsive" alt="">
		      	</div>
		      	</td>
		      	<td><a href="<?= base_url(); ?>singel/product/<?= $product['id']; ?>"> <?= $product['name']?></a></td>
		      	<td><input type="number" name="qty" data-rowid="<?= $product['rowid']?>" data-price="<?= $product['price']?>" class="form-control qty_update" value="<?= $product['qty']?>" style="width: 80px;" /></td>
		      	<td><?= number_format($product['price']) ?></td>
		      	<td><?= number_format($product['subtotal']) ?></td>
		      	<td><a href="#" data-rowid="<?= $product['rowid']?>"  class="btn btn-sm btn-danger cart_remove">X</a></td>
		    </tr>
		    <?php } }?>
		    <tr>
		    	<td colspan="5"><span class="pull-right">Total: </span></td>
		    	<td colspan="2"><span class="pull-left" id="total_amount"><?= number_format($this->cart->total()) ?> TK. </span></td>
		    </tr>
		  </tbody>
		</table>
		<a href="<?= base_url();?>checkout" class="btn  btn-primary pull-right">Check Out</a>
		 	
	</div>
</div>
<!-- checkout -->

<script type="text/javascript">
	
	$('.cart_remove').click(function(){
		var rowid = $(this).attr('data-rowid');
		if(rowid.length > 0){
			$.ajax({
				url:'<?= base_url();?>cart/remove',
				type:'POST',
				data:{rowid:rowid},
				success:function(data){
					if(data == 1){

						$('#'+rowid).fadeOut(1500);
						swal({
		                text: "Product Remove from Cart Successfully.",
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
		                  text: "Product Not Remove from Cart. Try Again!",
		                  icon: "error",
		                  buttons: false,
		                  timer: 1500,
		                });
					}
				},
				error:function(error){
					console.log(error);
					swal({
	                  text: "Product Not Remove from Cart. Try Again!",
	                  icon: "error",
	                  buttons: false,
	                  timer: 1500,
	                });
				}
			});
		}
	});

	$('.qty_update').on('keyup', function(){
		var qty = $(this).val();
		var rowid = $(this).attr('data-rowid');
		var price = $(this).attr('data-price');
		
		if(qty > 0 ){
			$.ajax({
				url:'<?= base_url();?>cart/update',
				type:'POST',
				dataType:'html',
				data:{qty:qty,rowid:rowid},
				success:function(data){
					
					$('#tbody').html(data);
					
					swal({
		                text: "Cart Update Successfully.",
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
		                  text: "Cart Not Update. Try Again!",
		                  icon: "error",
		                  buttons: false,
		                  timer: 1500,
		                });
				}
			});

		}else if(qty == ''){

		}
		else{
			swal({
	              text: "Insert a valid Qty Number",
	              icon: "error",
	              buttons: false,
	              timer: 1500,
	            });
		}
	});
</script>
