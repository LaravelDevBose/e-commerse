
<!DOCTYPE HTML>
<html>
<head>
<title>Khan Traders</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="" />
<link href='//fonts.googleapis.com/css?family=Cagliostro' rel='stylesheet' type='text/css'>
<link href='//fonts.googleapis.com/css?family=Open+Sans:400,800italic,800,700italic,700,600italic,600,400italic,300italic,300' rel='stylesheet' type='text/css'>

<!--css-->
<link href="<?= base_url();?>libs/frontEnd/css/bootstrap.css" rel="stylesheet" type="text/css" media="all"/>
<link href="<?= base_url();?>libs/frontEnd/css/style.css" rel="stylesheet" type="text/css" media="all" />
<link href="<?= base_url();?>libs/frontEnd/css/font-awesome.css" rel="stylesheet">
<link rel="stylesheet" href="<?= base_url();?>libs/frontEnd/css/jstarbox.css" type="text/css" media="screen" charset="utf-8" />
<!--css-->

<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<script src="<?= base_url();?>libs/frontEnd/js/jquery.min.js"></script>
  <script src="<?php echo base_url();?>libs/BackEnd/sweetAlert_script/sweetalert.min.js"></script>
<!--search jQuery-->
	<script src="<?= base_url();?>libs/frontEnd/js/main.js"></script>
<!--search jQuery-->
<script src="<?= base_url();?>libs/frontEnd/js/responsiveslides.min.js"></script>
 <script>
    $(function () {
      $("#slider").responsiveSlides({
      	auto: true,
      	nav: true,
      	speed: 500,
        namespace: "callbacks",
        pager: true,
      });
    });
 </script>
 <!--mycart-->
<script type="text/javascript" src="<?= base_url();?>libs/frontEnd/js/bootstrap-3.1.1.min.js"></script>
 <!-- cart -->
<script src="<?= base_url();?>libs/frontEnd/js/simpleCart.min.js"></script>
<!-- cart -->
  <script defer src="<?= base_url();?>libs/frontEnd/js/jquery.flexslider.js"></script>
<link rel="stylesheet" href="<?= base_url();?>libs/frontEnd/css/flexslider.css" type="text/css" media="screen" />
<script src="<?= base_url();?>libs/frontEnd/js/imagezoom.js"></script>
<script>
// Can also be used with $(document).ready()
$(window).load(function() {
  $('.flexslider').flexslider({
    animation: "slide",
    controlNav: "thumbnails"
  });
});
</script>



  <!--start-rate-->
<script src="<?= base_url();?>libs/frontEnd/js/jstarbox.js"></script>
	
<script type="text/javascript">
	jQuery(function() {
		jQuery('.starbox').each(function() {
			var starbox = jQuery(this);
				starbox.starbox({
				average: starbox.attr('data-start-value'),
				changeable: starbox.hasClass('unchangeable') ? false : starbox.hasClass('clickonce') ? 'once' : true,
				ghosting: starbox.hasClass('ghosting'),
				autoUpdateAverage: starbox.hasClass('autoupdate'),
				buttons: starbox.hasClass('smooth') ? false : starbox.attr('data-button-count') || 5,
				stars: starbox.attr('data-star-count') || 5
				}).bind('starbox-value-changed', function(event, value) {
				if(starbox.hasClass('random')) {
				var val = Math.random();
				starbox.next().text(' '+val);
				return val;
				} 
			})
		});
	});
</script>
<!--//End-rate-->



<link href="<?= base_url();?>libs/frontEnd/css/owl.carousel.css" rel="stylesheet">
<script src="<?= base_url();?>libs/frontEnd/js/owl.carousel.js"></script>
<script>
	$(document).ready(function() {
	$("#owl-demo").owlCarousel({
		items : 1,
		lazyLoad : true,
		autoPlay : true,
		navigation : false,
		navigationText :  false,
		pagination : true,
	});
	});
</script>


<!-- For Fancy Box -->
<script type="text/javascript" src="<?php echo base_url()?>libs/BackEnd/fancyBox/js/jquery.fancybox.js?v=2.1.5"></script>

<link rel="stylesheet" type="text/css" href="<?php echo base_url()?>libs/BackEnd/fancyBox/css/jquery.fancybox.css?v=2.1.5" media="screen" />

<script type="text/javascript">

        $(document).ready(function() {

            $('.fancybox').fancybox({

            padding: 0,

                openEffect : 'elastic',

                openSpeed  : 150,

                closeEffect : 'elastic',

                closeSpeed  : 150,

                maxWidth    : "60%",

                autoSize    : true,

                autoScale   : true,

                fitToView   : true,

                helpers : {

                    title : {

                        type : 'inside'

                    },

                    overlay : {

                        css : {

                            'background' : 'rgba(0,0,0,0.3)'

                        }

                    }

                }       

            });

            $('.fancyboxview').fancybox({

            padding: 0,

                openEffect : 'elastic',

                openSpeed  : 150,



                closeEffect : 'elastic',

                closeSpeed  : 150,

                maxWidth    : "95%",

                autoSize    : true,

                autoScale   : true,

                fitToView   : true,



                helpers : {

                    title : {

                        type : 'inside'

                    },

                    overlay : {

                        css : {

                            'background' : 'rgba(0,0,0,0.3)'

                        }

                    }

                }       

            });

        });    

</script>
<link href="<?= base_url();?>libs/frontEnd/simplePagination.css" rel="stylesheet">
<script src="<?= base_url();?>libs/frontEnd/jquery.simplePagination.js"></script>
	
</head>