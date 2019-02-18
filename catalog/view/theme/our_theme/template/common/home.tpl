<?php echo $header; ?>
<?php	echo $content_top; ?>
<div class="container">
  <div class="row"><?php echo $column_left; ?>
    <?php if ($column_left && $column_right) { ?>
    <?php $class = 'col-sm-6'; ?>
    <?php } elseif ($column_left || $column_right) { ?>
    <?php $class = 'col-sm-9'; ?>
    <?php } else { ?>
    <?php $class = 'col-sm-12'; ?>
    <?php } ?>
    <div id="content" class="<?php echo $class; ?>"><?php echo $content_bottom; ?>
		</div>
    <?php echo $column_right; ?></div>
</div>

<div class="prefooter" id="prefooter">
	<div class="row">
					<div class="col-sm-6"><i class="fa fa-truck fa-stack" aria-hidden="true"></i>Free shipping on orders over $100</div>
					<div class="col-sm-6"><i class="fa fa-phone fa-stack" aria-hidden="true"></i>Call us! toLl free 409-8888-0099</div>
	</div>

</div>


<?php echo $footer; ?>
