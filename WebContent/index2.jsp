<%@page import="com.qst.model.User"%>
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
    <!-- Google Fonts -->
    <link href="https://fonts.googleapis.com/css?family=Poppins:300,400,500,600,700" rel="stylesheet">
    <!-- Favicon -->
    <link rel="shortcut icon" type="image/x-icon" href="images/favicon.ico">
    <!-- bootstrap css -->
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
							 <a href="LoginServlet?type=logout">退出</a> 
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

<!-- slider area start here -->
<section class="slider-area" id="slider_area_1">
	<div class="rev_slider_wrapper">
		<div id="rev_slider_1" class="rev_slider" style="display:none">
			<ul>

				<li data-index="rs-3049" data-transition="zoomin" data-slotamount="7" data-hideafterloop="0" data-hideslideonmobile="off"  data-easein="Power4.easeInOut" data-easeout="Power4.easeInOut" data-masterspeed="2000"  data-thumb="images/slider/slider_1_1.jpg"  data-rotate="0"  data-saveperformance="off"  data-title="Love it?" data-param1="" data-param2="" data-param3="" data-param4="" data-param5="" data-param6="" data-param7="" data-param8="" data-param9="" data-param10="" data-description="">
					<!-- MAIN IMAGE -->
					<img src="images/slider/slider_1_1.jpg"  alt=""  data-bgposition="center center" data-kenburns="on" data-duration="10000" data-ease="Linear.easeNone" data-scalestart="100" data-scaleend="120" data-rotatestart="0" data-rotateend="0" data-offsetstart="0 -500" data-offsetend="0 500" data-bgparallax="10" class="rev-slidebg" data-no-retina>
					<!-- BEGIN BASIC TEXT LAYER -->
					<!-- LAYER NR. 1 -->
					<div class="tp-caption sfr font-extra-bold tp-resizeme letter-space-4 title-line-1" 
						data-x="['center','center','center','center']" data-hoffset="['0','0','0','0']" 
						data-y="['middle','middle','middle','middle']" data-voffset="['-120','-128','-250','-158']" 
						data-fontsize="['30','30','25','30']"
						data-lineheight="['30','30','30','30']"
						data-width="none"
						data-height="none"
						data-whitespace="nowrap"

						data-type="text" 
						data-responsive_offset="on" 

						data-frames='[{"from":"y:[-100%];z:0;rX:0deg;rY:0;rZ:0;sX:1;sY:1;skX:0;skY:0;","mask":"x:0px;y:0px;s:inherit;e:inherit;","speed":2000,"to":"o:1;","delay":1750,"ease":"Power2.easeInOut"},{"delay":"wait","speed":300,"to":"opacity:0;","ease":"nothing"}]'
						data-textAlign="['left','left','left','left']"
						data-paddingtop="[0,0,0,0]"
						data-paddingright="[0,0,0,0]"
						data-paddingbottom="[0,0,0,0]"
						data-paddingleft="[0,0,0,0]"
						data-frames='[{"delay":0,"speed":3000,"frame":"0","from":"x:[175%];y:0px;z:0;rX:0;rY:0;rZ:0;sX:1;sY:1;skX:0;skY:0;opacity:1;","mask":"x:[-100%];y:0;s:inherit;e:inherit;","to":"o:1;","ease":"Power3.easeOut"},{"delay":"wait","speed":300,"frame":"999","to":"auto:auto;","ease":"Power3.easeInOut"}]' 
						style="z-index: 6; color:#fff; text-transform:capitalize; font-family:'Poppins', sans-serif; white-space: nowrap; font-weight:500;">Open Your Eyes To
					</div>

					<!-- LAYER NR. 2 -->
					<div class="tp-caption sfr font-extra-bold tp-resizeme letter-space-4 title-line-2" 
					 	data-x="['center','center','center','center']" data-hoffset="['0','0','0','0']" 
						data-y="['middle','middle','middle','middle']" data-voffset="['-40','-40','-150','-100']" 
						data-fontsize="['90','80','60','50']"
						data-lineheight="['90','80','60','50']"
						data-width="none"
						data-height="none"
						data-whitespace="nowrap"

						data-type="text" 
						data-responsive_offset="on" 

						data-frames='[{"from":"y:[-100%];z:0;rX:0deg;rY:0;rZ:0;sX:1;sY:1;skX:0;skY:0;","mask":"x:0px;y:0px;s:inherit;e:inherit;","speed":2000,"to":"o:1;","delay":1750,"ease":"Power2.easeInOut"},{"delay":"wait","speed":300,"to":"opacity:0;","ease":"nothing"}]'
						data-textAlign="['left','left','left','left']"
						data-paddingtop="[0,0,0,0]"
						data-paddingright="[0,0,0,0]"
						data-paddingbottom="[0,0,0,0]"
						data-paddingleft="[0,0,0,0]"
						data-frames='[{"from":"y:[100%];z:0;rX:0deg;rY:0;rZ:0;sX:1;sY:1;skX:0;skY:0;opacity:0;","mask":"x:0px;y:[100%];s:inherit;e:inherit;","speed":2000,"to":"o:1;","delay":750,"ease":"Power4.easeInOut"},{"delay":"wait","speed":1000,"to":"y:[100%];","mask":"x:inherit;y:inherit;s:inherit;e:inherit;","ease":"Power2.easeInOut"}]' 
						style="z-index: 6; font-weight: 600; color:#fff; text-transform:capitalize; font-family:'Poppins', sans-serif; white-space: nowrap;">The Hidden World
					</div>

					<!-- LAYER NR. 3 -->
					<div class="tp-caption font-lora sfb tp-resizeme letter-space-5  header-p1"
						id="slide-3015-layer-5"  
						data-x="['center','center','center','center']" data-hoffset="['0','0','0','0']" 
						data-y="['middle','middle','middle','middle']" data-voffset="['80','80','0','0']" 
						data-fontsize="['18','18','180','180']"
						data-lineheight="['28','28','30','30']"
						data-width="['none','none','480','360']"
						data-height="none"
						data-whitespace="['nowrap','nowrap','normal','normal']"

						data-type="text" 
						data-responsive_offset="on" 

						data-frames='[{"from":"y:50px;opacity:0;","speed":2000,"to":"o:1;","delay":2000,"ease":"Power2.easeInOut"},{"delay":"wait","speed":300,"to":"opacity:0;","ease":"nothing"}]'
						data-textAlign="['center','center','center','center']"
						data-paddingtop="[0,0,0,0]"
						data-paddingright="[0,0,0,0]"
						data-paddingbottom="[0,0,0,0]"
						data-paddingleft="[0,0,0,0]"

						data-frames='[{"from":"y:[100%];z:0;rX:0deg;rY:0;rZ:0;sX:1;sY:1;skX:0;skY:0;opacity:0;","mask":"x:0px;y:[100%];s:inherit;e:inherit;","speed":2000,"to":"o:1;","delay":750,"ease":"Power4.easeInOut"},{"delay":"wait","speed":1000,"to":"y:[100%];","mask":"x:inherit;y:inherit;s:inherit;e:inherit;","ease":"Power2.easeInOut"}]' 
						style="z-index: 7; color:#fff; font-family:'Poppins', sans-serif; white-space: nowrap; font-weight:400;">
						Lorem ipsum dolor sit amet consectetur adipiscing elit proin leo leo ornare nec <br> vulputate tempus velit nam id purus tellus hendrerit mi dapibus.
					</div>

				</li>
				<!-- first slider end -->

				<li data-index="rs-3007" data-transition="zoomout" data-slotamount="default" data-hideafterloop="0" data-hideslideonmobile="off"  data-easein="Power4.easeInOut" data-easeout="Power4.easeInOut" data-masterspeed="2000"  data-thumb="images/slider/slider_1_2.jpg"  data-rotate="0"  data-saveperformance="off"  data-title="Iceberg" data-param1="" data-param2="" data-param3="" data-param4="" data-param5="" data-param6="" data-param7="" data-param8="" data-param9="" data-param10="" data-description="">
					<!-- SLIDE'S MAIN BACKGROUND IMAGE -->
					<img src="images/slider/slider_1_2.jpg"  alt=""  data-bgposition="center center" data-kenburns="on" data-duration="10000" data-ease="Linear.easeNone" data-scalestart="100" data-scaleend="120" data-rotatestart="0" data-rotateend="0" data-offsetstart="0 -500" data-offsetend="0 500" data-bgparallax="10" class="rev-slidebg" data-no-retina>
					<!-- BEGIN BASIC TEXT LAYER -->
					<!-- LAYER NR. 1 -->
					<div class="tp-caption sfr font-extra-bold tp-resizeme letter-space-4 title-line-1" 
						data-x="['center','center','center','center']" data-hoffset="['0','0','0','0']" 
						data-y="['middle','middle','middle','middle']" data-voffset="['-120','-128','-250','-158']" 
						data-fontsize="['30','30','25','30']"
						data-lineheight="['30','30','30','30']"
						data-width="none"
						data-height="none"
						data-whitespace="nowrap"

						data-type="text" 
						data-responsive_offset="on" 

						data-frames='[{"from":"y:[-100%];z:0;rX:0deg;rY:0;rZ:0;sX:1;sY:1;skX:0;skY:0;","mask":"x:0px;y:0px;s:inherit;e:inherit;","speed":2000,"to":"o:1;","delay":1750,"ease":"Power2.easeInOut"},{"delay":"wait","speed":300,"to":"opacity:0;","ease":"nothing"}]'
						data-textAlign="['left','left','left','left']"
						data-paddingtop="[0,0,0,0]"
						data-paddingright="[0,0,0,0]"
						data-paddingbottom="[0,0,0,0]"
						data-paddingleft="[0,0,0,0]"
						data-frames='[{"delay":0,"speed":3000,"frame":"0","from":"x:[175%];y:0px;z:0;rX:0;rY:0;rZ:0;sX:1;sY:1;skX:0;skY:0;opacity:1;","mask":"x:[-100%];y:0;s:inherit;e:inherit;","to":"o:1;","ease":"Power3.easeOut"},{"delay":"wait","speed":300,"frame":"999","to":"auto:auto;","ease":"Power3.easeInOut"}]' 
						style="z-index: 6; color:#fff; text-transform:capitalize; font-family:'Poppins', sans-serif; white-space: nowrap; font-weight:500;">Open Your Eyes To
					</div>

					<!-- LAYER NR. 2 -->
					<div class="tp-caption sfr font-extra-bold tp-resizeme letter-space-4 title-line-2" 
					 	data-x="['center','center','center','center']" data-hoffset="['0','0','0','0']" 
						data-y="['middle','middle','middle','middle']" data-voffset="['-40','-40','-150','-100']" 
						data-fontsize="['90','80','60','50']"
						data-lineheight="['90','80','60','50']"
						data-width="none"
						data-height="none"
						data-whitespace="nowrap"

						data-type="text" 
						data-responsive_offset="on" 

						data-frames='[{"from":"y:[-100%];z:0;rX:0deg;rY:0;rZ:0;sX:1;sY:1;skX:0;skY:0;","mask":"x:0px;y:0px;s:inherit;e:inherit;","speed":2000,"to":"o:1;","delay":1750,"ease":"Power2.easeInOut"},{"delay":"wait","speed":300,"to":"opacity:0;","ease":"nothing"}]'
						data-textAlign="['left','left','left','left']"
						data-paddingtop="[0,0,0,0]"
						data-paddingright="[0,0,0,0]"
						data-paddingbottom="[0,0,0,0]"
						data-paddingleft="[0,0,0,0]"
						data-frames='[{"from":"y:[100%];z:0;rX:0deg;rY:0;rZ:0;sX:1;sY:1;skX:0;skY:0;opacity:0;","mask":"x:0px;y:[100%];s:inherit;e:inherit;","speed":2000,"to":"o:1;","delay":750,"ease":"Power4.easeInOut"},{"delay":"wait","speed":1000,"to":"y:[100%];","mask":"x:inherit;y:inherit;s:inherit;e:inherit;","ease":"Power2.easeInOut"}]' 
						style="z-index: 6; font-weight: 600; color:#fff; text-transform:capitalize; font-family:'Poppins', sans-serif; white-space: nowrap;">The Hidden World
					</div>

					<!-- LAYER NR. 3 -->
					<div class="tp-caption font-lora sfb tp-resizeme letter-space-5  header-p1"
						id="slide-3015-layer-5"  
						data-x="['center','center','center','center']" data-hoffset="['0','0','0','0']" 
						data-y="['middle','middle','middle','middle']" data-voffset="['80','80','0','0']" 
						data-fontsize="['18','18','180','180']"
						data-lineheight="['28','28','30','30']"
						data-width="['none','none','480','360']"
						data-height="none"
						data-whitespace="['nowrap','nowrap','normal','normal']"

						data-type="text" 
						data-responsive_offset="on" 

						data-frames='[{"from":"y:50px;opacity:0;","speed":2000,"to":"o:1;","delay":2000,"ease":"Power2.easeInOut"},{"delay":"wait","speed":300,"to":"opacity:0;","ease":"nothing"}]'
						data-textAlign="['center','center','center','center']"
						data-paddingtop="[0,0,0,0]"
						data-paddingright="[0,0,0,0]"
						data-paddingbottom="[0,0,0,0]"
						data-paddingleft="[0,0,0,0]"

						data-frames='[{"from":"y:[100%];z:0;rX:0deg;rY:0;rZ:0;sX:1;sY:1;skX:0;skY:0;opacity:0;","mask":"x:0px;y:[100%];s:inherit;e:inherit;","speed":2000,"to":"o:1;","delay":750,"ease":"Power4.easeInOut"},{"delay":"wait","speed":1000,"to":"y:[100%];","mask":"x:inherit;y:inherit;s:inherit;e:inherit;","ease":"Power2.easeInOut"}]' 
						style="z-index: 7; color:#fff; font-family:'Poppins', sans-serif; white-space: nowrap; font-weight:400;">
						Lorem ipsum dolor sit amet consectetur adipiscing elit proin leo leo ornare nec <br> vulputate tempus velit nam id purus tellus hendrerit mi dapibus.
					</div>
				</li>
				<!-- first slider end -->
			</ul>
		</div> <!-- end slider container -->
	</div> <!-- END end slider container wrapper -->
</section> <!-- slider area end here -->

<section class="search_area">
	<div class="container">
		<div class="row">
			<div class="col-12 col-md-12">
				<div class="search_form">
<!-- 缺少一个请求转发--><form action="TestServlet" method="post">
						<div class="form-group keywork_type">
							<label><i class="fa fa-map-marker"></i></label>
							<input type="search" name="k" id="keyword2" class="hotel-input-first" placeholder="Type Keyword">
						</div>
					<!--  	<div class="form-group">
							<label><i class="fa fa-calendar"></i></label>
							<input type="button" name="s" value="Date" id="datepicker2" class="hotel-input-first">
						</div>
						<div class="form-group">
							<label><i class="fa fa-user"></i></label>
							<input type="number" name="s" id="number1" class="hotel-input-first" placeholder="Person">
						</div>
						-->
						<div class="form-group searc-btn-7">
							<button type="submit">查找</button>
						</div>
					</form>
				</div>
			</div>
		</div>
	</div>
</section> <!-- header tab based search area end-->



<section class="popular-packages">
	<div class="container">
		<div class="row">
			<div class="col-12 col-md-12 col-sm-12 col-xs-12">
				<div class="section-title">
					<h2>Our Most Popular Packges</h2>
					<p>Lorem ipsum dolor sit amet consectetur adipiscing elit Etiam at ipsum at ligula vestibulum sodales Sed luctus orci vel nibh aliquam laoreet Aenean accumsan </p>
				</div>
			</div>
		</div>
		<div class="row">
            <div class="col-12 col-sm-6 col-md-6 col-lg-4">
                <div class="single-package">
                    <div class="package-image">
                        <a href="achieve_p?type=Dubai – All Stunning Places"><img src="images/packages/1.jpg" alt=""></a>
                    </div>
                    <div class="package-content">
                        <h3><a href="achieve_p?type=Dubai – All Stunning Places" title="">Dubai – All Stunning Places</a></h3>
                        <p>7 Days, 6 Nights Start From <span>$1000</span>
                        </p>
                    </div>
                    <div class="package-calto-action">
                        <ul class="ct-action">
                            <li><a href="achieve_p?type=Dubai – All Stunning Places" class="travel-booking-btn hvr-shutter-out-horizontal">Book Now</a>
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
            </div> <!-- single package end -->

            <div class="col-12 col-sm-6 col-md-6 col-lg-4">
                <div class="single-package">
                    <div class="package-image">
                        <a href="achieve_p?type=Thailand – All Stunning Places"><img src="images/packages/2.jpg" alt=""></a>
                    </div>
                    <div class="package-content">
                        <h3><a href="achieve_p?type=Thailand – All Stunning Places" title="">Thailand – All Stunning Places</a></h3>
                        <p>5 Days, 4 Nights Start From <span>$500</span>
                        </p>
                    </div>
                    <div class="package-calto-action">
                        <ul class="ct-action">
                            <li><a href="achieve_p?type=Thailand – All Stunning Places" class="travel-booking-btn hvr-shutter-out-horizontal">Book Now</a>
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
            </div> <!-- single package end -->


<!-- 我在这里 -->            <div class="col-12 col-sm-6 col-md-6 col-lg-4">
                <div class="single-package">
                    <div class="package-image">
                        <a href="achieve_p?type=England – All Stunning Places"><img src="images/packages/3.jpg" alt="">
                        </a>
                    </div>
                    <div class="package-content">
                        <h3><a href="achieve_p?type=England – All Stunning Places" title="">England – All Stunning Places</a></h3>
                        <p>4 Days, 5 Nights Start From <span>$500</span>
                        </p>
                    </div>
                    <div class="package-calto-action">
                        <ul class="ct-action">
                            <li><a href="achieve_p?type=England – All Stunning Places" class="travel-booking-btn hvr-shutter-out-horizontal">Book Now</a>
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
            </div> <!-- single package end -->

			<!-- <div class="col-12 col-sm-6 col-md-6 col-lg-4">
				<div class="single-package">
					<div class="package-image">
						<a href="#"><img src="images/packages/4.jpg" alt="">
						</a>
					</div>
					<div class="package-content">
						<h3><a href="" title="">Italy – All Stunning Places</a></h3>
						<p>4 Days, 5 Nights Start From <span>$500</span>
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
			</div> single package end

			<div class="col-12 col-sm-6 col-md-6 col-lg-4">
				<div class="single-package">
					<div class="package-image">
						<a href="#"><img src="images/packages/5.jpg" alt="">
						</a>
					</div>
					<div class="package-content">
						<h3><a href="" title="">Brazil – All Stunning Places</a></h3>
						<p>4 Days, 5 Nights Start From <span>$500</span>
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
			</div> single package end

			<div class="col-12 col-sm-6 col-md-6 col-lg-4">
				<div class="single-package">
					<div class="package-image">
						<a href="#"><img src="images/packages/6.jpg" alt="">
						</a>
					</div>
					<div class="package-content">
						<h3><a href="" title="">India – All Stunning Places</a></h3>
						<p>4 Days, 5 Nights Start From <span>$500</span>
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
			</div> single package end -->
		</div>
	</div>
</section> <!--end  popular packajge -->

<section class="countdown count-down-bg">
	<div class="container">
		<div class="row">
			<div class="col-md-12 col-sm-12-col-xs-12">
				<div class="count-down-titile">
					<h2>Special Tour in May, Discover <span class="color-one">Thailand</span> for 50 <br> customers with <span class="color-two">Discount 30%</span> </h2>
				</div>
				<div class="count-timer text-center">
					<div class="time-wrapper">
						<p>It’s limited seating! Hurry up</p>
						<div class="timer">
							<div data-countdown="2019/5/15"></div>
						</div>
					</div>
				</div>
				<div class="buy-now text-center">
					<a href="#" class="travel-primary-btn hvr-fade">Book Now</a>
				</div>
			</div>
		</div>
	</div>
</section>  <!--end  countdown -->

<section class="destinations_1">
	<div class="container">
		<div class="row">
			<div class="col-md-12 col-sm-12 col-xs-12">
				<div class="section-title text-center">
					<h2>Most popular Destinations</h2>
					<p>Lorem ipsum dolor sit amet consectetur adipiscing elit Etiam at ipsum at ligula vestibulum sodales Sed luctus orci vel nibh aliquam laoreet Aenean accumsan </p>
				</div>
			</div>
		</div>
		<div class="destination-slider-active owl-carousel">
			<div class="single-destination">
				<figure>
					<a href="#"><img src="images/destination/1.jpg" alt="">
					</a>
					<figcaption>
						<a href="#" class="travel-booking-btn hvr-shutter-out-horizontal">Read More</a>
					</figcaption>
				</figure>
				<div class="des-city">
					<a href="#"><i class="fa fa-map-marker"></i>Sydney, Australia</a>
					<h4>Opera House <span>3 Tours</span></h4>
				</div>
			</div> <!-- single popular destination  end-->

			<div class="single-destination">
				<figure>
					<a href="#"><img src="images/destination/5.jpg" alt="">
					</a>
					<figcaption>
						<a href="#" class="travel-booking-btn hvr-shutter-out-horizontal">Read More</a>
					</figcaption>
				</figure>
				<div class="des-city">
					<a href="#"><i class="fa fa-map-marker"></i>London, Eangland</a>
					<h4>Tower Bridge<span>5 Tours</span></h4>
				</div>
			</div> <!-- single popular destination  end-->

			<div class="single-destination">
				<figure>
					<a href="#"><img src="images/destination/3.jpg" alt="">
					</a>
					<figcaption>
						<a href="#" class="travel-booking-btn hvr-shutter-out-horizontal">Read More</a>
					</figcaption>
				</figure>
				<div class="des-city">
					<a href="#"><i class="fa fa-map-marker"></i>Paris, France</a>
					<h4>Eiffel Tower<span>4 Tours</span></h4>
				</div>
			</div> <!-- single popular destination  end-->

			<div class="single-destination">
				<figure>
					<a href="#"><img src="images/destination/4.jpg" alt="">
					</a>
					<figcaption>
						<a href="#" class="travel-booking-btn hvr-shutter-out-horizontal">Read More</a>
					</figcaption>
				</figure>
				<div class="des-city">
					<a href="#"><i class="fa fa-map-marker"></i>New york, USA</a>
					<h4>Statue Of Liberty<span>3 Tours</span></h4>
				</div>
			</div> <!-- single popular destination  end-->

			<div class="single-destination">
				<figure>
					<a href="#"><img src="images/destination/5.jpg" alt="">
					</a>
					<figcaption>
						<a href="#" class="travel-booking-btn hvr-shutter-out-horizontal">Read More</a>
					</figcaption>
				</figure>
				<div class="des-city">
					<a href="#"><i class="fa fa-map-marker"></i>Agra, India</a>
					<h4>Tajmahal<span>5 Tours</span></h4>
				</div>
			</div> <!-- single popular destination  end-->
		</div>
	</div>
</section> <!-- end popular destination-->

<section class="travelsers-bg">
	<div class="container">
		<div class="row">
			<div class="col-md-12 col-sm-12 col-xs-12">
				<div class="section-title-white text-center">
					<h2>Why Choose travlestar</h2>
					<p>Lorem ipsum dolor sit amet consectetur adipiscing elit Etiam at ipsum at ligula vestibulum sodales Sed luctus orci vel nibh aliquam laoreet Aenean accumsan </p>
				</div>
			</div>
		</div>
		<div class="row">
			<!-- single travel start -->
			<div class="col-12 col-sm-6 col-md-6 col-lg-4">
				<div class="single-travel">
					<div class="media">
						<div class="media-body travel-content">
							<h4>Travel Arrangements</h4>
							<p>Lorem ipsum dolor sit amet consect adiu piscing elit sed diam nonum euismo tincidunt ut.</p>
						</div>
					</div>
				</div>
			</div> <!-- single travel end -->

			<div class="col-12 col-sm-6 col-md-6 col-lg-4">
				<div class="single-travel">
					<div class="media">
						<div class="media-body travel-content">
							<h4>Cheap Flights</h4>
							<p>Lorem ipsum dolor sit amet consect adiu piscing elit sed diam nonum euismo tincidunt ut.</p>
						</div>
					</div>
				</div>
			</div> <!-- single travel end -->

			<div class="col-12 col-sm-6 col-md-6 col-lg-4">
				<div class="single-travel">
					<div class="media">
						<div class="media-body travel-content">
							<h4>Hand-picked tours</h4>
							<p>Lorem ipsum dolor sit amet consect adiu piscing elit sed diam nonum euismo tincidunt ut.</p>
						</div>
					</div>
				</div>
			</div> <!-- single travel end -->

			<div class="col-12 col-sm-6 col-md-6 col-lg-4">
				<div class="single-travel">
					<div class="media">
						<div class="media-body travel-content">
							<h4>Privet Guide</h4>
							<p>Lorem ipsum dolor sit amet consect adiu piscing elit sed diam nonum euismo tincidunt ut.</p>
						</div>
					</div>
				</div>
			</div> <!-- single travel end -->

			<div class="col-12 col-sm-6 col-md-6 col-lg-4">
				<div class="single-travel">
					<div class="media">
						<div class="media-body travel-content">
							<h4>Special Activities</h4>
							<p>Lorem ipsum dolor sit amet consect adiu piscing elit sed diam nonum euismo tincidunt ut.</p>
						</div>
					</div>
				</div>
			</div> <!-- single travel end -->

			<div class="col-12 col-sm-6 col-md-6 col-lg-4">
				<div class="single-travel">
					<div class="media">
						<div class="media-body travel-content">
							<h4>Best Price Guarantee</h4>
							<p>Lorem ipsum dolor sit amet consect adiu piscing elit sed diam nonum euismo tincidunt ut.</p>
						</div>
					</div>
				</div>
			</div> <!-- single travel end -->
		</div>
	</div>
</section> <!-- choose travelsers end here -->

<!-- guide and Expert Advice strat -->
<section class="blog_area">
	<div class="container">
		<div class="row">
			<div class="col-md-12 col-sm-12 col-xs-12">
				<div class="section-title text-center">
					<h2>Travel guide and Expert Advice</h2>
					<p>Lorem ipsum dolor sit amet consectetur adipiscing elit Etiam at ipsum at ligula vestibulum sodales Sed luctus orci vel nibh aliquam laoreet Aenean accumsan </p>
				</div>
			</div>
		</div>
		<div class="row">
			<!-- single travel blog-->
			<div class="col-12 col-sm-6 col-md-6 col-lg-4 phone-layout-s">
				<div class="single-travel-blog">
					<div class="blog-image">
						<a href="#"><img src="images/blog/1.jpg" alt="">
						</a>
					</div>
					<div class="blog-content">
						<div class="blog-meta">
							<div class="post-date">
								<span>12 July, 2019</span>
							</div>
							<ul class="post-social">
								<li><a href="#"><i class="fa fa-comments"></i>3</a>
								</li>
								<li><a href="#"><i class="fa fa-heart-o"></i>43</a>
								</li>
							</ul>
						</div>
						<div class="blog-post-content">
							<h4><a href="" title="">Tips for taking a long-term trip with kids.</a></h4>
							<p>Lorem ipsum dolor sit amet consepctetur adipiscing elit Etiam at ipsum at ligula vestibulum sodales Sed luctus.</p>
							<a href="#">Read More <i class="fa fa-angle-right"></i></a>
						</div>
					</div>
				</div>
			</div> <!--end single travel guide & security-->

			<div class="col-12 col-sm-6 col-md-6 col-lg-4 phone-layout-s">
				<div class="single-travel-blog">
					<div class="blog-image">
						<a href="#"><img src="images/blog/2.jpg" alt="">
						</a>
					</div>
					<div class="blog-content">
						<div class="blog-meta">
							<div class="post-date">
								<span>12 July, 2019</span>
							</div>
							<ul class="post-social">
								<li><a href="#"><i class="fa fa-comments"></i>3</a>
								</li>
								<li><a href="#"><i class="fa fa-heart-o active"></i>43</a>
								</li>
							</ul>
						</div>
						<div class="blog-post-content">
							<h4><a href="" title="">Tips for taking a long-term trip with kids.</a></h4>
							<p>Lorem ipsum dolor sit amet consepctetur adipiscing elit Etiam at ipsum at ligula vestibulum sodales Sed luctus.</p>
							<a href="#">Read More <i class="fa fa-angle-right"></i></a>
						</div>
					</div>
				</div>
			</div> <!--end single travel guide & security-->

			<div class="col-12 col-sm-6 col-md-6 col-lg-4 phone-layout-s">
				<div class="single-travel-blog">
					<div class="blog-image">
						<a href="#"><img src="images/blog/3.jpg" alt="">
						</a>
					</div>
					<div class="blog-content">
						<div class="blog-meta">
							<div class="post-date">
								<span>12 July, 2019</span>
							</div>
							<ul class="post-social">
								<li><a href="#"><i class="fa fa-comments"></i>3</a>
								</li>
								<li><a href="#"><i class="fa fa-heart-o"></i>43</a>
								</li>
							</ul>
						</div>
						<div class="blog-post-content">
							<h4><a href="" title="">Tips for taking a long-term trip with kids.</a></h4>
							<p>Lorem ipsum dolor sit amet consepctetur adipiscing elit Etiam at ipsum at ligula vestibulum sodales Sed luctus.</p>
							<a href="#">Read More <i class="fa fa-angle-right"></i></a>
						</div>
					</div>
				</div>
			</div> <!-- single travel guide & security end-->
		</div>
	</div>
</section> <!--End guide and Expert Advice strat -->





<!-- testimonial area start here -->
<section class="section-paddings testimonial-two" id="testimonial_one">
    <div class="testimonial-wrapper">
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    <div class="section-title">
                        <h2>What Our Happy Travelers Say</h2>
                        <p>Lorem ipsum dolor sit amet consectetur adipiscing elit Etiam at ipsum at ligula .</p>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-md-12 col-sm-12">
                    <!-- start top media -->
                    <div class="top-testimonial-image slick-pagination">
                        <div class="carousel-images slider-nav-two">
                            <div class="images_single"><img src="images/client/3.jpg" alt="1" class="img-responsive img-circle"></div>
                            <div class="images_single"><img src="images/client/9.jpg" alt="3" class="img-responsive img-circle"></div>
                            <div class="images_single"><img src="images/client/6.jpg" alt="2" class="img-responsive img-circle"></div>
                            <div class="images_single"><img src="images/client/9.jpg" alt="3" class="img-responsive img-circle"></div>
                        </div>
                    </div><!-- end top media images -->

                    <!-- bottom testimonial message -->
                    <div class="block-text">
                        <div class="carousel-text slider-for-two">
                            <div class="single-box">
                                <p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt utrinyi dolore magna aliqimbf adiminim veniamp nostrud exer tatjhion ullamc orperea commodo consequ euismod laoreet dolore magna.
                                </p>
                                <div class="client-bio">
                                    <h3>Jhonthan Smith</h3>
                                    <span>London Trip Traveler</span>
                                </div>
                                <ul class="rating d-flex justify-content-center">
                                    <li><i class="fa fa-star"></i></li>                                    
                                    <li><i class="fa fa-star"></i></li>                                    
                                    <li><i class="fa fa-star"></i></li>                                    
                                    <li><i class="fa fa-star"></i></li>                                    
                                    <li><i class="fa fa-star"></i></li>                                    
                                </ul>
                            </div>
                            <div class="single-box">
                                <p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit,  utrinyi dolore magna aliquam erat volutpat Upt wisi enimbf adiminim veniamp nostrud exer tatjhion ullamc orperea commodo consequ euismod laoreetore magna.
                                </p>
                                <div class="client-bio">
                                    <h3>Blake Lively</h3>
                                    <span>Martin, Parent</span>
                                </div>
                                <ul class="rating d-flex justify-content-center">
                                    <li><i class="fa fa-star"></i></li>                                    
                                    <li><i class="fa fa-star"></i></li>                                    
                                    <li><i class="fa fa-star"></i></li>                                    
                                    <li><i class="fa fa-star"></i></li>                                    
                                    <li><i class="fa fa-star"></i></li>                                    
                                </ul>
                            </div>
                            <div class="single-box">
                                <p>Lorem ipsum dolor sit amet, consected diam nonummy nibh euismod tincidunt utrinyi dolore magna aliquam erat volutpat Upt wisi enimbf adiminim veniamp nostrud exer tatjhion ullamc orperea commodo consequ euismo dolore magna.
                                </p>
                                <div class="client-bio">
                                    <h3>Charlie Puth</h3>
                                    <span>Martin, Parent</span>
                                </div>
                                <ul class="rating d-flex justify-content-center">
                                    <li><i class="fa fa-star"></i></li>                                    
                                    <li><i class="fa fa-star"></i></li>                                    
                                    <li><i class="fa fa-star"></i></li>                                    
                                    <li><i class="fa fa-star"></i></li>                                    
                                    <li><i class="fa fa-star"></i></li>                                    
                                </ul>
                            </div>
                            <div class="single-box">
                                <p>Lorem ipsum dolor sit amet, consectit, sed diam nonummy nibh euismod tincidunt utrinyi dolore magna alpat Upt wisi enimbf adiminim veniamp nostrud exer tatjhion ullamc orperea commodo consequ euismod laoreetna.
                                </p>
                                <div class="client-bio">
                                    <h3>Jessica Alba</h3>
                                    <span>Martin, Parent</span>
                                </div>
                                <ul class="rating d-flex justify-content-center">
                                    <li><i class="fa fa-star"></i></li>                                    
                                    <li><i class="fa fa-star"></i></li>                                    
                                    <li><i class="fa fa-star"></i></li>                                    
                                    <li><i class="fa fa-star"></i></li>                                    
                                    <li><i class="fa fa-star"></i></li>                                    
                                </ul>
                            </div>
                        </div>
                    </div><!-- bottom testimonial message -->
                </div><!-- /.block-text -->
            </div>
        </div>
    </div>
</section><!-- testimonial area end here -->







<div class="section-paddings incredible-places">
	<div class="container">
		<div class="row">
			<div class="col-md-12 col-sm-12 col-xs-12">
				<div class="section-title text-center">
					<h2>Incredible Place</h2>
					<p>Lorem ipsum dolor sit amet consectetur adipiscing elit Etiam at ipsum at ligula vestibulum sodales Sed luctus orci vel nibh aliquam laoreet Aenean accumsan</p>
				</div>
			</div>
		</div>
		<div class="row places_img_wrapper">
			<div class="col-12 col-sm-6 col-md-6 col-lg-4">
				<div class="single-place">
					<figure>
						<img src="images/place/1.jpg" alt="">
						<figcaption>
							<a href="images/place/1.jpg" title=""><i class="fa fa-eye"></i></a>
							<h4>Place <span>Eiffel Tower</span></h4>
							<h3>Caption By: <span>Michel Jusi</span></h3>
						</figcaption>
					</figure>
				</div>
			</div> <!-- end single place -->

			<div class="col-12 col-sm-6 col-md-6 col-lg-4">
				<div class="single-place">
					<figure>
						<img src="images/place/2.jpg" alt="">
						<figcaption>
							<a href="images/place/2.jpg" title=""><i class="fa fa-eye"></i></a>
							<h4>Place <span>China Town</span></h4>
							<h3>Caption By: <span>Daniel Baci</span></h3>
						</figcaption>
					</figure>
				</div>
			</div> <!-- end single place -->

			<div class="col-12 col-sm-6 col-md-6 col-lg-4">
				<div class="single-place">
					<figure>
						<img src="images/place/3.jpg" alt="">
						<figcaption>
							<a href="images/place/3.jpg" title=""><i class="fa fa-eye"></i></a>
							<h4>Place <span>England Bridge</span></h4>
							<h3>Caption By: <span>John Adam</span></h3>
						</figcaption>
					</figure>
				</div>
			</div> <!-- end single place -->

			<div class="col-12 col-sm-6 col-md-6 col-lg-4">
				<div class="single-place">
					<figure>
						<img src="images/place/4.jpg" alt="">
						<figcaption>
							<a href="images/place/4.jpg" title=""><i class="fa fa-eye"></i></a>
							<h4>Place <span>Eiffel Tower</span></h4>
							<h3>Caption By: <span>Michel Jusi</span></h3>
						</figcaption>
					</figure>
				</div>
			</div> <!-- end single place -->

			<div class="col-12 col-sm-6 col-md-6 col-lg-4">
				<div class="single-place">
					<figure>
						<img src="images/place/5.jpg" alt="">
						<figcaption>
							<a href="images/place/5.jpg" title=""><i class="fa fa-eye"></i></a>
							<h4>Place <span>China Town</span></h4>
							<h3>Caption By: <span>Daniel Baci</span></h3>
						</figcaption>
					</figure>
				</div>
			</div> <!-- end single place -->

			<div class="col-12 col-sm-6 col-md-6 col-lg-4">
				<div class="single-place">
					<figure>
						<img src="images/place/6.jpg" alt="">
						<figcaption>
							<a href="images/place/6.jpg" title=""><i class="fa fa-eye"></i></a>
							<h4>Place <span>England Bridge</span></h4>
							<h3>Caption By: <span>John Adam</span></h3>
						</figcaption>
					</figure>
				</div>
			</div> <!-- end single place -->
		</div>
	</div>
</div> <!-- incredible place end here -->



<section class="our_partners">
	<div class="container">
		<div class="row">
			<div class="col-md-12 col-sm-12 col-xs-12">
				<div class="section-title text-center">
					<h2>Our Trusted Partners</h2>
					<p>Lorem ipsum dolor sit amet consectetur adipiscing elit Etiam at ipsum at ligula vestibulum sodales Sed luctus orci vel nibh aliquam laoreet Aenean accumsan </p>
				</div>
			</div>
		</div>
		<div class="row">
			<!-- partners images -->
			<div class="partner-slider-active owl-carousel">
				<div class="single-pertner">
					<div class="partner-image">
						<a href="#"><img src="images/partner/1.png" alt="">
						</a>
					</div>
				</div>
				<div class="single-pertner">
					<div class="partner-image">
						<a href="#"><img src="images/partner/2.png" alt="">
						</a>
					</div>
				</div>
				<div class="single-pertner">
					<div class="partner-image">
						<a href="#"><img src="images/partner/3.png" alt="">
						</a>
					</div>
				</div>
				<div class="single-pertner">
					<div class="partner-image">
						<a href="#"><img src="images/partner/4.png" alt="">
						</a>
					</div>
				</div>
				<div class="single-pertner">
					<div class="partner-image">
						<a href="#"><img src="images/partner/5.png" alt="">
						</a>
					</div>
				</div>
			</div>
		</div>
		<!-- partners images -->
		<div class="row">
			<!-- partners images -->
			<div class="partner-slider-active owl-carousel">
				<div class="single-pertner">
					<div class="partner-image">
						<a href="#"><img src="images/partner/1.png" alt="">
						</a>
					</div>
				</div>
				<div class="single-pertner">
					<div class="partner-image">
						<a href="#"><img src="images/partner/2.png" alt="">
						</a>
					</div>
				</div>
				<div class="single-pertner">
					<div class="partner-image">
						<a href="#"><img src="images/partner/3.png" alt="">
						</a>
					</div>
				</div>
				<div class="single-pertner">
					<div class="partner-image">
						<a href="#"><img src="images/partner/4.png" alt="">
						</a>
					</div>
				</div>
				<div class="single-pertner">
					<div class="partner-image">
						<a href="#"><img src="images/partner/5.png" alt="">
						</a>
					</div>
				</div>
			</div>
		</div>	<!-- end partners images -->
	</div>
</section> <!--end partner section -->

<footer class="footer-area">
	<div class="container">
		<div class="row">
			<!-- footer left -->
			<div class="col-12 col-sm-6 col-md-6 col-lg-3">
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
			<div class="col-12 col-sm-6 col-md-6 col-lg-2">
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
			</div>	<!-- footer destination -->

			<div class="col-12 col-sm-6 col-md-6 col-lg-4">
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
			</div>	<!-- footer latest news -->

			<!-- footer contact -->
			<div class="col-12 col-sm-6 col-md-6 col-lg-3 f-phone-responsive">
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
			</div>	<!-- footer contact -->
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
    <!-- jquery -->
    <script src="js/vendor/jquery-3.2.0.min.js"></script>
    <!-- bootstrap js -->
    <script src="js/bootstrap.min.js"></script>    
    <script src="js/popper.min.js"></script>
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
    <!-- Revolution JS -->
    <script src="js/assets/revolution/jquery.themepunch.revolution.min.js"></script>
    <script src="js/assets/revolution/jquery.themepunch.tools.min.js"></script>
    <script src="js/assets/revolution/extensions/revolution.extension.actions.min.js"></script>
    <script src="js/assets/revolution/extensions/revolution.extension.carousel.min.js"></script>
    <script src="js/assets/revolution/extensions/revolution.extension.kenburn.min.js"></script>
    <script src="js/assets/revolution/extensions/revolution.extension.layeranimation.min.js"></script>
    <script src="js/assets/revolution/extensions/revolution.extension.migration.min.js"></script>
    <script src="js/assets/revolution/extensions/revolution.extension.navigation.min.js"></script>
    <script src="js/assets/revolution/extensions/revolution.extension.parallax.min.js"></script>
    <script src="js/assets/revolution/extensions/revolution.extension.slideanims.min.js"></script>
    <script src="js/assets/revolution/extensions/revolution.extension.video.min.js"></script>
    <script src="js/assets/revolution/revolution.js"></script>
    <!-- plugin js -->
    <script src="js/plugins.js"></script>
    <!-- select2 js -->
    <script src="js/select2.min.js"></script>    
    <script src="js/colors.js"></script>
    <!-- customSelect Js -->
    <script src="js/jquery-customselect.js"></script>
    <!-- custom js -->
    <script src="js/custom.js"></script>
</body>
</html>
