<div class="ban-bottom-w3l">
	<div class="container">

		<div class="row">
			
			<div class="col-md-8 col-md-offset-2">
				<div class="panel panel-default">
				  	<div class="c_header">
				    	<h3 class="panel-title"><?= ucfirst($md_desig->value); ?> Message</h3>
				  	</div>
				  	<div class="panel-body">
				    	<div class="col-md-3" style="float: left;">
							
							<?php if($md_image && isset($md_image)){
								$image = base_url().$md_image->value; 
								if(!@getimagesize($image)){$image = base_url().'libs/upload_pic/admin_image/admin_defult.jpg' ; }
							}?>
							<img  class="img-fluid" src="<?= $image?>" alt="<?= $md_name->value; ?>" style="margin: 0 auto; height: 100px; width: 100px;">
						
						</div>
						<div class="col-md-9 col-sm-9" >
							<p class="md-name"><?= ucfirst($md_name->value); ?></p>
							<p class="md-des"><?= ucfirst($md_desig->value); ?></p>
							<p class="card-text" style="padding-top: 5px;"><?php if($md_message && isset($md_message)){echo $md_message->value; }?>
								
							</p>
						</div>
						
				  	</div>
				</div>
			</div>
		</div>

		<div class="clearfix"></div>
	</div>
</div>
