<?php if (count($currencies) > 1) { ?>
<div class="pull-left">
<form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data" id="form-currency">
  <div class="btn-group">
    <button class="btn btn-link dropdown-toggle" data-toggle="dropdown">
    
		<span><?php	echo $text_currency; ?></span>
		<span>
				<?php foreach ($currencies as $currency) if ($currency['code'] == $code) echo $currency['title']; ?>
		</span>

		</span> <i class="fa fa-caret-down"></i></button>
		
		<ul class="dropdown-menu">
      <?php foreach ($currencies as $currency) { ?>
      <li><button class="currency-select btn btn-link btn-block" type="button" name="<?php echo $currency['code']; ?>"><?php echo $currency['title']; ?></button></li>
      <?php } ?>
    </ul>
  </div>
  <input type="hidden" name="code" value="" />
  <input type="hidden" name="redirect" value="<?php echo $redirect; ?>" />
</form>
</div>
<?php } ?>
