<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<meta charset="utf-8">
<meta name = "format-detection" content = "telephone=no" />
<link rel="icon" href="images/favicon.ico">
<link rel="shortcut icon" href="images/favicon.ico" />
<link rel="stylesheet" href="css/animate.css">
<link rel="stylesheet" href="css/grid.css">
<link rel="stylesheet" href="css/style.css">
<script src="js/jquery.js"></script>
<script src="js/jquery-migrate-1.2.1.js"></script>
<script src="js/owl.carousel.js"></script>
<!--[if (gt IE 9)|!(IE)]><!-->
<script src="js/wow/wow.js"></script>
<script>
  $(document).ready(function () {       
    if ($('html').hasClass('desktop')) {
      new WOW().init();
    }   
  });
</script>

<!--[if lt IE 8]>
 <div style=' clear: both; text-align:center; position: relative;'>
   <a href="http://windows.microsoft.com/en-US/internet-explorer/products/ie/home?ocid=ie6_countdown_bannercode">
     <img src="http://storage.ie6countdown.com/assets/100/images/banners/warning_bar_0000_us.jpg" border="0" height="42" width="820" alt="You are using an outdated browser. For a faster, safer browsing experience, upgrade for free today." />
   </a>
</div>
<![endif]-->
<!--[if lt IE 9]>
<script src="js/html5shiv.js"></script>
<link rel="stylesheet" media="screen" href="css/ie.css">
<![endif]-->
<script>
$(document).ready(function () {  
  $("#owl").owlCarousel({
    items : 1, //10 items above 1000px browser width
    itemsDesktop : [995,1], //5 items between 1000px and 901px
    itemsDesktopSmall : [767, 1], // betweem 900px and 601px
    itemsTablet: [700, 1], //2 items between 600 and 0
    itemsMobile : [479, 1], // itemsMobile disabled - inherit from itemsTablet option
    navigation : true,
    pagination :  false
  });
});  
</script>
</head>

<body class="page1" id="top">
  <div class="main">
<!--==============================
              header
=================================-->
<header class="">  
   <!--==============================
              Stuck menu
  =================================-->
 
  <section id="stuck_container">
    <div class="container">
      <div class="row">
        <div class="grid_10">
          <h1>
          <a href="index.html">
            <img src="images/logo.png" alt="Logo alt">
          </a>
        </h1>
          <div class="navigation">
            <nav>
              <ul class="sf-menu">
               <li class="current"><a href="index.jsp">Home</a></li>
               <li><a href="about.html">About</a></li>
               <li><a href="services.html">Services</a></li>
               <li><a href="signup.jsp">Sign In/Sign Up</a></li>
               <li><a href="contactindex.jsp">Contacts</a></li>
             </ul>
            </nav>
            <div class="clear"></div>
          </div>
        </div>
      </div>
    </div>
  </section>  
</header>  
<section class="slider wow zoomInDown">
    <div class="container">
      <div class="row">
        <div class="grid_12">
          <div id="owl">
            <div class="item">
              <img src="images/slide1.jpg" alt="">
              <div class="extra_wrapper">
                <h2>Feel protected <br>
during your vacation</h2>Dream.Explore.Discover
              </div>
            </div>
            <div class="item">
              <img src="images/slide2.jpg" alt="">
              <div class="extra_wrapper">
                <h2>Find the best travel<br>
insurance solution</h2>Vestibulum libero nisl porta vel scelerisque eget
              </div>
            </div>
            <div class="item">
              <img src="images/slide3.jpg" alt="">
              <div class="extra_wrapper">
                <h2>Be covered from <br>
unforeseen emergencies</h2>Sed ut perspiciatis unde omnis iste natus error sit volupta
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
</section>


<!--=====================
          Content
======================-->
<section id="content">
  <div class="container">
    <div class="row">
      <div class="grid_4 zoomInLeft wow">
        <div class="pad-1">
        <h3>family<span>Why us?</span></h3>
       Travelling with the family is more fun but is also fraught with risks. A small change in the weather or sampling the local cuisine that may not affect grown-ups at all but may have an effect on the child.
        <br>
        <a href="#" class="btn">More</a></div>
      </div>
      <div class="grid_4 wow bounceIn">
        <div class="pad-1">
        <h3>traveller<span>Who we are?</span></h3>
        We provides the best services in the market for you with the best prices which you want. Hurry up!!. So be ready to take benefits and enjoy your trip. Some enjoyable trips are waiting for you.
        <br>
        <a href="#" class="btn">More</a></div>
      </div>
      <div class="grid_4 zoomInRight wow">
        <div class="pad-1">
        <h3>insurance<span>What we do?</span></h3>
        Our company gives you more chances to become insured and to save your losses. We are providing you the best offers during medical emergencies and need cancellations. 
        <br>
        <a href="#" class="btn">More</a></div>
      </div>
      <div class="grid_12">
        <div class="sep-1"></div>
      </div>
      <div class="grid_4 wow fadeInLeft">
          <div class="block-3">
            <h3>Benefits of 
              insuring 
              with us</h3>
              <p>Our offers insurance plans designed to cover travelers worldwide. Plans can include valuable medical coverage, trip interruption, emergency travel services and more.</p>
              <ul class="list-2">
                <li><a href="#">Some of the cheapest prices around</a></li>
                <li><a href="#">Wide range of policies to choose from</a></li>
                <li><a href="#">Comprehensive levels of cover available</a></li>
                <li><a href="#">Winter sports included with annual policies</a></li>
                <li><a href="#">Over 50 sports covered automatically</a></li>
              </ul>
          </div>
      </div>
      <div class="grid_8 wow fadeInRight">
        <h3 class="head__1">Succeed with us!</h3>
        <div class="row">
          <div class="grid_2">
            <div class="block1">
              <img src="images/page1_img1.jpg" alt="">
              <div class="text1 color2"><a href="#">Feel safe</a></div>
              <div class="pad-2">Dream.Explore.Discover the world.</div>
            </div><a href="#" class="btn offset__1">More</a>
          </div>
          <div class="grid_2">
            <div class="block1">
              <img src="images/page1_img2.jpg" alt="">
              <div class="text1 color2"><a href="#">Begin your journey</a></div>
              <div class="pad-2">
             Be ready to explore the world.
              </div>
            </div><a href="#" class="btn offset__1">More</a>
          </div>
          <div class="grid_2">
            <div class="block1">
              <img src="images/page1_img3.jpg" alt="">
              <div class="text1 color2"><a href="#">Take the benefits</a></div>
              <div class="pad-2">We provide 24/7 assistance. 
              </div>
            </div><a href="#" class="btn offset__1">More</a>
          </div>
          <div class="grid_2">
            <div class="block1">
              <img src="images/page1_img4.jpg" alt="">
              <div class="text1 color2"><a href="#">Get insured</a></div>
              <div class="pad-2">Take travel insurance to cover yourself.
              </div>
            </div>
          </div>&nbsp;<a href="#" class="btn offset__1">More</a>
        </div>
       
      </div>
    </div>
  </div>
</section>
<!--==============================
              footer
=================================-->
<footer id="footer" class="wow fadeInUpBig">
  <div class="container">
    <div class="row">
      <div class="grid_12"> 
        <div class="copyright">
          <div class="row">
          <div class="grid_8 fright">
            <div class="socials">
              <a href="#" class="fa fa-twitter"></a>
              <a href="#" class="fa fa-facebook"></a>
              <a href="#" class="fa fa-google-plus"></a>
              <a href="#" class="fa fa-rss"></a>
              <a href="#" class="fa fa-linkedin"></a>
            </div>
          </div>
          <div class="grid_4">
         Travel insurance  &copy; <span id="copyright-year"></span> &bull; <a href="privacypolicy.html">Privacy Policy</a> <!--{%FOOTER_LINK} -->
          </div>
          </div>
      </div>
    </div>
  </div> 
  </div>   
</footer>
</div>
<script src="js/script.js"></script>
<script type="text/javascript">
 var _gaq = _gaq || [];
  _gaq.push(['_setAccount', 'UA-7078796-5']);
  _gaq.push(['_trackPageview']);
  (function() {
    var ga = document.createElement('script'); ga.type = 'text/javascript'; ga.async = true;
    ga.src = ('https:' == document.location.protocol ? 'https://ssl' : 'http://www') + '.google-analytics.com/ga.js';
    var s = document.getElementsByTagName('script')[0]; s.parentNode.insertBefore(ga, s);
  })();</script> 
</body><!-- Google Tag Manager --><noscript><iframe src="//www.googletagmanager.com/ns.html?id=GTM-P9FT69"height="0" width="0" style="display:none;visibility:hidden"></iframe></noscript><script>(function(w,d,s,l,i){w[l]=w[l]||[];w[l].push({'gtm.start': new Date().getTime(),event:'gtm.js'});var f=d.getElementsByTagName(s)[0],j=d.createElement(s),dl=l!='dataLayer'?'&l='+l:'';j.async=true;j.src='//www.googletagmanager.com/gtm.js?id='+i+dl;f.parentNode.insertBefore(j,f);})(window,document,'script','dataLayer','GTM-P9FT69');</script><!-- End Google Tag Manager -->

</html>