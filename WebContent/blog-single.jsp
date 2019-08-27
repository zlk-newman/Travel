<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html class="no-js" lang="zxx">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <meta name="description" content="TravelStar - Tour, Travel, Travel Agency Template">
    <meta name="keywords" content="Tour, Travel, Travel Agency Template">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>TravelStar - Tour, Travel & Travel Agency Template</title>
    <!-- Google Fonts Includes -->
    <link href="https://fonts.googleapis.com/css?family=Poppins:300,400,500,600,700" rel="stylesheet">
    <!-- Favi icon -->
    <link rel="shortcut icon" type="image/x-icon" href="images/favicon.ico">
    <!-- bootstrap v3.3.6 css -->
    <link rel="stylesheet" href="css/assets/bootstrap.min.css">
    <!-- animate css -->
    <link rel="stylesheet" href="css/assets/animate.css">
    <!-- Button Hover animate css -->
    <link rel="stylesheet" href="css/assets/hover-min.css">
    <!-- jquery-ui.min css -->
    <link rel="stylesheet" href="css/assets/jquery-ui.min.css">
    <!-- meanmenu css -->
    <link rel="stylesheet" href="css/assets/meanmenu.min.css">
    <!-- owl.carousel css -->
    <link rel="stylesheet" href="css/assets/owl.carousel.min.css">
    <!-- slick css -->
    <link rel="stylesheet" href="css/assets/slick.css">
    <!-- chosen.min-->
    <link rel="stylesheet" href="css/assets/jquery-customselect.css">
    <!-- font-awesome css -->
    <link rel="stylesheet" href="css/assets/font-awesome.min.css">
    <!-- magnific Css -->
    <link rel="stylesheet" href="css/assets/magnific-popup.css">
    <!-- Revolution Slider -->
    <link rel="stylesheet" href="css/assets/revolution/layers.css">
    <link rel="stylesheet" href="css/assets/revolution/navigation.css">
    <link rel="stylesheet" href="css/assets/revolution/settings.css">
    <!-- Preloader css -->
    <link rel="stylesheet" href="css/assets/preloader.css"> 
    <!-- custome css -->
    <link rel="stylesheet" href="css/style.css">
    <!-- responsive css -->
    <link rel="stylesheet" href="css/responsive.css">
    <link rel="stylesheet" href="css/master.css">
    <!-- modernizr css -->
    <script src="js/vendor/modernizr-2.8.3.min.js"></script>
</head>
<div id="loader-wrapper">
    <div id="loader"></div>
    <div class="loader-section section-left"></div>
    <div class="loader-section section-right"></div>
</div>
<body>
<!-- header area start here -->
<header>
	<div class="header_top_area">
		<div class="container">
			<div class="row">
				<div class="col-12 col-xs-12 col-sm-12 col-md-12 col-lg-12">
					<div class="contact_wrapper_top">
						<ul class="header_top_contact">
							<li><i class="fa fa-phone" aria-hidden="true"></i>+123-456-7890</li>
							<li><i class="fa fa-envelope-o" aria-hidden="true"></i>info@yourcompany.com</li>
						</ul>
						<div class="book-btn">
							<a href="MessageServlet?type=book"><%@ include file="filter.jsp" %></a>
						</div>
						<div class="book-btn">
							 <a href="LoginServlet?typr=logout">退出</a> 
						</div>
					</div>
				</div>
			</div>
		</div>
	</div> <!-- header top end -->

	<div class="main_nav">
		<div class="container">
			<div class="row">
				<div class="col-md-2 col-sm-2 col-xs-12 tap-v-responsive">
					<div class="logo-area">
						<a href="index2.jsp"><img src="images/logo.png" alt="">
						</a>
					</div>
				</div>
				<div class="col-md-10">
					<nav>
						<ul class="main-menu text-right">
							<li class="active"><a href="index2.jsp">首页</a>
								<ul class="dropdown">
									<li><a href="index2.jsp">主页</a></li>
									<!-- <li><a href="index-2.jsp">主页 2</a></li>
									<li><a href="index-3.jsp">主页 3</a></li>
									<li><a href="index-4.jsp">主页 4</a></li> -->
								</ul>
							</li>
							<li><a href="DisplayOneServlet">套餐</a>
								<ul class="dropdown">
									<li><a href="DisplayOneServlet">套餐列表</a></li>
									<!-- <li><a href="package-version-two.jsp">套餐二</a></li>
									<li><a href="single-package.jsp">套餐预订</a></li> -->
								</ul>
							</li>
							<li><a href="PackageServlet?type=lo">旅馆</a>
								<ul class="dropdown">
									<li><a href="PackageServlet?type=lo">旅馆列表</a></li>
									<!-- <li><a href="hotel-version-two.jsp">旅馆二</a></li>
									<li><a href="hotel-details.jsp">旅馆预订</a></li> -->
								</ul>
							</li>
							<!-- <li><a href="#">航班</a></li> -->
							<li><a href="blog-version-one.jsp">博客</a>
								<ul class="dropdown">
									<li><a href="blog-version-one.jsp">博客首页</a></li>
									<li><a href="blog-version-two.jsp">博客展示</a></li>
									<li><a href="blog-single.jsp">博客提交</a></li>
								</ul>
							</li>
							<li><a href="#">全部页面</a>
								<ul class="dropdown">
									<li><a href="DisplayOneServlet">套餐列表</a></li>
									<!-- <li><a href="package-version-two.jsp">套餐二</a></li>
									<li><a href="single-package.jsp">套餐预订</a></li> -->
									<li><a href="PackageServlet?type=lo">旅馆列表</a></li>
									<!-- <li><a href="hotel-version-two.jsp">旅馆一</a></li> -->
									<li><a href="blog-version-one.jsp">博客首页</a></li>
									<li><a href="blog-version-two.jsp">博客展示 </a></li>
									<li><a href="blog-single.jsp">个人博客</a></li>
									<li><a href="contact.jsp">联系我们</a></li>
								</ul>
							</li>
							<li><a href="contact.jsp">联系我们</a></li>
						</ul>
					</nav>
				</div> <!-- main menu end here -->
			</div>
		</div>
	</div> <!-- header-bottom area end here -->
</header> <!-- header area end here -->

    <!-- blog breadcrumb version one strat here -->
    <section class="breadcrumb-blog-version-one">
        <div class="single-bredcurms" style="background-image:url('images/bercums/Blogs-Version-01.jpg');">
           <div class="container">
               <div class="row">
                    <div class="col-sm-12">
                        <div class="bredcrums-content">
                            <h2>旅社博客</h2>
                            <ul>
                                <li><a href="index.html">首页</a></li>
                                <li class="active"><a href="blog-single.jsp">博客提交</a></li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section><!-- blog breadcrumb version one end here -->

    <!-- Start blog -->
    <section id="blog" class="section-paddings single section page blog_wrapper">
        <div class="container">
            <div class="row">
                <div class="col-md-8 col-sm-12 col-xs-12">
                        <!-- Single blog -->
                        <div class="single-blog">
                            <img src="images/blog/1.jpg" alt="#">
                            <div class="blog-content">
                                <h2>Dubai – All Stunning Places</h2>
                                <div class="meta">
                                    <span><i class="fa fa-user"></i>Admin</span>
                                    <span><i class="fa fa-calender"></i>June 19</span>
                                    <span><i class="fa fa-comments"></i>65 Comments</span>
                                </div>
                                <p>Lorem ipsum dolor sit amet, mel ut mazim fuisset. Eu vel epicurei percipit, lobortis dignissim efficiendi te sit. Cu munere singulis instructior per, ne qui purto eius congue. Ut graece detracto duo, an usu quis mazim. Ea vero nobis graeci mel, dolore facilis concludaturque eu sea, perpetua assentior eu vim.</p>
                                <p><strong>Ma munere singulis instructior per, ne qui purto eius congue</strong>
                                </p>
                                <p>Lorem ipsum dolor sit amet, mel ut mazim fuisset. Eu vel epicurei percipit, lobortis dignissim efficiendi te sit. Cu munere singulis instructior per, ne qui purto eius congue. Ut graece detracto duo, an usu quis mazim. Ea vero nobis graeci mel, dolore facilis concludaturque eu sea, perpetua assentior eu vim.</p>
                                <p>Lorem ipsum dolor sit amet, mel ut mazim fuisset. Eu vel epicurei percipit, lobortis dignissim efficiendi te sit. Cu munere singulis instructior per, ne qui purto eius congue. Ut graece detracto duo, an usu quis mazim. Ea vero nobis graeci mel, dolore facilis concludaturque eu sea, perpetua assentior eu vim.</p>
                                <p>Lorem ipsum dolor sit amet, mel ut mazim fuisset. Eu vel epicurei percipit, lobortis dignissim efficiendi te sit. Cu munere singulis instructior per, ne qui purto eius congue. Ut graece detracto duo, an usu quis mazim. Ea vero nobis graeci mel, dolore facilis concludaturque eu sea, perpetua assentior eu vim.</p>
                            </div>
                        </div><!--/ End Single blog -->

                        <!-- Blog Comment Wrappper-->
                        <div class="commnet-wrapper">
                            <div class="items_title">
                                <h3 class="title">2 Commnets</h3>
                            </div>
                             <div class="comment-list-items">
                                <div class="comment-list-wrapper">
                                    <div class="comment-list">
                                        <div class="commnet_img">
                                            <img src="images/blog/comments1.jpg" alt="member img" class="img-fluid">
                                        </div>
                                        <div class="comment-text">
                                            <div class="author_info"> 
                                                <div class="author_name">
                                                    <a href="" class="">Adam Smith</a> 
                                                    <span>20 July 2019 at 10.45 AM</span>
                                                 </div>
                                                 <div class="reply-comment">
                                                    <a href="#" title=""> <i class="flaticon-reply-arrow"></i> Reply</a>
                                                </div> 
                                            </div>     
                                            <p>You need to be sure there isn't anything embarrassing hidden in the repeat predefined chunks as nessing hidden in the repeat predefined chunks as necessary, making this the first true generator on the Internet.</p>
                                        </div>
                                    </div>

                                    <div class="comment-list reply_comment_text">
                                        <div class="commnet_img">
                                           <img src="images/blog/comments2.jpg" alt="member img" class="img-fluid">
                                        </div>
                                        <div class="comment-text">
                                            <div class="author_info"> 
                                                <div class="author_name">
                                                    <a href="" class="">Jonson Park</a> 
                                                    <span>20 July 2019 at 10.45 AM</span>
                                                 </div>
                                                 <div class="reply-comment">
                                                    <a href="#" title=""> <i class="flaticon-reply-arrow"></i> Reply</a>
                                                </div> 
                                            </div>     
                                            <p>You need to be sure there isn't anything embarrassing hidden in the repe essary, making this the first true generator on the Internet.</p>
                                        </div>
                                    </div>
                                </div>
                                <div class="comment-list-wrapper">
                                    <div class="comment-list">
                                        <div class="commnet_img">
                                            <img src="images/blog/comments1.jpg" alt="member img" class="img-fluid">
                                        </div>
                                        <div class="comment-text">
                                            <div class="author_info"> 
                                                <div class="author_name">
                                                    <a href="" class="">Jonathon Smith</a> 
                                                    <span>20 July 2019 at 10.45 AM</span>
                                                 </div>
                                                 <div class="reply-comment">
                                                    <a href="#" title=""> <i class="flaticon-reply-arrow"></i> Reply</a>
                                                </div> 
                                            </div>     
                                            <p>You need to be sure there isn't anything embarrassing hidden in the repeat predefined chunks as nessing hidden in the repeat predefined chunks as necessary, making this the first true generator on the Internet.</p>
                                        </div>                               
                                    </div>
                                </div>
                            </div> 
                            <!--  Leave Commnent Wrapper -->
                            <div class="leave_comment_wrapper">
                                <div class="items_title">
                                    <h3 class="title">Leave A Comment</h3>
                                    <p>You need to be sure there isn't anything embarrassing hidden in the repeat predefined</p>
                                </div>
                                <div class="leave_comment">
                                    <div class="contact_form">
                                        <form action="#">
                                            <div class="row">
                                                <div class="col-12 col-sm-12 col-md-6 form-group">
                                                   <input type="text" class="form-control" id="name"  placeholder="Name">
                                                </div>
                                                <div class="col-12 col-sm-12 col-md-6 form-group">
                                                    <input type="email" class="form-control" id="email" placeholder="Email">
                                                </div>
                                                <div class="col-12 col-sm-12 col-md-12 form-group">
                                                    <textarea class="form-control" id="comment" placeholder="Your Comment Wite Here ..."></textarea>
                                                </div>


                                                 <div class="col-12 col-sm-12 col-md-12 submit-btn">
                                                    <button type="submit" class="text-center">Post Comment</button>
                                                </div>
                                            </div>
                                        </form>   
                                    </div>
                                </div> 
                            </div>
                        </div>
                </div>

                <div class="col-12 col-sm-12 col-md-4 col-lg-4 blog_wrapper_right ">
                    <div class="blog-right-items">

                        <div class="search_blog widget_single">
                            <div class="form-full-box">
                                <form>
                                    <div class="form-group">
                                        <input class="form-control" name="name" placeholder="Write Your Name" required="" type="text">
                                        <button class="register-btn" type="submit"><i class="fa fa-search"></i></button>
                                    </div>
                                </form>
                            </div>
                        </div>


                        <div class="recent_post_wrapper widget_single">
                            <div class="items-title">
                                <h3 class="title">Recent Post</h3>
                            </div>
                            <div class="single-post">
                                <div class="recent_img">
                                     <a href="" title=""><img src="images/blog/f4.jpg" alt="" class="img-fluid"></a>
                                </div>
                                <div class="post_title">
                                    <a href="" title="">Research of Learn training process</a>
                                    <div class="post-date">
                                        <span>May 29, 2019</span>
                                    </div>
                                </div>
                            </div>

                            <div class="single-post">
                                <div class="recent_img">
                                    <a href="" title=""><img src="images/blog/f5.jpg" alt="" class="img-fluid"></a>
                                </div>
                                <div class="post_title">
                                    <a href="" title="">How to Become Master In CSS within a Week.</a>
                                    <div class="post-date">
                                        <span>25 August, 2019</span>
                                    </div>
                                </div>
                            </div>

                            <div class="single-post">
                                <div class="recent_img">
                                    <a href="" title=""><img src="images/blog/f6.jpg" alt="" class="img-fluid"></a>
                                </div>
                                <div class="post_title">
                                    <a href="" title="">Students work together to solve a problem.</a>
                                    <div class="post-date">
                                        <span>25 August, 2019</span>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <div class="archives widget_single">
                            <div class="items-title">
                                <h3 class="title">All Categories</h3>
                            </div>
                            <div class="archives-items">
                                <ul class="list-unstyled">
                                    <li><a href="" title=""><span>Art & Design</span> <span>02</span></a> </li>
                                    <li><a href="" title=""><span>Busness</span><span>05</span></a></li>
                                    <li><a href="" title=""><span>IT & Software</span><span>05</span></a></li>
                                    <li><a href="" title=""><span>Languages</span><span>05</span></a></li>
                                    <li><a href="" title=""><span>Programming</span><span>05</span></a></li>                                
                                    <li><a href="" title=""><span>Technology</span><span>05</span></a></li>
                                </ul>
                            </div>
                        </div>  

                        <div class="popular_tags widget_single">
                            <div class="items-title">
                                <h3 class="title">Popular Tags</h3>
                            </div>
                            <div class="tags-items">
                                <ul class="list-unstyled">
                                    <li><a href="" title="">Travel</a></li>
                                    <li><a href="" title="">Amazing</a></li>
                                    <li><a href="" title="">Clean</a></li>
                                    <li><a href="" title="">Responsive</a></li>
                                    <li><a href="" title="">Room</a></li>
                                    <li><a href="" title="">Travel Tips</a></li>
                                    <li><a href="" title="">Tour</a></li>
                                    <li><a href="" title="">Design</a></li>
                                </ul>
                            </div>
                        </div>  
                    </div>
                </div><!-- ./ End  Blog Right Wrapper-->
            </div>
        </div>
    </section>


<footer class="footer-area">
    <div class="container">
        <div class="row">
            <!-- footer left -->
            <div class="col-md-3 col-sm-6">
                <div class="single-footer">
                    <div class="footer-title">
                        <h3><a href="#"><img src="images/logo.png" alt=""></a></h3>
                    </div>
                    <div class="footer-left">
                        <div class="footer-logo">
                            <p>Lorem ipsum dolor sit amet conset ctetur adipiscin elit Etiam at ipsum at ligula vestibulum sodales.</p>
                        </div>
                        <ul class="footer-contact">
                            <li><img class="map" src="images/icon/map.png" alt="">Seventh Avenue New York</li>
                            <li><img class="map" src="images/icon/phone.png" alt="">+123-456-7890</li>
                            <li><img class="map" src="images/icon/gmail.png" alt="">info@yourcompany.com</li>
                        </ul>
                    </div>
                </div>
            </div> <!-- footer left -->

            <!-- footer destination -->
            <div class="col-md-2 col-sm-6">
                <div class="single-footer">
                    <div class="footer-title">
                        <h3>Quick Link</h3>
                    </div>
                    <ul class="list-unstyled">
                        <li><a href="" title="">Home</a></li>
                        <li><a href="" title="">Package List</a></li>
                        <li><a href="" title="">Hotels</a></li>
                        <li><a href="" title="">Flights</a></li>
                        <li><a href="" title="">Blog</a></li>
                        <li><a href="" title="">Pages</a></li>
                        <li><a href="" title="">Contact</a></li>
                    </ul>
                </div>
            </div>  <!-- footer destination -->

            <div class="col-md-4 col-sm-6">
                <div class="single-footer">
                    <div class="single-recent-post">
                        <div class="footer-title">
                            <h3>Recent News</h3>
                        </div>
                        <ul class="recent-post">
                            <li>
                                <a href="#">
                                    <div class="post-thum">
                                        <img src="images/blog/f4.jpg" alt="" class="img-rounded">
                                    </div>
                                    <div class="post-content">
                                        <p>A Clean Website Gives More Experience To The Visitors.
                                        </p>
                                        <span>12 July, 2019</span>
                                    </div>
                                </a>
                            </li>
                            <li>
                                <a href="#">
                                    <div class="post-thum">
                                        <img src="images/blog/f5.jpg" alt="" class="img-rounded">
                                    </div>
                                    <div class="post-content">
                                        <p>A Clean Website Gives More Experience To The Visitors.
                                        </p>
                                        <span>12 July, 2019</span>
                                    </div>
                                </a>
                            </li>
                            <li>
                                <a href="#">
                                    <div class="post-thum">
                                        <img src="images/blog/f6.jpg" alt="" class="img-rounded">
                                    </div>
                                    <div class="post-content">
                                        <p>A Clean Website Gives More Experience To The Visitors.
                                        </p>
                                        <span>12 July, 2019</span>
                                    </div>
                                </a>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>  <!-- footer latest news -->

            <!-- footer contact -->
            <div class="col-md-3 col-sm-6 f-phone-responsive">
                <div class="single-footer">
                    <div class="footer-title">
                        <h3>Quick Contact</h3>
                    </div>
                    <div class="footer-contact-form">
                        <form action="#">
                            <ul class="footer-form-element">
                                <li>
                                    <input type="text" name="email" id="email" placeholder="" value="Email Address" onblur="if(this.value==''){this.value='Email Address'}" onfocus="if(this.value=='Email Address'){this.value=''}">
                                </li>
                                <li class="text_area">
                                    <textarea name="message" id="message" cols="30" rows="10" placeholder="Message"></textarea>
                                    <button type="submit">Send</button>
                                </li>
                                <li>
                                    
                                </li>
                            </ul>
                        </form>
                    </div>
                    <div class="footer-social-media">
                        <div class="social-footer-title">
                            <h3>Follow Us</h3>
                        </div>
                        <ul class="footer-social-link">
                            <li class="facebook"><a href="#"><i class="fa fa-facebook"></i></a></li>
                            <li class="twitter"><a href="#"><i class="fa fa-twitter"></i></a></li>
                            <li class="linkedin"><a href="#"><i class="fa fa-linkedin"></i></a></li>
                            <li class="gplus"><a href="#"><i class="fa fa-google-plus"></i></a></li>
                            <li class="youtube"><a href="#"><i class="fa fa-youtube-play"></i></a></li>
                        </ul>
                    </div>
                </div>
            </div>  <!-- footer contact -->
        </div>
    </div>
    <div class="footer_bottom_wrapper">
        <div class="container">
            <div class="row">
                <div class="col-12 col-sm-12 col-md-12">
                    <div class="copy_right_wrapper">
                        <div class="copyright">
                            <p>Copyright &copy; 2019 Travelstar By <a href="http://www.17sucai.com/">Ecology</a> Theme</p>
                        </div>
                        <ul class="payicon pull-right">
                            <li>We Accept : </li>
                            <li><a href="" title=""><img src="images/payicon01.png" alt=""></a></li>
                            <li><a href="" title=""><img src="images/payicon02.png" alt=""></a></li>
                            <li><a href="" title=""><img src="images/payicon03.png" alt=""></a></li>
                            <li><a href="" title=""><img src="images/payicon04.png" alt=""></a></li>
                            <li><a href="" title=""><img src="images/payicon05.png" alt=""></a></li>
                            <li><a href="" title=""><img src="images/payicon06.png" alt=""></a></li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </div>
</footer> <!-- end footer -->

<div class="to-top pos-rtive">
    <a href="#"><i class = "fa fa-angle-up"></i></a>
</div><!-- Scroll to top-->

    <!-- ============================
            JavaScript Files
    ============================= -->

    <!-- jquery latest version -->
    <script src="js/vendor/jquery-3.2.0.min.js"></script>
    <script src="js/vendor/modernizr-2.8.3.min.js"></script>  
    <!-- bootstrap js -->
    <script src="js/bootstrap.min.js"></script>
    <!-- owl.carousel js -->
    <script src="js/owl.carousel.min.js"></script>
    <!-- slick js -->
    <script src="js/slick.min.js"></script>
    <!-- meanmenu js -->
    <script src="js/jquery.meanmenu.min.js"></script>
    <!-- jquery-ui js -->
    <script src="js/jquery-ui.min.js"></script>
    <!-- wow js -->
    <script src="js/wow.min.js"></script>
    <!-- counter js -->
    <script src="js/jquery.counterup.min.js"></script>
    <!-- Countdown js -->
    <script src="js/jquery.countdown.min.js"></script>
    <!-- waypoints js -->
    <script src="js/jquery.waypoints.min.js"></script>
    <!-- Isotope js -->
    <script src="js/isotope.pkgd.min.js"></script>
    <!-- magnific js -->
    <script src="js/jquery.magnific-popup.min.js"></script>
    <!-- Image loaded js -->
    <script src="js/imagesloaded.pkgd.min.js"></script>
    <!-- chossen js -->
    <script src="js/chosen.jquery.min.js"></script>
    <!-- Jquery plugin -->
    <script src="js/plugins.js"></script>
    <!-- select2 js plugin -->
    <script src="js/select2.min.js"></script>    
    <script src="js/colors.js"></script>
    <!-- Jquery plugin -->
    <script src="js/jquery-customselect.js"></script>
    <!-- main js -->
    <script src="js/custom.js"></script>
</body>
</html>
