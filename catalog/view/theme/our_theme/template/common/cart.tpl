<div id="cart" class="btn-group btn-block">
  <button type="button" data-toggle="modal" data-target="#modalCart" data-loading-text="<?php echo $text_loading; ?>" class="btn btn-inverse btn-block btn-lg dropdown-toggle"><i class="fa fa-shopping-cart"></i> <span id="cart-total"></span></button>


<!-- Modal -->
<div class="modal fade" id="modalCart" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
        <h4 class="modal-title" id="myModalLabel"><?php echo $text_title; ?></h4>
      </div>
      <div class="modal-body">
				

				<?php if ($products || $vouchers) { ?>
					<ul class="modal-list">
						<li>
						<table class="table table-striped">
							<?php foreach ($products as $product) { ?>
							<tr>
								<td class="text-center"><?php if ($product['thumb']) { ?>
									<a href="<?php echo $product['href']; ?>"><img src="<?php echo $product['thumb']; ?>" alt="<?php echo $product['name']; ?>" title="<?php echo $product['name']; ?>" class="img-thumbnail" /></a>
									<?php } ?></td>
								<td class="text-left"><a href="<?php echo $product['href']; ?>"><?php echo $product['name']; ?></a>
									<?php if ($product['option']) { ?>
									<?php foreach ($product['option'] as $option) { ?>
									<br />
									- <small><?php echo $option['name']; ?> <?php echo $option['value']; ?></small>
									<?php } ?>
									<?php } ?>
									<?php if ($product['recurring']) { ?>
									<br />
									- <small><?php echo $text_recurring; ?> <?php echo $product['recurring']; ?></small>
									<?php } ?></td>
								<td class="text-right">x <?php echo $product['quantity']; ?></td>
								<td class="text-right"><?php echo $product['total']; ?></td>
								<td class="text-center"><button type="button" onclick="cart.remove('<?php echo $product['cart_id']; ?>');" title="<?php echo $button_remove; ?>" class="btn btn-danger btn-xs"><i class="fa fa-times"></i></button></td>
							</tr>
							<?php } ?>
						</table>
						</li>
						<li>
							<div>
								<table class="table table-bordered">
									<?php foreach ($totals as $total) { ?>
									<tr>
										<td class="text-right"><strong><?php echo $total['title']; ?></strong></td>
										<td class="text-right"><?php echo $total['text']; ?></td>
									</tr>
									<?php } ?>
								</table>
								<p class="text-right"><a href="<?php echo $cart; ?>"><strong><i class="fa fa-shopping-cart"></i> <?php echo $text_cart; ?></strong></a>&nbsp;&nbsp;&nbsp;<a href="<?php echo $checkout; ?>"><strong><i class="fa fa-share"></i> <?php echo $text_checkout; ?></strong></a></p>
							</div>
						</li>
						<?php } else { ?>
						<li>
							<p class="text-center"><?php echo $text_empty; ?></p>
						</li>
					</ul>
				<?php } ?>



      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-default" data-dismiss="modal"><?php echo $text_close;?></button>
        <a href="<?php echo $cart;?>" class="btn btn-primary"><?php echo $text_cart;?></a>
      </div>
    </div>
  </div>
</div>


</div>
<?php echo $text_items; ?>
