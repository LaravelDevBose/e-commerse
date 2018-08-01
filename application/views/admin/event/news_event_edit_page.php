 <div class="row">
	<div class="col-md-10 col-md-offset-1">
		<!-- Basic layout-->
			
			<form action="<?= base_url();?>event/update/<?= $event->id ?>" method="POST" class="form-horizontal">
			<div class="panel panel-flat">
				<div class="panel-heading">
					<h5 class="panel-title">Edit a News & Event </h5>
				</div>

				<div class="panel-body">
					
	    			<div class="form-group">
						<label class="col-lg-3 control-label">Title:<span class="text-bold text-danger">*</span></label>
						<div class="col-lg-9">
							<input type="text" name="title" class="form-control" value="<?= $event->title; ?>" required placeholder="Event Title">
						</div>
					</div>
					<div class="form-group">
						<label class="col-lg-3 control-label">Date:<span class="text-bold text-danger">*</span></label>
						<div class="col-lg-9">
							<?php 
			                 $date = new DateTime($event->date);
			                 $event_date = date_format($date, 'Y-m-d');
			                  
			                  ?>
							<input type="text" name="date" id="date" class="form-control" value="<?= $event_date; ?>" required placeholder="News & Event Date">
						</div>
					</div>
					<div class="form-group">
						<label class="col-lg-3 control-label"> Description:</label>
						<div class="col-lg-9">
	                        <textarea  name="description" class="summernote-height" placeholder="News & Event Description......."><?= $event->description; ?></textarea>
	                    </div>
	    			</div>
					<div class="text-right">
						<button type="submit" class="btn btn-primary">Submit form <i class="icon-arrow-right14 position-right"></i></button>
					</div>
				</div>
			</div>
		<?= form_close(); ?>
		<!-- /basic layout -->
	</div>
</div>

