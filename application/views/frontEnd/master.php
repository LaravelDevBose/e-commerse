<?php $this->load->view('frontEnd/includes/header_css_js');?>

<style type="text/css">
	.one_line{
		font-weight: 600;
		overflow: hidden;
	    text-overflow: ellipsis;
	    white-space: nowrap;
	}
</style>
<style type="text/css">
	.c_header{
		background-color: #1565c0;
		color: #fff;
		border-bottom: 3px solid #e44102;
	    padding: 10px 15px;
	    
	    border-top-left-radius: 3px;
	    border-top-right-radius: 3px;
	}

	

	.md-name{
		color: #00ad85;
		font-weight: bold;
	}
	.md-des{
		font-weight: 500;
		font-size: 13px;
		font-style: italic;
	}


</style>
<body>

	<!--header-->
		<?php $this->load->view('frontEnd/includes/navbar');?>
	<!--header-->

	<!--banner-->
		<?php if($title == 'Home Page'){ $this->load->view('frontEnd/includes/slider');}?>
	<!--banner-->
	<!-- meassge-->
		<?php $this->load->view('admin/includes/message');?>
	<!-- /meassge-->

			<!--content-->
		<div class="content">
			<?php
				if(isset($page_path)):
					$this->load->view($page_path);
				endif;
			?>
		</div>
		<!--content-->
		<!---footer--->
			<?php $this->load->view('frontEnd/includes/footer');?>
		<!---footer--->

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


</body>
</html>