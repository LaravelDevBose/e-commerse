
<!-- Bordered panel body table -->
<div class="panel panel-flat">
	<div class="panel-heading">
		<h5 class="panel-title">Regard Page</h5>
		
	</div>
	<hr>
	<div class="panel-body">
		<form action="<?= base_url();?>rgards/update" method="POST">
			<div class="form-group">
				<div class="col-lg-8 col-md-offset-2">
                    <textarea  name="regard" class="summernote-height" style="height: 400px!important;" placeholder="Regard Note......."><?php if($regard && isset($regard)){echo $regard->value; }?></textarea>
                </div>

			</div>
			
		 	<div class="col-lg-8 col-md-offset-2" style="margin-top: 20px;">
				<button type="submit" class="btn btn-info btn-block">Update <i class="icon-arrow-right14 position-right"></i></button>
			</div>
		</form>
	</div>
</div>
<!-- /bordered panel body table -->