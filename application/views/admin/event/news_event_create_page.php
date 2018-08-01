 <div class="row">
	<div class="col-md-10 col-md-offset-1">
		<!-- Basic layout-->
	
			<form action="<?php echo base_url(); ?>event/store" method="post" class="form-horizontal">
			<div class="panel panel-flat">
				<div class="panel-heading">
					<h5 class="panel-title">Create a News & Event </h5>
				</div>

				<div class="panel-body">
					
	    			<div class="form-group">
						<label class="col-lg-3 control-label">Title:<span class="text-bold text-danger">*</span></label>
						<div class="col-lg-9">
							<input type="text" name="title" class="form-control" required placeholder="Event Title">
						</div>
					</div>
					<div class="form-group">
						<label class="col-lg-3 control-label">Date:<span class="text-bold text-danger">*</span></label>
						<div class="col-lg-9">
							<input type="date" name="date" class="form-control" required placeholder="News & Event Date">
						</div>
					</div>
					<div class="form-group">
						<label class="col-lg-3 control-label"> Description: <span class="text-bold text-danger">*</span></label>
						<div class="col-lg-9">
	                        <textarea  name="description" class="summernote" placeholder="News & Event Description......."></textarea>
	                    </div>
	    			</div>
					<div class="text-right">
						<button type="submit" class="btn btn-primary">Submit form <i class="icon-arrow-right14 position-right"></i></button>
					</div>
				</div>
			</div>
		</form>
		<!-- /basic layout -->
	</div>
</div>

