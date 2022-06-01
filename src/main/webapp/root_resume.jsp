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
        <title>博客后台-简历操作</title>
        <!-- BEGIN: CSS Assets-->
        <link rel="stylesheet" href="dist/css/app.css" />
        <!-- END: CSS Assets-->
    </head>
    <!-- END: Head -->
    <body class="app">
     <div class="modal" id="delete-confirmation-modal">
                    <div class="modal__content">
                        <div class="p-5 text-center">
                            <i data-feather="x-circle" class="w-16 h-16 text-theme-6 mx-auto mt-3"></i> 
                            <div class="text-3xl mt-5">确定要删除吗？</div>
                            <div class="text-gray-600 mt-2">删除以后无法恢复！</div>
                        </div>
                        <div class="px-5 pb-8 text-center">
                            <button type="button" data-dismiss="modal" class="button w-24 border text-gray-700 mr-1">取消</button>
                            <button type="button" data-dismiss="modal" class="button w-24 bg-theme-6 text-white" onclick="ok()">删除</button>
                        </div>
                    </div>
                </div>
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
					    <a href="root_about" class="side-menu">
					        <div class="side-menu__icon"> <i data-feather="users"></i></div>
					        <div class="side-menu__title"> 介绍 </div>
					    </a>
					</li>    
					<!-- 此处放简历 -->
                	<li>
					    <a href="root_resume" class="side-menu side-menu--active">
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
                    <div class="-intro-x breadcrumb mr-auto hidden sm:flex"> <a href="root_index.jsp" class="">主页</a> <i data-feather="chevron-right" class="breadcrumb__icon"></i> <a href="" class="breadcrumb--active">简历</a> </div>
                    <!-- END: Breadcrumb -->
                  
                </div>
                <!-- END: Top Bar -->
                <div class="intro-y flex items-center mt-8">
                    <h2 class="text-lg font-medium mr-auto">
                        教育背景
                    </h2>
                </div>
                                <div class="grid grid-cols-12 gap-6 mt-5 border-b border-gray-400 pb-8">
                    <div class="intro-y col-span-12 flex flex-wrap sm:flex-no-wrap items-center mt-2">
                        <a href="edu_add.jsp"><button class="button text-white bg-green-600 shadow-md mr-2">添加教育背景</button></a>  
                    </div>
                    <!-- BEGIN: Data List -->
                    <div class="intro-y col-span-12 overflow-auto lg:overflow-visible">
                        <table class="table table-report -mt-2">
                            <thead>
                                <tr>
                                    <th class="text-center whitespace-no-wrap">学校</th>
                                    <th class="text-center whitespace-no-wrap">时间线</th>
                                    <th class="text-center whitespace-no-wrap">描述</th>
                                    <th class="text-center whitespace-no-wrap">操作</th>
                                </tr>
                            </thead>
                            <tbody>
                                
                               <c:forEach items="${Edu }" var="edu">
                               
                               	<tr class="intro-x">
                                    <td class="text-center">${edu.edu_bigcontext }</td>
                                    <td class="text-center">${edu.timeline }</td>
                                    <td class="text-center">${edu.edu_context }</td>
                                    <td class="table-report__action w-56">
                                        <div class="flex justify-center items-center">
                                            <a class="flex items-center mr-3" href="edu_update.jsp?id=${edu.id }&edu_bigcontext=${edu.edu_bigcontext }&timeline=${edu.timeline }&edu_context=${edu.edu_context }"> <i data-feather="check-square" class="w-4 h-4 mr-1"></i> 编辑 </a>
                                            <a class="flex items-center text-theme-6" href="javascript:fz(${edu.id },0);" data-toggle="modal" data-target="#delete-confirmation-modal"> <i data-feather="trash-2" class="w-4 h-4 mr-1"></i> 删除 </a>
                                        </div>
                                    </td>
                                </tr>
                               
                               </c:forEach>
                               
							   
                            </tbody>
                        </table>
                    </div>
                </div>
                
                
                
                <div class="intro-y flex items-center mt-8">
                    <h2 class="text-lg font-medium mr-auto">
                       工作经历
                    </h2>
                </div>
                                <div class="grid grid-cols-12 gap-6 mt-5">
                    <div class="intro-y col-span-12 flex flex-wrap sm:flex-no-wrap items-center mt-2">
                        <a href="exp_add.jsp"><button class="button text-white bg-red-600 shadow-md mr-2">添加工作经历</button></a>  
                    </div>
                    <!-- BEGIN: Data List -->
                    <div class="intro-y col-span-12 overflow-auto lg:overflow-visible">
                        <table class="table table-report -mt-2">
                            <thead>
                                <tr>
                                    <th class="text-center whitespace-no-wrap">工作地点</th>
                                    <th class="text-center whitespace-no-wrap">时间线</th>
                                    <th class="text-center whitespace-no-wrap">描述</th>
                                    <th class="text-center whitespace-no-wrap">操作</th>
                                </tr>
                            </thead>
                            <tbody>
                                
                               <c:forEach items="${Exp }" var="exp">
                               
                               	<tr class="intro-x">
                                   <td class="text-center">${exp.exp_bigcontext }</td>
                                    <td class="text-center">${exp.timeline }</td>
                                    <td class="text-center">${exp.exp_context }</td>
                                    <td class="table-report__action w-56">
                                        <div class="flex justify-center items-center">
                                            <a class="flex items-center mr-3" href="exp_update.jsp?id=${exp.id }&exp_bigcontext=${exp.exp_bigcontext }&timeline=${exp.timeline }&exp_context=${exp.exp_context }"> <i data-feather="check-square" class="w-4 h-4 mr-1"></i> 编辑 </a>
                                            <a class="flex items-center text-theme-6" href="javascript:fz(${exp.id },1);" data-toggle="modal" data-target="#delete-confirmation-modal"> <i data-feather="trash-2" class="w-4 h-4 mr-1"></i> 删除 </a>
                                        </div>
                                    </td>
                                </tr>
                               
                               </c:forEach>
                               
							   
                            </tbody>
                        </table>
                    </div>
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
         <script type="text/javascript">
		
		var id = 0;
		var httpline="";
		
		function fz(m,d){
			id = m;
			if(d!=1){
				httpline = "root_deledu?id="+id;
			}else{
				httpline = "root_delexp?id="+id;
			}
		}
		
		function ok(){
			window.location.href=httpline;
			id = 0;
			httpline="";
		}
		
		
	</script>
        <!-- END: JS Assets-->
    </body>
</html>