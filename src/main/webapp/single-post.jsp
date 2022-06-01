<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8" />
    <title>小星的日常分享</title>

	<!-- Meta Data -->
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
	<meta name="format-detection" content="telephone=no"/>
    <meta name="format-detection" content="address=no"/>
    <meta name="author" content="ArtTemplate" />
    <meta name="description" content="vCard" />

    <!-- Twitter data -->
    <meta name="twitter:card" content="summary_large_image">
    <meta name="twitter:site" content="@ArtTemplates">
    <meta name="twitter:title" content="vCard">
    <meta name="twitter:description" content="vCard">
    <meta name="twitter:image" content="assets/images/social.jpg">

    <!-- Open Graph data -->
    <meta property="og:title" content="ArtTemplate" />
    <meta property="og:type" content="website" />
    <meta property="og:url" content="your url website" />
    <meta property="og:image" content="assets/images/social.jpg" />
    <meta property="og:description" content="vCard" />
    <meta property="og:site_name" content="vCard" />

	<!-- Favicons -->
	<link rel="apple-touch-icon" sizes="144x144" href="assets/images/favicons/apple-touch-icon-144x144.png">
	<link rel="apple-touch-icon" sizes="114x114" href="assets/images/favicons/apple-touch-icon-114x114.png">
	<link rel="apple-touch-icon" sizes="72x72" href="assets/images/favicons/apple-touch-icon-72x72.png">
	<link rel="apple-touch-icon" sizes="57x57" href="assets/images/favicons/apple-touch-icon-57x57.png">
	<link rel="shortcut icon" href="assets/images/favicons/favicon.png" type="image/png">

    <!-- Styles -->
	<link rel="stylesheet" type="text/css" href="assets/styles/style.css"/>
    <link rel="stylesheet" type="text/css" href="assets/demo/style-demo.css"/>
	
</head>
<body>
    <!-- Preloader -->
    <div class="preloader">
	    <div class="preloader__wrap">
		    <div class="circle-pulse">
                <div class="circle-pulse__1"></div>
                <div class="circle-pulse__2"></div>
            </div>
		    <div class="preloader__progress"><span></span></div>
		</div>
	</div>

	<!-- Scroll Indicator -->
    <div class="scroll-line"></div>

    <main class="main">
	    <!-- Header Image -->
	<div class="header-image">
			<div class="js-parallax"
				style="background-image: url(assets/img/image_header.jpg);"></div>
		</div>

		<div class="container gutter-top">
			<!-- Header -->
			<header class="header box">
				<div class="header__left">
					<div class="header__photo">
						<img class="header__photo-img" src="assets/img/head.png"
							alt="Ronald Robertson">
					</div>
					<div class="header__base-info">
						<h4 class="title titl--h4">${about.name}</h4>
						<div class="status">${about.engname}</div>
						<ul class="header__social">
							<li><a href="https://www.facebook.com"><i
									class="font-icon icon-facebook1"></i></a></li>
							<li><a href="https://www.twitter.com"><i
									class="font-icon icon-twitter1"></i></a></li>
							<li><a href="https://www.instagram.com"><i
									class="font-icon icon-instagram1"></i></a></li>
						</ul>
					</div>
				</div>
				<div class="header__right">
					<ul class="header__contact">
						<li><span class="overhead">邮箱</span>${about.email}</li>
						<li><span class="overhead">电话</span>${about.tel}</li>
					</ul>
					<ul class="header__contact">
						<li><span class="overhead">生日</span>${about.birthday}</li>
						<li><span class="overhead">地址</span>${about.adr}</li>
					</ul>
				</div>
			</header>
		        
			<div class="row sticky-parent">
			    <!-- Sidebar nav -->
                
				
				<!-- Content -->
		        <div class="">
				    <div class="box box-content">
						<!-- Post -->
						<div class="pb-3">
						    <header class="header-post">
                                <h1 class="title title--h1">${bblog.blog_frist_title }</h1>
								<div class="caption-post">
								    <p>${bblog.blog_second_title }</p>
								</div>
								<div class="header-post__image-wrap">
								    <img class="cover lazyload" src="${bblog.img1 }" data-zoom alt="" />
								</div>
							</header>
							<div class="caption-post">
								<p>${bblog.blog_context1 }</p>
								<p>${bblog.blog_context2 }</p>
								
						    </div>
							<div class="gallery-post">
							    <img class="gallery-post__item cover lazyload" src="${bblog.img2 }" data-zoom alt="" />
								<img class="gallery-post__item cover lazyload" src="${bblog.img3 }" data-zoom alt="" />
								<div class="gallery-post__caption">Work by Wind Hide</div>
							</div>
							<div class="caption-post">
							    <h3 class="title title--h3">${bblog.blog_blod_context }</h3>
								<p>${bblog.blog_context3 }</p>
								<blockquote class="block-quote">
								    <p>${bblog.blog_say }</p>
								    <span class="block-quote__author">吴浩冶</span>
								</blockquote>
								<p>${bblog.blog_context4 }</p>
								<p>${bblog.blog_context5 }</p>
							</div>
							<footer class="footer-post">
							    <a class="footer-post__share" href="https://www.facebook.com/profile.php?id=100011672656136"><i class="font-icon icon-facebook"></i></a>
								<a class="footer-post__share" href="https://twitter.com/WindHide520"><i class="font-icon icon-twitter"></i></a>
								<a class="footer-post__share" href="https://www.instagram.com/windhide520/"><i class="font-icon icon-instagram1"></i></a>
								<br />
							</footer>
							
							
						</div>
					    </div>
					</div>
					
					<!-- Footer -->
					<footer class="footer"><a href="http://beian.miit.gov.cn"  style="color: gray; text-decoration: none">© 湘ICP备2020021650号</a></footer>
		        </div>
				
			</div>
		</div>	
    </main>

    <div class="back-to-top"></div>
	
    <!-- SVG masks -->
    <svg class="svg-defs">
        <clipPath id="avatar-box">
            <path d="M1.85379 38.4859C2.9221 18.6653 18.6653 2.92275 38.4858 1.85453 56.0986.905299 77.2792 0 94 0c16.721 0 37.901.905299 55.514 1.85453 19.821 1.06822 35.564 16.81077 36.632 36.63137C187.095 56.0922 188 77.267 188 94c0 16.733-.905 37.908-1.854 55.514-1.068 19.821-16.811 35.563-36.632 36.631C131.901 187.095 110.721 188 94 188c-16.7208 0-37.9014-.905-55.5142-1.855-19.8205-1.068-35.5637-16.81-36.63201-36.631C.904831 131.908 0 110.733 0 94c0-16.733.904831-37.9078 1.85379-55.5141z"/>
        </clipPath>
        <clipPath id="avatar-hexagon">
             <path d="M0 27.2891c0-4.6662 2.4889-8.976 6.52491-11.2986L31.308 1.72845c3.98-2.290382 8.8697-2.305446 12.8637-.03963l25.234 14.31558C73.4807 18.3162 76 22.6478 76 27.3426V56.684c0 4.6805-2.5041 9.0013-6.5597 11.3186L44.4317 82.2915c-3.9869 2.278-8.8765 2.278-12.8634 0L6.55974 68.0026C2.50414 65.6853 0 61.3645 0 56.684V27.2891z"/>
        </clipPath>		
    </svg>
    
	<!-- Demo Menu -->
    <!-- Demo Menu -->
	
	<!-- JavaScripts -->
	<script src="assets/js/jquery-3.4.1.min.js"></script>
	<script src="assets/js/plugins.min.js"></script>
    <script src="assets/js/common.js"></script>
	<script src="assets/demo/plugins-demo.js"></script>
	
</body>
</html>