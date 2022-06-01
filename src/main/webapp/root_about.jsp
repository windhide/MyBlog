<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
        <meta charset="utf-8">
        <link href="dist/images/logo.svg" rel="shortcut icon">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta name="description" content="Midone admin is super flexible, powerful, clean & modern responsive tailwind admin template with unlimited possibilities.">
        <meta name="keywords" content="admin template, Midone admin template, dashboard template, flat admin template, responsive admin template, web app">
        <meta name="author" content="LEFT4CODE">
        <title>博客后台-介绍</title>
        <!-- BEGIN: CSS Assets-->
        <link rel="stylesheet" href="dist/css/app.css" />
        <!-- END: CSS Assets-->
    </head>
    <!-- END: Head -->
    <body class="app">
        <!-- BEGIN: Mobile Menu -->
        <div class="mobile-menu md:hidden">
            <div class="mobile-menu-bar">
                <a href="" class="flex mr-auto">
                    <img alt="Midone Tailwind HTML Admin Template" class="w-6" src="dist/images/logo.svg">
                </a>
                <a href="javascript:;" id="mobile-menu-toggler"> <i data-feather="bar-chart-2" class="w-8 h-8 text-white transform -rotate-90"></i> </a>
            </div>
            <ul class="border-t border-theme-24 py-5 hidden">
               
               <li>
			       <a href="root_about" class="menu">
			           <div class="menu__icon"> <i data-feather="users"></i> </div>
			           <div class="menu__title"> 介绍 </div>
			       </a>
			   </li>
			   <li>
			       <a href="root_resume" class="menu">
			           <div class="menu__icon"> <i data-feather="clock"></i> </div>
			           <div class="menu__title"> 简历 </div>
			       </a>
			   </li>
			   <li>
			       <a href="root_data_list" class="menu">
			           <div class="menu__icon"> <i data-feather="file-text"></i> </div>
			           <div class="menu__title"> 作品管理 </div>
			       </a>
			   </li>
			   <li>
			       <a href="root_side-menu-light-crud-form.jsp" class="menu">
			           <div class="menu__icon"> <i data-feather="edit"></i> </div>
			           <div class="menu__title"> 作品发布 </div>
			       </a>
			   </li>
			   <li>
			       <a href="blog_data_list" class="menu">
			           <div class="menu__icon"> <i data-feather="trello"></i> </div>
			           <div class="menu__title"> Blog管理 </div>
			       </a>
			   </li>
			   
			   <li>
			       <a href="root_side-menu-blog-crud-form.jsp" class="menu">
			           <div class="menu__icon"> <i data-feather="edit"></i> </div>
			           <div class="menu__title"> Blog发布 </div>
			       </a>
			   </li>
			   
			   
            </ul>
        </div>
        <!-- END: Mobile Menu -->
        <div class="flex">
            <!-- BEGIN: Side Menu -->
            <nav class="side-nav">
                <a href="" class="intro-x flex items-center pl-5 pt-4">
                    <img alt="Midone Tailwind HTML Admin Template" class="w-6" src="dist/images/logo.svg">
                    <span class="hidden xl:block text-white text-lg ml-3"> Wind<span class="font-medium">Hide</span> </span>
                </a>
                <div class="side-nav__devider my-6"></div>
                <ul>
                
                    <!-- 此处放menu -->
                     <!-- 此处放介绍 -->
                	<li>
					    <a href="root_about" class="side-menu side-menu--active">
					        <div class="side-menu__icon"> <i data-feather="users"></i></div>
					        <div class="side-menu__title"> 介绍 </div>
					    </a>
					</li>    
					<!-- 此处放简历 -->
                	<li>
					    <a href="root_resume" class="side-menu">
					        <div class="side-menu__icon"> <i data-feather="clock"></i></div>
					        <div class="side-menu__title"> 简历 </div>
					    </a>
					</li>             
					<!-- Data List -->
					<li>
					    <a href="root_data_list" class="side-menu">
					        <div class="side-menu__icon"> <i data-feather="file-text"></i>  </div>
					        <div class="side-menu__title"> 作品管理 </div>
					    </a>
					    
					</li>
                    
                    <!-- Blog Form -->
					<li>
					    <a href="root_side-menu-light-crud-form.jsp" class="side-menu">
					        <div class="side-menu__icon"> <i data-feather="edit"></i> </div>
					        <div class="side-menu__title"> 作品发布 </div>
					    </a>
					</li>
					
					<li>
					    <a href="blog_data_list" class="side-menu side-menu">
					        <div class="side-menu__icon"> <i data-feather="trello"></i> </div>
					        <div class="side-menu__title"> Blog管理 </div>
					    </a>
					</li>
					
					<li>
					    <a href="root_side-menu-blog-crud-form.jsp" class="side-menu side-menu">
					        <div class="side-menu__icon"> <i data-feather="edit"></i> </div>
					        <div class="side-menu__title"> Blog发布 </div>
					    </a>
					</li>
                </ul>
            </nav>
            <!-- END: Side Menu -->
            <!-- BEGIN: Content -->
            <div class="content">
                <!-- BEGIN: Top Bar -->
                <div class="top-bar">
                    <!-- BEGIN: Breadcrumb -->
                    <div class="-intro-x breadcrumb mr-auto hidden sm:flex"> <a href="root_index.jsp" class="">主页</a> <i data-feather="chevron-right" class="breadcrumb__icon"></i> <a href="" class="breadcrumb--active">介绍</a> </div>
                    <!-- END: Breadcrumb -->
                  
                </div>
                <!-- END: Top Bar -->
                <div class="intro-y flex items-center mt-8">
                    <h2 class="text-lg font-medium mr-auto">
                        介绍
                    </h2>
                </div>
                <div class="grid grid-cols-12 gap-6 mt-5">
                    <div class="intro-y col-span-12 lg:col-span-6">
                        <!-- BEGIN: Form Layout -->
						<form action="aboutUpdate" method="post" enctype="multipart/form-data">
                        <div class="intro-y box p-5">
                            
                            <div>
                                <label>姓名</label>
                                <input type="text" class="input w-full border mt-2" name="name" value="${list.name }" >
                            </div>
							<div class="mt-3">
                                <label>英文名</label>
                                <input type="text" class="input w-full border mt-2" name="engname" value="${list.engname }" >
                            </div>
							<div class="mt-3">
                                <label>邮箱</label>
                                <input type="text" class="input w-full border mt-2" name="email" value="${list.email }" >
                            </div>
                            <div class="mt-3">
                                <label>生日</label>
                                <input type="text" class="input w-full border mt-2" name="birthday" value="${list.birthday }" >
                            </div>
                            <div class="mt-3">
                                <label>电话</label>
                                <input type="text" class="input w-full border mt-2" name="tel" value="${list.tel }" >
                            </div>
                            <div class="mt-3">
                                <label>地址</label>
                                <input type="text" class="input w-full border mt-2" name="adr" value="${list.adr }" >
                            </div>
                           <div class="mt-3">
                                <label>自我介绍</label>
                                <textarea rows="" cols="" class="input h-48 w-full border mt-2" name="introduce" >${list.introduce }</textarea>
                            </div>
                            
                            
                            <div class="text-right mt-5">
                               
								<input type="submit" class="button w-24 bg-theme-1 text-white"  value="更改"/>
                            </div>
						</form>
						<!-- End: Form -->
                        </div>
                        <!-- END: Form Layout -->
                    </div>
                </div>
            </div>
            <!-- END: Content -->
        </div>
        <!-- BEGIN: Dark Mode Switcher-->
        <div data-url="side-menu-dark-crud-form.html" style="display: none;" class="dark-mode-switcher cursor-pointer shadow-md fixed bottom-0 right-0 box dark:bg-dark-2 border rounded-full w-40 h-12 flex items-center justify-center z-50 mb-10 mr-10">
            <div class="mr-4 text-gray-700 dark:text-gray-300">Dark Mode</div>
            <div class="dark-mode-switcher__toggle border"></div>
        </div>
        <!-- END: Dark Mode Switcher-->
        <!-- BEGIN: JS Assets-->
        <script src="src/js/markerclusterer.js"></script>
        <script src="https://maps.googleapis.com/maps/api/js?key=["your-google-map-api"]&libraries=places"></script>
        <script src="dist/js/app.js"></script>
        <!-- END: JS Assets-->
    </body>
</html>