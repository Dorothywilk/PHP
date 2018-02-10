<?php namespace Php; ?>

<p>
	<button type="button" class="btn btn-outline-warning waves-effect" data-toggle="modal" data-target="#exampleModal">
		Liste des filtres en PHP
	</button>

	<!-- Modal -->
<div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel"
     aria-hidden="true">
	<div class="modal-dialog" role="document">
		<div class="modal-content">
			<div class="modal-header">
				<h5 class="modal-title" id="exampleModalLabel">Liste des filtres PHP (ID)</h5>
				<button type="button" class="close" data-dismiss="modal" aria-label="Close">
					<span aria-hidden="true">&times;</span>
				</button>
			</div>
			<div class="modal-body">
				<?php
				$t = filter_list();
				foreach ( $t as $f ) {
					echo $f . ' (' . filter_id( $f ) . ')<br>';
				}
				?>
			</div>
			<div class="modal-footer">
				<button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
			</div>
		</div>
	</div>
</div>
</p>
