
            <?php if (isset($yandex_money_metrika_active) && $yandex_money_metrika_active){ ?>
                <?php echo $yandex_metrika; ?>
                <script type="text/javascript">
                    window.dataLayer = window.dataLayer || [];
                    function sendEcommerceAdd(id, quantity) {
                       $.ajax({
                            url: "<?= $yandex_money_product_info_url; ?>",
                            type: 'post',
                            data: 'id=' + id,
                            dataType: 'json',
                            success: function(json) {
                                json.quantity = quantity;
                                dataLayer.push({ecommerce: {add: {products: [json]}}});
                            }
                        });
                    }
                    $(window).on("load", function () {
                        var opencartCartAdd = cart.add;
                        cart.add = function (product_id, quantity) {
                            opencartCartAdd(product_id, quantity);
                            sendEcommerceAdd(product_id, typeof(quantity) !== 'undefined' ? parseInt(quantity) : 1);
                        };
                        $('#button-cart').on('click', function() {
                            sendEcommerceAdd($('#product input[name="product_id"]').val(), parseInt($('#product input[name="quantity"]').val()));
                        });
                    });
                </script>
            <?php } ?>
<footer>

  <div class="container">

	<div class="row">
			
      <div class="col-sm-3">
        <h5>Facebook</h5>

				<div class="fb-page" data-href="https://www.facebook.com/facebook" data-tabs="timeline" data-width="233" data-height="229" data-small-header="true" data-adapt-container-width="false" data-hide-cover="false" data-show-facepile="true"><blockquote cite="https://www.facebook.com/facebook" class="fb-xfbml-parse-ignore"><a href="https://www.facebook.com/facebook">Facebook</a></blockquote></div>
			</div>
			
      <div class="col-sm-3">
        <h5>Twitter</h5>
				<a class="twitter-timeline" data-width="233" data-height="229" data-theme="dark" href="https://twitter.com/TwitterDev?ref_src=twsrc%5Etfw">Tweets by TwitterDev</a> <script async src="https://platform.twitter.com/widgets.js" charset="utf-8"></script>			
			</div>

      <?php if ($informations) { ?>
      <div class="col-sm-3">
        <h5><?php echo $text_information; ?></h5>
        <ul class="list-unstyled">
          <?php foreach ($informations as $information) { ?>
          <li><a href="<?php echo $information['href']; ?>"><?php echo $information['title']; ?></a></li>
          <?php } ?>
        </ul>
      </div>
			<?php } ?>

			<div class="col-sm-3">
        <h5>Контакты</h5>
        <ul class="list-unstyled">
				<li><?php echo $store; ?></li>
				<li><?php echo $telephone; ?></li>
				<li><?php echo $address; ?></li>
				<li><?php echo $email; ?></li>

        </ul>
      </div>
    </div>
		
	</div>
	
	<div class="footer-hor">

	<div class="container">
	<ul class="list-unstyled list-hor">
		<li>© Copyright 2013-<?php echo date('Y');?> Css Author, All Rights Reserved.</li>

		<li><a href="">About US</a></li>

		<li><a href="<?php echo $return; ?>"><?php echo $text_return; ?></a></li>
		<li><a href="<?php echo $contact; ?>"><?php echo $text_contact; ?></a></li>
		</ul>
		<!-- 																			About Us         Delivery & Returns         Terms & Conditions         Contact Us -->
		</div>
		</div>
</footer>

<!--
OpenCart is open source software and you are free to remove the powered by OpenCart if you want, but its generally accepted practise to make a small donation.
Please donate via PayPal to donate@opencart.com
//-->

<!-- Theme created by Welford Media for OpenCart 2.0 www.welfordmedia.co.uk -->

</body></html>
