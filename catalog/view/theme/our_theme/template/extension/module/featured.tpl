<h3><?php echo $heading_title; ?></h3>
<div class="row">
	<?php foreach ($products as $product) { ?>
		
    <?php if ( $column_right) { ?>
			<?php $class = 'product-layout col-lg-4 col-md-4 col-sm-6 col-xs-12'; ?>
			<?php } else { ?>
			<?php $class = 'product-layout col-lg-3 col-md-3 col-sm-6 col-xs-12'; ?>
			<?php } ?>

  <div class="<?php echo $class;?>">
    <div class="product-thumb transition">
      <div class="image"><a href="<?php echo $product['href']; ?>"><img src="<?php echo $product['thumb']; ?>" alt="<?php echo $product['name']; ?>" title="<?php echo $product['name']; ?>" class="img-responsive" /></a></div>
      <div class="caption">
				<h4><a href="<?php echo $product['href']; ?>"><?php echo $product['name']; ?></a></h4>
				
        <?php if ($product['price']) { ?>
        <p class="price">
          <?php if (!$product['special']) { ?>
          <?php echo $product['price']; ?>
          <?php } else { ?>
          <span class="price-new"><?php echo $product['special']; ?></span> <span class="price-old"><?php echo $product['price']; ?></span>
          <?php } ?>
        </p>
        <?php } ?>
			</div>
			
			<?php if ($product['special']) { ?>
				<div class="flag-sale">
				<?php echo "SALE";?>
				</div>
			<?php } ?>

      <div class="button-group">
        <button type="button" onclick="cart.add('<?php echo $product['product_id']; ?>');"><i class="fa fa-shopping-cart"></i> <span class="hidden-xs hidden-sm hidden-md"></span></button>
      </div>
    </div>
  </div>
  <?php } ?>
</div>
