
<!-- Bordered panel body table -->
<div class="panel panel-flat">
	<div class="panel-heading">
		<h5 class="panel-title">News And Event Information</h5>
		<div class="heading-elements">
			
        	<a href="<?= base_url(); ?>news/create" class="btn btn-sm btn-info" title="Add Admin">Add News & Enent</a>
    	</div>
	</div>

	<div class="panel-body">
		
		<table class="table table-bordered table-hover datatable-highlight">
			<thead>
				<tr>
					<th style="width: 10px !important;">#</th>
					<th>Title</th>
					<th class="col-md-4 ">Date</th>
					<th style="width: 10px !important;">Action</th>
				</tr>
			</thead>
			<tbody id="tbody">
				<?php $i =1; if($news_events && isset($news_events)):
					foreach ($news_events as $event):
				?>
				<tr>
					<td><?php echo $i++; ?></td>
					
					<td><?php echo $event->title; ?></td>
					<?php 
	                 $date = new DateTime($event->date);
	                 $event_date = date_format($date, 'd F Y');
	                  
	                  ?>
					<td class="col-md-2"><?php echo $event_date; ?></td>
					
					<td>
						<ul class="icons-list">
							<li class="text-primary-600"><a  href="<?php echo base_url();?>event/edit/<?php echo $event->id ; ?>" ><i class="icon-pencil7"></i></a></li>
							
							<li class="text-danger-600"><a href="<?= base_url();?>event/delete/<?= $event->id; ?>" title="Delete event" onclick="return confirm('Are You Sure Went to Delete this event ?');"><i class="icon-trash"></i></a></li>
							
						</ul>
					</td>
				</tr>
			<?php endforeach; endif; ?>
			</tbody>
		</table>
	</div>
</div>
<!-- /bordered panel body table -->