<%@page import="com.qst.model.Packageself"%>
<%@page import="com.qst.model.User"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="filter3.jsp" %>
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
<body>
<div id="loader-wrapper">
    <div id="loader"></div>
    <div class="loader-section section-left"></div>
    <div class="loader-section section-right"></div>
</div>
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
									<li><a href="hotel-version-two.jsp">博客展示 </a></li>
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
        <div class="single-bredcurms" style="background-image:url('images/bercums/package-Version-01.jpg');">
            <div class="container">
                <div class="row">
                    <div class="col-sm-12">
                        <div class="bredcrums-content">
                            <h2>套餐</h2>
                            <ul>
                                <li><a href="index2.jsp">首页</a>
                                </li>
                                <li class="active"><a href="single-package.jsp">套餐预订</a>
                                </li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section><!-- blog breadcrumb version one end here -->

    <section class="section-paddings single-package-area">
        <div class="container">
            <div class="row">
                <!-- single package tab with details -->
                <div class="col-md-8 col-sm-12">
                    <div class="single-package-details">
                        <div class="single-package-title">
                            <h2><%=((Packageself)session.getAttribute("pak")).getPname() %></h2>
                        </div>
                        <ul class="package-content d-flex justify-content-between">
                            <li><%=((Packageself)session.getAttribute("pak")).getPday() %> Days, <%=((Packageself)session.getAttribute("pak")).getPday()-1 %> Nights</li>
                            <li>
                                <span>
                                   <i class="fa fa-star"></i>
                                   <i class="fa fa-star"></i>
                                   <i class="fa fa-star"></i>
                                   <i class="fa fa-star"></i>
                                   <i class="fa fa-star"></i>
                               </span>
                            </li>
                        </ul>
                    </div><!-- tab menu strat -->
                    <div class="package_banner">
                        <img src="<%=((Packageself)session.getAttribute("pak")).getPpic() %>" alt="" class="img-fluid">
                    </div>
                    <div class="package-tab-menu">
                        <ul class="package-tab-menu nav nav-tabs" id="myTab2" role="tablist">
                            <li role="presentation"><a href="#description" class="active" aria-controls="description" role="tab" data-toggle="tab">Description</a></li>
                            <li role="presentation"><a href="#itinerary" aria-controls="itinerary" role="tab" data-toggle="tab">Tour Guide</a></li>
                            <li role="presentation"><a href="#video" aria-controls="video" role="tab" data-toggle="tab">Videos</a></li>
                            <li role="presentation"><a href="#reviews" aria-controls="reviews" role="tab" data-toggle="tab">Reviews</a></li>
                        </ul>
                    </div><!-- tab menu end -->

                    <!-- tab content start -->
                    <div class="row">
                        <!-- tabs content -->
                        <div class="tab-content">
                            <div role="tabpanel" class="tab-pane fade show active in" id="description">
                                <div class="row">
                                    <!-- left content -->
                                    <div class="col-md-12 col-sm-12">
                                        <div class="tour-description">
                                            <p>Tourist attractions people foreign sleep overnight housing. Gerimrany group discount tour operator. Airplane couchsurfing Moi scow ma ps uncharted luxury train guest tour operator German y busre laxation. Paris overnight Japan Tripit territory international carren tal Pacific outdoor Turkey. Country international to urist attractions mil es train Moscow guide. Japan horse riding money Bacel ona Buda pest yach t passport animals package China hitchh iking discover deal. Russia St. Petersburg Cuba creditcard bookin g discover Amst erdam flying. Freedom ani mals car rental booki ng. GEO Instagram group discount Brasil Germany gateway activ e lifestyle. Transit sailing kayak diary Europe chartering.</p>
                                        </div>
                                        <div class="chosse-packge">
                                            
                                            <div class="row">
                                                <div class="col-12 col-md-12 col-sm-12">
                                                    <div class="packaging_contents_wrapper">
                                                        <h4>Additional Info</h4>
                                                        <div class="packaging-contents">
                                                            <ul class="list-unstyled">
                                                                <li><span><i class="fa fa-map-marker"></i>Location</span><span>Thailand</span></li>
                                                                <li><span><i class="fa fa-clock-o"></i>Duration</span><span>4 Days</span></li>
                                                                <li><span><i class="fa fa-user"></i>Min Age</span><span>12+</span></li>
                                                                <li><span><i class="fa fa-users"></i>Max People</span><span>05</span></li>
                                                            </ul>
                                                            <ul class="list-unstyled">
                                                                <li><span><i class="fa fa-plane"></i>Landing</span><span>Thailand</span></li>
                                                                <li><span><i class="fa fa-calendar-check-o"></i>Check In</span><span>15/05/2019</span></li>
                                                                <li><span><i class="fa fa-calendar-minus-o"></i>Check Out</span><span>15/06/2019</span></li>
                                                            </ul>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div><!-- left-content -->

                                </div>
                            </div>

                            <div role="tabpanel" class="tab-pane fade" id="itinerary">
                                <div class="row">
                                    <div class="col-md-12 col-sm-12">
                                        <div class="tour-description">
                                            <h4>Tour Description</h4>
                                            <div class="main-timeline">
                                                <!-- single timeline -->
                                                <div class="timeline">
                                                    <div class="timeline-content left">
                                                        <span class="timeline-icon">1</span>
                                                        <h4>Day 1: Meeting The All Members</h4>
                                                        <p>Tourist attractions people foreign sleep overnight housing. Gerimrany group discount tour operator. Airplane couchsurfing Moi scow ma ps uncharted luxury train guest tour operator German y busre laxation. Paris overnight Japan Tripit territory international carren tal Pacific outdoor Turkey. Country international to urist attractions mil es train Moscow guide. Japan horse riding money Bacel ona Buda pest yach.</p>
                                                    </div>
                                                </div><!-- single timeline -->

                                                <!-- single timeline -->
                                                <div class="timeline">
                                                    <div class="timeline-content left">
                                                        <span class="timeline-icon">2</span>
                                                        <h4>Day 2: Unforgettable Journey</h4>
                                                        <p>Tourist attractions people foreign sleep overnight housing. Gerimrany group discount tour operator. Airplane couchsurfing Moi scow ma ps uncharted luxury train guest tour operator German y busre laxation. Paris overnight.</p>
                                                    </div>
                                                </div><!-- single timeline -->

                                                <!-- single timeline -->
                                                <div class="timeline">
                                                    <div class="timeline-content left">
                                                        <span class="timeline-icon">3</span>
                                                        <h4>Day 3: Night Party</h4>
                                                        <p>Tourist attractions people foreign sleep overnight housing. Gerimrany group discount tour operator. Airplane couchsurfing Moi scow ma ps uncharted luxury train guest tour operator German y busre laxation. Paris overnight.</p>
                                                    </div>
                                                </div><!-- single timeline -->

                                                <!-- single timeline -->
                                                <div class="timeline">
                                                    <div class="timeline-content left">
                                                        <span class="timeline-icon">4</span>
                                                        <h4>Day 4: Time To Say Good Bay</h4>
                                                        <p>Tourist attractions people foreign sleep overnight housing. Gerimrany group discount tour operator. Airplane couchsurfing Moi scow ma ps uncharted luxury train guest tour operator German y busre laxation. Paris overnight.</p>
                                                    </div>
                                                </div><!-- single timeline -->
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>

                            <!-- video tab content start -->
                            <div role="tabpanel" class="tab-pane fade" id="video">
                                <div class="row">
                                    <div class="col-12 col-md-12 col-sm-12">
                                        <div class="tour-description">
                                            <h4>Video</h4>
                                            <!-- Video -->
                                            <div class="tab-video-area video-bg">
                                                <div class="video-play-btn">
                                                    <a href="https://www.youtube.com/watch?v=L0K0AYRFZQI" class="video_iframe"><span><i class="fa fa-play"></i></span></a>
                                                </div>
                                            </div><!-- Video -->
                                        </div>
                                    </div>
                                </div>
                            </div><!-- video tab content end -->

                            <!-- video tab content start -->
                            <div role="tabpanel" class="tab-pane fade" id="reviews">
                                <div class="row">
                                    <div class="col-md-12 col-sm-12">
                                        <div class="tour-description">
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
                                                            <ul class="review_rating d-flex">
                                                                <li><i class="fa fa-star"></i></li>
                                                                <li><i class="fa fa-star"></i></li>
                                                                <li><i class="fa fa-star"></i></li>
                                                                <li><i class="fa fa-star"></i></li>
                                                                <li><i class="fa fa-star"></i></li>
                                                            </ul>    
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
                                                            <ul class="review_rating d-flex">
                                                                <li><i class="fa fa-star"></i></li>
                                                                <li><i class="fa fa-star"></i></li>
                                                                <li><i class="fa fa-star"></i></li>
                                                                <li><i class="fa fa-star"></i></li>
                                                            </ul>         
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
                                                            <ul class="review_rating d-flex">
                                                                <li><i class="fa fa-star"></i></li>
                                                                <li><i class="fa fa-star"></i></li>
                                                                <li><i class="fa fa-star"></i></li>
                                                                <li><i class="fa fa-star"></i></li>
                                                                <li><i class="fa fa-star"></i></li>
                                                            </ul>         
                                                            <p>You need to be sure there isn't anything embarrassing hidden in the repeat predefined chunks as nessing hidden in the repeat predefined chunks as necessary, making this the first true generator on the Internet.</p>
                                                        </div>                               
                                                    </div>
                                                </div>
                                            </div> 
                                        </div>
                                    </div>
                                </div>
                            </div><!-- video tab content end -->
                        </div><!-- tabs content-->
                    </div><!-- tab content end -->
                </div><!-- single package tab with details -->

                <!-- booking form start here -->
                <div class="col-md-4 col-sm-12">
                    <aside>
                        <div class="booking-form">
                            <div class="booking-title">
                                <h2>Book This Tour</h2>
                                <p>Lorem ipsum dolor sit amet, consectet ur adipiscing elit, sedpr do eiusmod tempor incididunt ut.</p>
                            </div>
                            <form action="PackageServlet" method="post">
                                <div class="form-group">
                                    <!-- <input type="text" class="form-control" name="name" id="name" placeholder="Name"> -->
                                      欢迎光临:${sessionScope.user.uname }<br>
                                </div>
                                <div class="form-group">
                                    <input type="email" class="form-control" name="email" id="confirm_email" placeholder="邮箱：">
                                </div>
                                <div class="form-group">
                                    <input type="tel" class="form-control" name="tel" id="number" placeholder="唯一验证号：">
                                    
                                </div>
                                <div class="form-group">
                                    <textarea name="messgae" id="message" cols="30" rows="7" class="form-control" placeholder="留言（选填）："></textarea>
                                </div>
                                <div class="form-group form_btn">
                                    <button type="submit" class="booking-confirm hvr-shutter-out-horizontal">Book Now</button>
                                </div>
                            </form>
                        </div>
                    </aside><!-- adverestment start here-->

                    <div class="adding-form">
                        <div class="addfor-bg">
                            <div class="add-content">
                                <h3>Get A Question!</h3>
                                <p>Lorem ipsum dolor sit amet, consectet ur adipiscing elit, sedpr do eiusmod tempor incididunt ut.</p>
                                <ul class="contact-for-add">
                                    <li><img src="images/icon/phone.png" alt="">+123-456-7890</li>
                                    <li><img src="images/icon/gmail.png" alt="">info@yourcompany.com</li>
                                </ul>
                            </div>
                        </div>
                    </div><!-- adverestment start here-->
                </div><!-- booking form end here -->
            </div>
        </div>
    </section>

<!-- realted tour start here -->
 <!--    <section class="related-tour popular-packages">
        <div class="container">
            <div class="row">
      
               <div class="col-sm-12">
                    <div class="section-title-3 mbt-100">
                        <h2>Similar Packages</h2>
                    </div>
                </div>
            </div>
            <div class="row">
                single package start
                <div class="col-12 col-sm-6 col-md-6 col-lg-4">
                    <div class="single-package">
                        <div class="package-image">
                            <a href="#"><img src="images/packages/1.jpg" alt="">
                            </a>
                        </div>
                        <div class="package-content">
                            <h3><a href=""  title="">Dubai – All Stunning Places</a></h3>
                            <p>4Days, 5 Nights Start From <span>$500</span>
                            </p>
                        </div>
                        <div class="package-calto-action">
                            <ul class="ct-action">
                                <li><a href="#" class="travel-booking-btn hvr-shutter-out-horizontal">Book Now</a>
                                </li>
                                <li>
                                    <i class="fa fa-star"></i>
                                    <i class="fa fa-star"></i>
                                    <i class="fa fa-star"></i>
                                    <i class="fa fa-star"></i>
                                    <i class="fa fa-star"></i>
                                </li>
                            </ul>
                        </div>
                    </div>
                </div>single package end

                single package start
                <div class="col-12 col-sm-6 col-md-6 col-lg-4">
                    <div class="single-package">
                        <div class="package-image">
                            <a href="#"><img src="images/packages/2.jpg" alt="">
                            </a>
                        </div>
                        <div class="package-content">
                            <h3><a href="" title="">Dubai – All Stunning Places</a></h3>
                            <p>4Days, 5 Nights Start From <span>$500</span>
                            </p>
                        </div>
                        <div class="package-calto-action">
                            <ul class="ct-action">
                                <li><a href="#" class="travel-booking-btn hvr-shutter-out-horizontal">Book Now</a>
                                </li>
                                <li>
                                    <i class="fa fa-star"></i>
                                    <i class="fa fa-star"></i>
                                    <i class="fa fa-star"></i>
                                    <i class="fa fa-star"></i>
                                    <i class="fa fa-star"></i>
                                </li>
                            </ul>
                        </div>
                    </div>
                </div>End single package

                <div class="col-12 col-sm-6 col-md-6 col-lg-4">
                    <div class="single-package">
                        <div class="package-image">
                            <a href="#"><img src="images/packages/3.jpg" alt="">
                            </a>
                        </div>
                        <div class="package-content">
                            <h3><a href="" title="">Dubai – All Stunning Places</a></h3>
                            <p>4Days, 5 Nights Start From <span>$500</span>
                            </p>
                        </div>
                        <div class="package-calto-action">
                            <ul class="ct-action">
                                <li><a href="#" class="travel-booking-btn hvr-shutter-out-horizontal">Book Now</a>
                                </li>
                                <li>
                                    <i class="fa fa-star"></i>
                                    <i class="fa fa-star"></i>
                                    <i class="fa fa-star"></i>
                                    <i class="fa fa-star"></i>
                                    <i class="fa fa-star"></i>
                                </li>
                            </ul>
                        </div>
                    </div>
                </div>End single package
            </div>
        </div>
    </section> -->


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
    <!-- google map api -->
    <script src="http://ditu.google.cn/maps/api/js?key=AIzaSyCIW0B_E3g-Yg533xy3yF0WHThi-mFvSNQ "></script>
    <!-- map js -->
    <script src="js/google-map.js"></script>
    <!-- main js -->    
    <script src="js/custom.js"></script>
</body>
</html>
