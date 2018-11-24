<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Contacts</title>
<meta charset="utf-8">
<meta name = "format-detection" content = "telephone=no" />



<link rel="icon" href="images/favicon.ico">
<link rel="shortcut icon" href="images/favicon.ico" />
<link rel="stylesheet" href="css/contact-form.css">
<link rel="stylesheet" href="css/animate.css">
<link rel="stylesheet" href="css/grid.css">
<link rel="stylesheet" href="css/style.css">
<script src="js/jquery.js"></script>
<script src="js/jquery-migrate-1.2.1.js"></script>
<script src="js/TMForm.js"></script>
<script src="js/modal.js"></script>

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
</head>

<body>
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
<!--=====================
          Content
======================-->
<section id="content">
  <div class="container">
    <div class="row">
      <div class="grid_8">
        <h3>stay in touch</h3>
        <div class="map">
          <figure class="">
            <iframe src="https://www.google.com/maps/embed?pb=!1m14!1m12!1m3!1d24214.807650104907!2d-73.94846048422478!3d40.65521573400813!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!5e0!3m2!1sen!2sus!4v1395650655094" style="border:0"></iframe>
          </figure>
          <address class="address1">
            <dl>
              <dt class="text1 color2">
                  ASV Sun Tech Park,<br>Thoripakkam,chennai.
              </dt>
              <dd><span>Freephone:</span>+1 800 559 6580</dd>
              <dd><span>Telephone:</span>+1 959 603 6035</dd>
              <dd><span>FAX:</span>+1 504 889 9898</dd>
              <dd>E-mail: <a href="#" class=" color1">mail@dreamdestination.org</a></dd>
            </dl>
          </address>
          <address class="address1">
            <dl>
              <dt class="text1 color2">
                  9863 - 9867 Mill Road,<br>Cambridge, MG09 99HT
              </dt>
              <dd><span>Freephone:</span>+1 800 559 6580</dd>
              <dd><span>Telephone:</span>+1 959 603 6035</dd>
              <dd><span>FAX:</span>+1 504 889 9898</dd>
              <dd>E-mail: <a href="#" class=" color1">mail@dreamdestination.org</a></dd>
            </dl>
          </address>
        </div>
      </div>
      <div class="grid_4">
        <h3>contact form</h3>
              <form action="ContactAdd" id="contact-form" method="post">
                  <div class="contact-form-loader"></div>
                  <fieldset>
                    <label class="name">
                      <input type="text" name="firstname" placeholder="Name:" value="" data-constraints="@Required @JustLetters"  />
                      <span class="empty-message">*This field is required.</span>
                      <span class="error-message">*This is not a valid name.</span>
                    </label>
                   
                    <label class="email">
                      <input type="text" name="email" placeholder="E-mail:" value="" data-constraints="@Required @Email" />
                      <span class="empty-message">*This field is required.</span>
                      <span class="error-message">*This is not a valid email.</span>
                    </label>
                    <label class="phone">
                      <input type="text" name="phone" placeholder="Phone:" value="" data-constraints="@Required @JustNumbers" />
                      <span class="empty-message">*This field is required.</span>
                      <span class="error-message">*This is not a valid phone.</span>
                    </label>
                   
                    <label class="message">
                      <textarea name="message" placeholder="Message*:" data-constraints='@Required @Length(min=20,max=999999)'></textarea>
                      <span class="empty-message">*This field is required.</span>
                      <span class="error-message">*The message is too short.</span>
                    </label>
                    <div>
                      <input type="reset" class="btn" value="Clear">
                      <input type="submit" class="btn" value="Send">
                    </div>
                  </fieldset> 
                  <div class="modal fade response-message">
                    <div class="modal-dialog">
                      <div class="modal-content">
                        <div class="modal-header">
                         <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                          <h4 class="modal-title">Modal title</h4>
                        </div>
                        <div class="modal-body">
                          You message has been sent! We will be in touch soon.
                        </div>      
                      </div>
                    </div>
                  </div>
                </form>   
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
          Travel insurance  &copy; <span id="copyright-year"></span> &bull; <a href="index-6.html">Privacy Policy</a> 
          </div>
          </div>
      </div>
    </div>
  </div> 
  </div>   
</footer>
</div>
<script src="js/script.js"></script>
</body><!-- Google Tag Manager --><noscript><iframe src="//www.googletagmanager.com/ns.html?id=GTM-P9FT69"height="0" width="0" style="display:none;visibility:hidden"></iframe></noscript><script>(function(w,d,s,l,i){w[l]=w[l]||[];w[l].push({'gtm.start': new Date().getTime(),event:'gtm.js'});var f=d.getElementsByTagName(s)[0],j=d.createElement(s),dl=l!='dataLayer'?'&l='+l:'';j.async=true;j.src='//www.googletagmanager.com/gtm.js?id='+i+dl;f.parentNode.insertBefore(j,f);})(window,document,'script','dataLayer','GTM-P9FT69');</script><!-- End Google Tag Manager -->

</html>