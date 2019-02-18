<!DOCTYPE html>
<!--[if IE]><![endif]-->
<!--[if IE 8 ]><html dir="<?php echo $direction; ?>" lang="<?php echo $lang; ?>" class="ie8"><![endif]-->
<!--[if IE 9 ]><html dir="<?php echo $direction; ?>" lang="<?php echo $lang; ?>" class="ie9"><![endif]-->
<!--[if (gt IE 9)|!(IE)]><!-->
<html dir="<?php echo $direction; ?>" lang="<?php echo $lang; ?>">
<!--<![endif]-->
<head>
<meta charset="UTF-8" />
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title><?php echo $title; ?></title>
<base href="<?php echo $base; ?>" />
<?php if ($description) { ?>
<meta name="description" content="<?php echo $description; ?>" />
<?php } ?>
<?php if ($keywords) { ?>
<meta name="keywords" content= "<?php echo $keywords; ?>" />
<?php } ?>
<script src="catalog/view/javascript/jquery/jquery-2.1.1.min.js" type="text/javascript"></script>
<link href="catalog/view/javascript/bootstrap/css/bootstrap.min.css" rel="stylesheet" media="screen" />
<script src="catalog/view/javascript/bootstrap/js/bootstrap.min.js" type="text/javascript"></script>
<link href="catalog/view/javascript/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css" />
<link href="//fonts.googleapis.com/css?family=Open+Sans:400,400i,300,700" rel="stylesheet" type="text/css" />

<link href="catalog/view/theme/our_theme/stylesheet/stylesheet.css" rel="stylesheet">
<link href="catalog/view/theme/our_theme/stylesheet/fonts.css" rel="stylesheet">
      
<?php foreach ($styles as $style) { ?>
<link href="<?php echo $style['href']; ?>" type="text/css" rel="<?php echo $style['rel']; ?>" media="<?php echo $style['media']; ?>" />
<?php } ?>
<script src="catalog/view/theme/our_theme/js/common.js" type="text/javascript"></script>
<?php foreach ($links as $link) { ?>
<link href="<?php echo $link['href']; ?>" rel="<?php echo $link['rel']; ?>" />
<?php } ?>
<?php foreach ($scripts as $script) { ?>
<script src="<?php echo $script; ?>" type="text/javascript"></script>
<?php } ?> 
<?php foreach ($analytics as $analytic) { ?>
<?php echo $analytic; ?>
<?php } ?>

<!-- Put this script tag to the <head> of your page -->
<script type="text/javascript" src="https://vk.com/js/api/openapi.js?160"></script>

<script type="text/javascript">
  VK.init({apiId: 6864185, onlyWidgets: true});
</script>

<link href="catalog/view/theme/our_theme/stylesheet/style.css" rel="stylesheet">

</head>
<body class="<?php echo $class; ?>">

<div id="fb-root"></div>
<script async defer src="https://connect.facebook.net/ru_RU/sdk.js#xfbml=1&version=v3.2&appId=275409842979756&autoLogAppEvents=1"></script>

<nav id="top">
  <div class="container">
    <?php echo $language; ?>
    <?php echo $currency; ?>
    <div id="top-links" class="nav pull-right">
      <ul class="list-inline">
        <!-- <li class="dropdown"><a href="<?php echo $account; ?>" title="<?php echo $text_account; ?>" class="dropdown-toggle" data-toggle="dropdown"><span ><?php echo $text_account; ?></span></a></li> -->
        <li ><a href="<?php echo $account; ?>" title="<?php echo $text_account; ?>" ><span ><?php echo $text_account; ?></span></a></li>

        <li><a href="<?php echo $checkout; ?>" title="<?php echo $text_checkout; ?>"><span ><?php echo $text_checkout; ?></span></a></li>

            <?php if ($logged) { ?>
            <li><a href="<?php echo $account; ?>"><?php echo $text_account; ?></a></li>
            <li><a href="<?php echo $order; ?>"><?php echo $text_order; ?></a></li>
            <li><a href="<?php echo $transaction; ?>"><?php echo $text_transaction; ?></a></li>
            <li><a href="<?php echo $download; ?>"><?php echo $text_download; ?></a></li>
            <li><a href="<?php echo $logout; ?>"><?php echo $text_logout; ?></a></li>
            <?php } else { ?>
            <li><a href="<?php echo $register; ?>"><?php echo $text_register; ?></a></li>
            <li><a href="<?php echo $login; ?>"><?php echo $text_login; ?></a></li>
            <?php } ?>
        
      </ul>
    </div>

  </div>
</nav>
<header>
  <div class="container">
    <div class="row">
      <div class="col-sm-3">
        <div id="logo">
          <?php if ($logo) { ?>
          	<a href="<?php echo $home; ?>">
								<?php echo $name; ?>
							<!-- <img src="<?php echo $logo; ?>" title="<?php echo $name; ?>" alt="<?php echo $name; ?>" class="img-responsive" /> -->
						</a>
          <?php } else { ?>
          <h1><a href="<?php echo $home; ?>"><?php echo $name; ?></a></h1>
          <?php } ?>
        </div>
			</div>
			 
			<div class="col-sm-5">
					<?php if ($categories) { ?>
						<ul class="nav navbar-nav">
							<li><a href="<?php echo $home; ?>"><?php	echo $text_home;?></a></li>
							<?php foreach ($categories as $category) { ?>
								<li><a href="<?php echo $category['href']; ?>"><?php echo $category['name']; ?></a></li>
							<?php } ?>
							
							<li><a href="<?php echo $feedback; ?>">Обратная связь</a></li>

						</ul>
					<?php } ?>

			</div>
      <div class="col-sm-4">
				<div class="header-cart-wrap">
					<?php echo $search; ?>

					<a href="<?php echo $wishlist; ?>" id="wishlist-total" title="<?php echo $text_wishlist; ?>"><i class="fa fa-tags"></i> </a>

					<?php echo $cart; ?>
				</div>
      </div>
      
    </div>
  </div>
</header>
