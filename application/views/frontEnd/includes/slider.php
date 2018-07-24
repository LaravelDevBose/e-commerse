<div class="banner-w3">
	<div class="demo-1">            
		<div id="example1" class="core-slider core-slider__carousel example_1">
			<div class="core-slider_viewport">
				<div class="core-slider_list">
					<?php
					 if($sliders):
						foreach($sliders as $slider):
							$image = base_url().$slider->image;
							if(@getimagesize($image)):
					 ?>
								<div class="core-slider_item">
									<img src="<?= $image;?>" style="width: 100%; " class="img-responsive" alt="Slider imgae">
								</div>
					 <?php endif; endforeach; endif;?>
				 </div>
			</div>
			<div class="core-slider_nav">
				<div class="core-slider_arrow core-slider_arrow__right"></div>
				<div class="core-slider_arrow core-slider_arrow__left"></div>
			</div>
			<div class="core-slider_control-nav"></div>
		</div>
	</div>
	<link href="<?= base_url();?>libs/frontEnd/css/coreSlider.css" rel="stylesheet" type="text/css">
	<script src="<?= base_url();?>libs/frontEnd/js/coreSlider.js"></script>
	<script>
	$('#example1').coreSlider({
	  pauseOnHover: false,
	  interval: 3000,
	  controlNavEnabled: true
	});

	</script>

</div>	