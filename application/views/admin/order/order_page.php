<!-- Highlighting rows and columns -->
<div class="panel panel-flat">
	<div class="panel-heading">
		<h5 class="panel-title">Order List</h5>
		<div class="heading-elements">
			
    	</div>
	</div>
	<table class="table table-bordered table-hover datatable-highlight">
		<thead>
			<tr>
				<th>Sl No</th>
				<th>Customer Name</th>
				<th>Phone Number</th>
				<th>Email</th>
				<th>Shipping Address</th>
				<th>Total Qty</th>
				<th>Total Price</th>
				<th>Order Date</th>
				<th class="text-center">Actions</th>
			</tr>
		</thead>
		<tbody>
			<?php if($orders): $i = 1;
				foreach($orders as $order):
			?>
			<tr>
				<td><?= $i++; ?></td>
				<td><?= $order->name; ?></td>
				<td><?= $order->phone_num; ?></td>
				<td><?= $order->email; ?></td>
				<td><?= $order->address; ?></td>
				<td><?= $order->total_qty; ?></td>
				<td><?= $order->total_amount; ?></td>
				<td><?= $order->order_date; ?></td>
				<td class="text-center">
					<ul class="icons-list">
						<li class="text-primary-600"><a  href="<?php echo base_url();?>product/edit/<?php echo $order->id?>" ><i class="icon-pencil7"></i> Deliver</a></li>
						
							
					</ul>
				</td>
			</tr>

		<?php endforeach; endif;?>
			
		</tbody>
	</table>
</div>
<!-- /highlighting rows and columns -->
