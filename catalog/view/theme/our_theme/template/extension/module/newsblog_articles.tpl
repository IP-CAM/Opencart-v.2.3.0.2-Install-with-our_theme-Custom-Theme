<?php if ($heading_title) { ?>
<h3><?php echo $heading_title; ?></h3>
<?php } ?>
<?php if ($html) { ?>
<?php echo $html; ?>
<?php } ?>

<div class="row">
  <?php foreach ($articles as $article) { ?>
  <div class="product-layout col-lg-3 col-md-3 col-sm-6 col-xs-12">
    <div class="product-thumb transition">
      <?php if ($article['thumb']) { ?>
      <div class="image"><a href="<?php echo $article['href']; ?>"><img src="<?php echo $article['thumb']; ?>" alt="<?php echo $article['name']; ?>" title="<?php echo $article['name']; ?>" class="img-responsive" /></a></div>
      <?php } ?>
      <div class="caption">
        <h4><a href="<?php echo $article['href']; ?>"><?php echo $article['name']; ?></a></h4>
        <?php echo $article['preview']; ?>
      </div>
      <div class="button-group">
	  	</div> 
    </div>
  </div>
  <?php } ?>
</div>

<?php if ($link_to_category) { ?>
<a href="<?php echo $link_to_category; ?>"><?php echo $text_more; ?> <?php echo $heading_title; ?></a>
<?php } ?>
