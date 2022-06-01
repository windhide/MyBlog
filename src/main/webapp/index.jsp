<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8" />
<title>小星的日常分享</title>

<!-- Meta Data -->
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="format-detection" content="telephone=no" />
<meta name="format-detection" content="address=no" />
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
<link rel="apple-touch-icon" sizes="144x144"
	href="assets/images/favicons/apple-touch-icon-144x144.png">
<link rel="apple-touch-icon" sizes="114x114"
	href="assets/images/favicons/apple-touch-icon-114x114.png">
<link rel="apple-touch-icon" sizes="72x72"
	href="assets/images/favicons/apple-touch-icon-72x72.png">
<link rel="apple-touch-icon" sizes="57x57"
	href="assets/images/favicons/apple-touch-icon-57x57.png">
<link rel="shortcut icon" href="assets/images/favicons/favicon.png"
	type="image/png">

<!-- Styles -->
<link rel="stylesheet" type="text/css" href="assets/styles/style.css" />
<link rel="stylesheet" type="text/css" href="assets/demo/style-demo.css" />

<!-- Mapbox-->
<script src='https://api.mapbox.com/mapbox-gl-js/v1.4.1/mapbox-gl.js'></script>
<link href='https://api.mapbox.com/mapbox-gl-js/v1.4.1/mapbox-gl.css'
	rel='stylesheet' />

</head>
<body>
	<!-- Preloader -->
	<div class="preloader">
		<div class="preloader__wrap">
			<div class="circle-pulse">
				<div class="circle-pulse__1"></div>
				<div class="circle-pulse__2"></div>
			</div>
			<div class="preloader__progress">
				<span></span>
			</div>
		</div>
	</div>

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
							<li><a href="https://www.facebook.com/profile.php?id=100011672656136"><i
									class="font-icon icon-facebook1"></i></a></li>
							<li><a href="https://twitter.com/WindHide520"><i
									class="font-icon icon-twitter1"></i></a></li>
							<li><a href="https://www.instagram.com/windhide520/"><i
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
				<aside class="col-12 col-md-12 col-lg-2">
					<div class="sidebar box sticky-column">
						<ul class="nav js-tabs">
							<li class="nav__item"><a class="active" href="#about-tab"><i
									class="icon-user"></i>关于</a></li>
							<li class="nav__item"><a href="#resume-tab"><i
									class="icon-file-text"></i>简历</a></li>
							<li class="nav__item"><a href="#works-tab"><i
									class="icon-codesandbox"></i>作品</a></li>
							<li class="nav__item"><a href="#blog-tab"><i
									class="icon-book-open"></i>Blog</a></li>
							<li class="nav__item"><a href="#contact-tab"><i
									class="icon-book"></i>联系我</a></li>
						</ul>
					</div>
				</aside>

				<!-- Content -->
				<div class="col-12 col-md-12 col-lg-10">
					<div class="box box-content" id="content">
						<div class="content">
							<!-- ABOUT -->
							<div id="about-tab" class="tabcontent active">
								<div class="pb-0 pb-sm-2">
									<h1 class="title title--h1 first-title title__separate">自述</h1>
									<p>你好！我是吴浩冶，英文名:Wind Hide。</p>
									<p>${about.introduce}</p>
								</div>

								<!-- What -->
								<div class="mt-1">
									<h2 class="title title--h3">我的近况</h2>
									<div class="row">


										<!-- Case Item -->
										<div class="col-12 col-lg-6">
											<div class="case-item">
												<img class="case-item__icon" src="assets/icons/icon-app.svg"
													alt="" />
												<div>
													<h3 class="title title--h4">电子设备爱好者</h3>
													<p class="case-item__caption">一个狂热的手机工具开发者（懒狗）</p>
												</div>
											</div>
										</div>

										<!-- Case Item -->
										<div class="col-12 col-lg-6">
											<div class="case-item">
												<img class="case-item__icon"
													src="assets/icons/icon-photo.svg" alt="" />
												<div>
													<h3 class="title title--h4">摄影</h3>
													<p class="case-item__caption">我曾幻想着能够拍出高质量的图片（但是没有）</p>
												</div>
											</div>
										</div>
									</div>
								</div>




							</div>

							<!-- RESUME -->
							<div id="resume-tab" class="tabcontent">
								<div class="pb-2">
									<h1 class="title title--h1 first-title title__separate">简历</h1>
								</div>

								<!-- Experience -->
								<div class="row">
									<div class="col-12">
										<h2 class="title title--h3">
											<img class="title-icon" src="assets/icons/icon-education.svg"
												alt="" /> 教育经历
										</h2>
										<div class="timeline">
											<c:forEach items="${Resume_edu }" var="edu">
												<!-- Item -->
												<article class="timeline__item">
													<h5 class="title title--h5 timeline__title">${edu.edu_bigcontext }</h5>
													<span class="timeline__period">${edu.timeline }</span>
													<p class="timeline__description">${edu.edu_context }</p>
												</article>
											</c:forEach>
										</div>
									</div>

									<div class="col-12">
										<h2 class="title title--h3">
											<img class="title-icon"
												src="assets/icons/icon-experience.svg" alt="" /> 工作经验
										</h2>
										<div class="timeline">
											<c:forEach items="${Resume_exp }" var="exp">
												<!-- Item -->
												<article class="timeline__item">
													<h5 class="title title--h5 timeline__title">${exp.exp_bigcontext }</h5>
													<span class="timeline__period">${exp.timeline }</span>
													<p class="timeline__description">${exp.exp_context }</p>
												</article>
											</c:forEach>


										</div>
									</div>
								</div>

								<!-- Skills -->
								<div class="row">
									<div class="col-12">
										<h2 class="title title--h3">我会的技能</h2>
										<div class="box box__border">
											<!-- Progress -->
											<div class="progress">
												<div class="progress-bar" role="progressbar"
													aria-valuenow="80" aria-valuemin="0" aria-valuemax="100">
													<div class="progress-text">
														<span>编程</span><span>80%</span>
													</div>
												</div>
												<div class="progress-text">
													<span>编程</span>
												</div>
											</div>

											<!-- Progress -->
											<div class="progress">
												<div class="progress-bar" role="progressbar"
													aria-valuenow="100" aria-valuemin="0" aria-valuemax="100">
													<div class="progress-text">
														<span>吃饭</span><span>100%</span>
													</div>
												</div>
												<div class="progress-text">
													<span>吃饭</span>
												</div>
											</div>

											<!-- Progress -->
											<div class="progress">
												<div class="progress-bar" role="progressbar"
													aria-valuenow="90" aria-valuemin="0" aria-valuemax="100">
													<div class="progress-text">
														<span>Photoshop</span><span>90%</span>
													</div>
												</div>
												<div class="progress-text">
													<span>Photoshop</span>
												</div>
											</div>

											<!-- Progress -->
											<div class="progress">
												<div class="progress-bar" role="progressbar"
													aria-valuenow="70" aria-valuemin="0" aria-valuemax="100">
													<div class="progress-text">
														<span>创新</span><span>70%</span>
													</div>
												</div>
												<div class="progress-text">
													<span>创新</span>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>

							<!-- WORKS -->
							<div id="works-tab" class="tabcontent">
								<div class="pb-2">
									<h1 class="title title--h1 first-title title__separate">杂乱的作品</h1>
								</div>

								<!-- Filter -->
								<div class="select">
									<span class="placeholder">选择种类</span>
									<ul class="filter">
										<li class="filter__item">种类</li>
										<li class="filter__item active" data-filter="*"><a
											class="filter__link active" href="#filter">全部</a></li>
										<c:forEach items="${WorkType }" var="worktype">

											<li class="filter__item"
												data-filter=".category-${worktype.typeclass }"><a
												class="filter__link" href="#filter">${worktype.typename }</a></li>


										</c:forEach>
									</ul>
									<input type="hidden" name="changemetoo" />
								</div>

								<!-- Gallery -->
								<div class="gallery-grid js-grid-row js-filter-container">
									<div class="gutter-sizer"></div>
									<c:forEach items="${WorkT }" var="workt">
										<!-- Item 1 -->
										<figure
											class="gallery-grid__item category-${workt.typeclass }">
											<div class="gallery-grid__image-wrap">
												<img class="gallery-grid__image cover lazyload"
													src="${workt.imgsrc }" data-zoom alt="" />
											</div>
											<figcaption class="gallery-grid__caption">
												<h4 class="title title--h6 gallery-grid__title">${workt.work_title }</h4>
												<span class="gallery-grid__category">${workt.typename}</span>
											</figcaption>
										</figure>
									</c:forEach>
								</div>
								<!-- Gallery End -->
							</div>

							<!-- BLOG -->
							<div id="blog-tab" class="tabcontent">
								<div class="pb-2">
									<h1 class="title title--h1 first-title title__separate">Blog</h1>
								</div>

								<!-- News -->
								<div class="news-grid">
									<!-- Post -->

									<c:forEach items="${Little_Blog }" var="lblog">

										<article class="news-item box">
											<div class="news-item__image-wrap overlay overlay--45">
												<div class="news-item__date">
													${lblog.day }<span>${lblog.mouth }月</span>
												</div>
												<a class="news-item__link" href="big_blog_byid?id=${lblog.big_blog_id }"></a> <img
													class="cover lazyload" src="${lblog.bigimgsrc }" alt="" />
											</div>
											<div class="news-item__caption">
												<h2 class="title title--h4">${lblog.blg_title }</h2>
												<p>${lblog.intro }</p>
											</div>
										</article>
									</c:forEach>



								</div>
							</div>

							<!-- CONTACT -->
							<div id="contact-tab" class="tabcontent">
								<div class="pb-2">
									<h1 class="title title--h1 first-title title__separate">联系我</h1>
								</div>

								<!-- Contact -->
								<div class="map" id="map"></div>
								
							</div>
						</div>
					</div>
					<!-- Footer -->
					<footer class="footer"><a href="http://beian.miit.gov.cn" style="color: gray; text-decoration: none">© 湘ICP备2020021650号</a></footer>
				</div>
			</div>
		</div>
	</main>

	<div class="back-to-top"></div>

	<!-- SVG masks -->
	<svg class="svg-defs">
			<clipPath id="avatar-box">
				<path
			d="M1.85379 38.4859C2.9221 18.6653 18.6653 2.92275 38.4858 1.85453 56.0986.905299 77.2792 0 94 0c16.721 0 37.901.905299 55.514 1.85453 19.821 1.06822 35.564 16.81077 36.632 36.63137C187.095 56.0922 188 77.267 188 94c0 16.733-.905 37.908-1.854 55.514-1.068 19.821-16.811 35.563-36.632 36.631C131.901 187.095 110.721 188 94 188c-16.7208 0-37.9014-.905-55.5142-1.855-19.8205-1.068-35.5637-16.81-36.63201-36.631C.904831 131.908 0 110.733 0 94c0-16.733.904831-37.9078 1.85379-55.5141z" />
			</clipPath>
			<clipPath id="avatar-hexagon">
				<path
			d="M0 27.2891c0-4.6662 2.4889-8.976 6.52491-11.2986L31.308 1.72845c3.98-2.290382 8.8697-2.305446 12.8637-.03963l25.234 14.31558C73.4807 18.3162 76 22.6478 76 27.3426V56.684c0 4.6805-2.5041 9.0013-6.5597 11.3186L44.4317 82.2915c-3.9869 2.278-8.8765 2.278-12.8634 0L6.55974 68.0026C2.50414 65.6853 0 61.3645 0 56.684V27.2891z" />
			</clipPath>
		</svg>



	<!-- JavaScripts -->
	<script src="assets/js/jquery-3.4.1.min.js"></script>
	<script src="assets/js/plugins.min.js"></script>
	<script src="assets/js/common.js"></script>

	<!-- Mapbox init -->
	<script src="assets/js/mapbox.init.js"></script>

	<script src="assets/demo/plugins-demo.js"></script>


</body>
</html>