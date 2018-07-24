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
  	<td><input type="number" name="qty" data-rowid="<?= $product['rowid']?>" class="form-control qty_update" value="<?= $product['qty']?>" style="width: 80px;" /></td>
  	<td><?= number_format($product['price']) ?></td>
  	<td><?= number_format($product['subtotal']) ?></td>
  	<td><a href="#" data-rowid="<?= $product['rowid']?>"  class="btn btn-sm btn-danger cart_remove">X</a></td>
</tr>
<?php } }?>

<tr>
  <td colspan="5"><span class="pull-right">Total: </span></td>
  <td colspan="2"><span class="pull-left" id="total_amount"><?= number_format($this->cart->total()) ?> Tk</span></td>
</tr>