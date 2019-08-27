<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page import="com.qst.model.User"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%-- <%@ include file="filter.jsp" %> --%>
<!DOCTYPE html>
<html class="no-js" lang="zxx">
<head>
<style>

		.hide{

			display: none;

		}
		
	</style>
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

<section class="breadcrumb-blog-version-one">
    <div class="single-bredcurms" style="background-image:url('images/bercums/package-Version-01.jpg');">
       <div class="container">
           <div class="row">
               <div class="col-sm-12 col-md-12">
                    <div class="bredcrums-content">
                        <h2>Package One</h2>
                        <ul>
                            <li><a href="index2.jsp">Home</a></li>
                            <li class="active"><a href="package-version-one.html">Package Style One</a></li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section><!-- blog breadcrumb version one end here -->

<section class="related-tour popular-packages">
 <div class="container">
<div class="row">
<div class="col-sm-12   ">
<div class="col-sm-12">
                    <div class="section-title-3 mbt-100">
                        <h2>个人信息</h2>
                    </div>
                </div>
  <div class="col-sm-12 col-md-10 ">
            <table class="table table-striped">
	
	<thead>
		<tr>
		<th ><input name="" type="checkbox" value="" checked="checked"/></th>
			<th>订单号</th>
			<th>用户名</th>
			<th>价格</th>
			<th>唯一验证号</th>
			<th>邮箱</th>
			<th>旅行天数</th>
			<th>票数</th>
			<th>套餐名</th>
			<th>宾馆名</th>
		</tr>
	</thead>
	<tbody>
	  
      <tr height="50px">
        <td ><input name="" type="checkbox" value="" /></td>
        <td>${sessionScope.pay.id}</td>
        <td>${sessionScope.pay.name}</td>
        <td>${sessionScope.pay.price}</td>
        <td>${sessionScope.pay.phonenumber}</td>
        <td>${sessionScope.pay.email}</td>
        <td>${sessionScope.pay.day}</td>
        <td>${sessionScope.pay.ticket}</td>
        <td>${sessionScope.pay.pname}</td>
        <td>${sessionScope.pay.hname}</td>
      </tr>
     
	</tbody>
</table>
    <a href="PayServlet?type=${sessionScope.pay.phonenumber}" class="tablelink"><button>取消订单</button></a>

    <button value="隐藏支付码" onclick="fn()" style="display:block;" id="world">隐藏支付码 </button>	
    <a href="Pay" class="tablelink"><img src="images/pay.JPG" alt="" id="img" width="50%" heigth="50%" /></a>
    <script>		
    function fn(){			
    	var img=document.getElementById("img");			
    	if(document.getElementById("world").innerHTML=="显示支付码 ")
    	{	img.className="";				
			document.getElementById("world").innerHTML="隐藏支付码 ";				
    	}else{		
    		img.className="hide";				
        	document.getElementById("world").innerHTML="显示支付码 ";	
    				
    		}		
    	}	
    </script>

    </div>
    </div>
    </div>
    </div>
    </section>
             <!--   <div class="single-package">
                    <div class="package-image">
                        <a href="Dubaibook.jsp"><img src="images/packages/1.jpg" alt=""></a>
                    </div>
                    <div class="package-content">
                        <h3><a href="Dubaibook.jsp" title="">Dubai – All Stunning Places</a></h3>
                        <p>4 Days, 5 Nights Start From <span>$500</span>
                        </p>
                    </div>
                    <div class="package-calto-action">
                        <ul class="ct-action">
                            <li><a href="Dubaibook.jsp" class="travel-booking-btn hvr-shutter-out-horizontal">Book Now</a>
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
                        <a href="Thailandbook.jsp"><img src="images/packages/2.jpg" alt=""></a>
                    </div>
                    <div class="package-content">
                        <h3><a href="Thailandbook.jsp" title="">Thailand – All Stunning Places</a></h3>
                        <p>4 Days, 5 Nights Start From <span>$500</span>
                        </p>
                    </div>
                    <div class="package-calto-action">
                        <ul class="ct-action">
                            <li><a href="Thailandbook.jsp" class="travel-booking-btn hvr-shutter-out-horizontal">Book Now</a>
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

我在这里            <div class="col-12 col-sm-6 col-md-6 col-lg-4">
                <div class="single-package">
                    <div class="package-image">
                        <a href="England-package.jsp"><img src="images/packages/3.jpg" alt="">
                        </a>
                    </div>
                    <div class="package-content">
                        <h3><a href="England-package.jsp" title="">England – All Stunning Places</a></h3>
                        <p>4 Days, 5 Nights Start From <span>$500</span>
                        </p>
                    </div>
                    <div class="package-calto-action">
                        <ul class="ct-action">
                            <li><a href="England-package.jsp" class="travel-booking-btn hvr-shutter-out-horizontal">Book Now</a>
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
            </div> --> <!-- single package end -->
<!-- 
            <div class="col-12 col-sm-6 col-md-6 col-lg-4">
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
            </div> single package end            

            <div class="col-12 col-sm-6 col-md-6 col-lg-4">
                <div class="single-package">
                    <div class="package-image">
                        <a href="#"><img src="images/packages/1.jpg" alt=""></a>
                    </div>
                    <div class="package-content">
                        <h3><a href="" title="">Dubai – All Stunning Places</a></h3>
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
                        <a href="#"><img src="images/packages/2.jpg" alt=""></a>
                    </div>
                    <div class="package-content">
                        <h3><a href="" title="">Thailand – All Stunning Places</a></h3>
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
                        <a href="#"><img src="images/packages/3.jpg" alt="">
                        </a>
                    </div>
                    <div class="package-content">
                        <h3><a href="" title="">England – All Stunning Places</a></h3>
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
        <!-- </div>
        <div class="row pagination_wrapper">
            <div class="col-sm-12 text-center">
                <ul class="pagination">
                    <li class="active"><a href="#">1 <span class="sr-only">(current)</span></a></li>
                    <li><a href="#">2</a></li>
                    <li><a href="#">3</a></li>                    
                    <li><a href="#"><i class="fa fa-chevron-right"></i></a></li>
                </ul>
            </div>pagination end here
        </div>
    </div>
</section> end  popular packajge -->





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
