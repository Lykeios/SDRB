<%@ page language="java" contentType="text/html; charset=utf-8"
         pageEncoding="utf-8"%>
<%@ page import="dao.CourseDao" %>
<%@ page import="dao.user_has_courseDao" %>
<%@ page import="model.Course" %>
<%@ page import="java.util.ArrayList" %>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <script src="https://cdn.staticfile.org/jquery/1.10.2/jquery.min.js">
    </script>
    <title>User Homepage</title>

    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="css/bootstrap.min.css">

    <!-- FontAwesome CSS -->
    <link rel="stylesheet" href="css/font-awesome.min.css">

    <!-- ElegantFonts CSS -->
    <link rel="stylesheet" href="css/elegant-fonts.css">

    <!-- themify-icons CSS -->
    <link rel="stylesheet" href="css/themify-icons.css">

    <!-- Swiper CSS -->
    <link rel="stylesheet" href="css/swiper.min.css">

    <!-- Styles

    <link rel="stylesheet" href="css/import.css">
    <link rel="stylesheet" href="css/d-view.css">
    <link rel="stylesheet" href="css/plugin.css">
    <link rel="stylesheet" href="css/view.css">
    <link rel="stylesheet" href="css/elements.css">
    <link rel="stylesheet" href="css/style.css">-->
    <link rel="stylesheet" href="css/user-homepage.css">
    <link rel="stylesheet" href="css/login.css">
    <link rel="stylesheet" href="style.css">
</head>

<body>
<div class="hero-content">
    <div class="page-header">
        <header class="site-header">

            <%@ include file="header.jsp" %>

            <div class="nav-bar">
                <div class="container">
                    <div class="row">
                        <div class="col-9 col-lg-3">
                            <div class="site-branding">
                                <h1 class="site-title"><a href="index.jsp" rel="home">Sdr<span>b</span></a></h1>
                            </div><!-- .site-branding -->
                        </div><!-- .col -->

                        <div class="col-3 col-lg-9 flex justify-content-end align-content-center">
                            <nav class="site-navigation flex justify-content-end align-items-center">
                                <ul class="flex flex-column flex-lg-row justify-content-lg-end align-content-center">
                                    <li><a href="index.jsp">Home</a></li>
                                    <li><a href="about.jsp">About</a></li>
                                    <li><a href="courses.jsp">Courses</a></li>
                                    <li><a href="https://weibo.com/u/5966988917?is_all=1">weibo</a></li>
                                </ul>

                                <div class="hamburger-menu d-lg-none">
                                    <span></span>
                                    <span></span>
                                    <span></span>
                                    <span></span>
                                </div><!-- .hamburger-menu -->

                                <div class="header-bar-cart">
                                    <a href="#" class="flex justify-content-center align-items-center"><span aria-hidden="true" class="icon_bag_alt"></span></a>
                                </div><!-- .header-bar-search -->
                            </nav><!-- .site-navigation -->
                        </div><!-- .col -->
                    </div><!-- .row -->
                </div><!-- .container -->
            </div><!-- .nav-bar -->
        </header><!-- .site-header -->

        <div class="page-header-overlay">
            <div class="container">
                <div class="row">
                    <div class="col-12">
                        <header class="entry-header">
                            <h1>User Center</h1>
                        </header><!-- .entry-header -->
                    </div><!-- .col -->
                </div><!-- .row -->
            </div><!-- .container -->
        </div><!-- .page-header-overlay -->
    </div><!-- .page-header -->



    <div class="content person-center">

        <!-- sidebar start -->

        <div class="user-sidebar">
            <div class="panel">
                <div class="panel-body">
                    <div class="model-box model-user">
                        <a class="model-img" href="/portal/setting.mooc">
                            <img src="images/XJP.jpg" class="user-max">
                        </a>

                        <h3 class="model-title substr" title="张瑞年"><s:property value="#session.user.User_Name"></s:property>

                        </h3>
                        <div class="model-intro" title="北京邮电大学"><s:property value="#session.user.User_Intro"></s:property></div>

                    </div>
                </div>
            </div>
            <div class="panel">
                <div class="panel-body">
                    <div class="sidebar-nav">
                        <ul class="nav-courseList_ongoing">

                            <!-- 我的课程 -->
                            <li class="nav-item open-up navItem" data-step="1" data-highlightclass="" data-intro="欢迎进入我的课程，这里汇集了您所有参加和收藏的课程。">
                                <a class="nav-text current" href="user-homepage.jsp"><i class="icon-nav icon-course"></i>我的课程</a>
                                <ul class="sub-nav">
                                    <li class="nav-item">
                                        <a class="sub-nav-text current" content="myCourse" href="#">学习的课程</a>
                                    </li>
                                    <!-- 管理的课程 -->

                                    <li class="nav-item">
                                        <a class="sub-nav-text" href="#" content="favoriteCourse">收藏的课程</a>
                                    </li>

                                </ul>
                            </li>



                            <!-- 我的笔记 -->
                            <li class="nav-item" data-step="4" data-highlightclass="" data-intro="在课程学习的过程中您可以随时记录学习心得或疑惑,点击这里可以管理自己的课程笔记。">
                                <a class="nav-text" href="#" content="myNote"><i class="icon-nav icon-notes"></i>我的笔记</a>
                            </li>
                            <li class="nav-item" data-step="5" data-highlightclass="" data-intro="系统和授课教师会通过站内消息向您发送重要通知，您要及时关注这里的消息哦！">
                                <a class="nav-text" href="#" content="myMessage"><i class="icon-nav icon-msg"></i>消息<sup id="newMsg" style="display:none;">●</sup></a>
                            </li>
                            <li class="nav-item" data-step="6" data-highlightclass="" data-intro="在这里您可以进行密码管理,邮箱绑定,以及对基本资料信息进行维护。">
                                <a class="nav-text" href="user-setting.jsp" content="mySetting"><i class="icon-nav icon-set"></i>个人设置</a>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>

        <script type="text/javascript">
            var coeusUserId;
            var goauth;
            $(function(){

                coeusUserId = "973887";
                //侧栏导航
                $(".nav-text").click(function () {
                    $li = $(this).parent();
                    if ($li.hasClass("open-up")) {
                        $li.removeClass("open-up");
                        $li.children(".sub-nav").slideUp();
                    } else {
                        $li.siblings().removeClass("open-up");
                        $li.siblings().find(".current").removeClass("current");
                        $li.siblings().find(".sub-nav").slideUp();
                        $(this).addClass("current");
                        $li.addClass("open-up");
                        $li.children(".sub-nav").slideDown();
                    }
                });


                $(".go-auth").click(function(){
                    goauth.close();
                    location.href=CONTEXTPATH+"/portal/setting.mooc?type=1";
                });
                $(".go-notauth").click(function(){
                    goauth.close();
                });

                $(".sub-nav-text").click(function () {
                    $(this).parent().siblings().find(".current").removeClass("current");
                    $(this).addClass("current");
                });

                selectMenu();

                function selectMenu() {
                    var currentMenu = $("#currentMenu").val();
                    var $target = $(".nav-item").find("a[content='" + currentMenu + "']");
                    $target.addClass("current");
                    var $sub = $target.parents(".sub-nav");
                    if ($sub.length != 0) {
                        $sub.prev(".nav-text").addClass("current");
                        $sub.parent(".nav-item").addClass("open-up navItem");
                    }
                    else {
                        $target.parent(".nav-item").addClass("open-up navItem");
                    }
                }

                hasNewMessage();
                //判断是否有未读消息
                function hasNewMessage(){
                    $.ajax({
                        type:"post",
                        url:CONTEXTPATH+"/portal/user/hasmessage.mooc",
                        dataType:"json",
                        data:{

                        },
                        success:function(response){
                            if (response.newMessage==1){
                                $("#newMsg").show();
                            }
                        },
                        error:function(){

                        }
                    });
                }

                //初始化管理的课程
                $(".managerCourse").click(function(){
                    $.ajax({
                        type:'post',
                        url:CONTEXTPATH+"/session/initManagerCourse.mooc",
                        success:function(result){
                            if (result.retCode=="success"){
                                location.href=CONTEXTPATH+"/session/managerCourse.mooc";
                            }
                        }
                    })
                })


                function alertTipMessage(){
                    goauth = $.dialog({
                        title:"学生身份认证提示",
                        content:$(".dialog")[0],
                        id:goauth,
                        lock:true,
                        width:"680px"
                    });
                    setCookie(coeusUserId.toString()+"isTip",1);
                }
            })
        </script>
        <!-- sidebar end -->









        <input type="hidden" id="currentMenu" value="myCourse">
        <input type="hidden" id="schoolcourseType" value="0">
        <input type="hidden" id="domainType" value="sys">
        <input type="hidden" id="tabIndex" value="1">
        <input type="hidden" id="searchType" value="0">
        <input type="hidden" id="showSecondMajor" value="false">
        <!-- sidebar start -->




        <div class="main">
            <s:if test="#session.user.User_Identity == 1">
            <div class="main-header">
                <div class="btn-group btn-tabs" id="mycoursecenter_student">
                    <a class="btn-item current" href="javascript:void(0);" tabindex="1">正在进行</a>
                    <a class="btn-item" href="javascript:void(0);" tabindex="2">即将开始</a>
                    <a class="btn-item last" href="javascript:void(0);" tabindex="3">已结束</a>

                </div>
                <div class="search-box">
                    <div class="search">
                        <input class="input-search searchCourse" id="keyWord_student" placeholder="根据课程名称、学校、教师搜索" type="text" value="">
                        <a class="icon-search" id="searchCourse_student" href="javascript:void(0)"><i class="i-search"></i></a>
                    </div>
                </div>
            </div>


            <div class="main-body" id="myCourse">


                <div class="main-tab">
                    <div class="tab-view">

                        <ul class="view-courseList_ongoing">

                            <!-- 正在进行 -->

                            <s:iterator value="courseList_ongoing" status="status">

                                <li class="view-item" ucid="1277078">
                                <div class="view">
                                    <div class="view-show">
                                        <div class="view-img" href="javascript:void(0)">
                                            <img src="<s:property value="Course_Image"/>">
                                            <a class="view-shadow" href="https://www.cnmooc.org/portal/session/index/11846.mooc" style="top: 0px; left: -982px;">
                                                <div class="view-tips view-action">
                                                    <i class="icon-play"></i>去学习
                                                </div>
                                            </a>
                                        </div>
                                    </div>
                                    <div class="view-intro">
                                        <h3 class="view-title substr" style="width:400px;">

                                            <s:property value="Course_Name"/>


                                            <span class="cview-time">2019春</span>
                                        </h3>




                                        <h4 class="view-subtitle">
                                            <span class="show-tname substr" style="width:180px;"><a class="link-action" href="/portal/teacher/11846/524530.mooc" title="江主席"><img src="images/JZM.jpg" class="user-min"><s:property value="Course_Teacher"/></a></span>
                                            <span class="show-school substr"></span>
                                        </h4>
                                        <!-- 学期学习 -->

                                        <div class="view-handle clearfix">
                                            <!-- 学期学习 -->

                                            <span class="view-tip"><s:property value="Course_Intro"/></span>


                                            <!-- 随到随学 -->


                                            <div class="link-group">
                                                <a class="link-action courseDetail" href="single-courses.jsp?course_id=<s:property value="Course_Id"/>">课程详情</a>

                                            </div>
                                        </div>

                                        <!-- 学期学习 -->

                                        <!-- 有成绩 -->


                                        <!-- 无成绩 -->

                                        <div class="view-progressbar pc-progressbar">
                                            <div class="progressbar-ui">
                                                <div class="progressbar-value">
                                                    <span class="start-value"><s:property value="Course_Date"/></span>
                                                </div>
                                                <div class="progressbar-bg">
                                                    <div class="progressbar-in" style="width: 58%;"></div>
                                                </div>
                                            </div>
                                        </div>



                                        <!-- 随到随学 -->



                                        <i class="view-state-v normal" title="修学分课程"></i>


                                        <!-- 证书 -->

                                    </div>
                                </div>
                            </li>

                            </s:iterator>
                            <!-- 即将开始 -->

                            <s:iterator value="courseList_coming" status="status">
                            <li class="soon-item hidden-course" ucid="1277078">
                                <div class="view">
                                    <div class="view-show">

                                        <div class="view-img" href="javascript:void(0)">
                                            <img src="<s:property value="Course_Image"/>">
                                            <a class="view-shadow" href="https://www.cnmooc.org/portal/session/index/11846.mooc" style="top: 0px; left: -982px;">
                                                <div class="view-tips view-action">
                                                    <i class="icon-play"></i>去学习
                                                </div>
                                            </a>
                                        </div>
                                    </div>
                                    <div class="view-intro">
                                        <h3 class="view-title substr" style="width:400px;">

                                            <s:property value="Course_Name"/>


                                            <span class="cview-time">2020春</span>
                                        </h3>




                                        <h4 class="view-subtitle">
                                            <span class="show-tname substr" style="width:180px;"><a class="link-action" href="/portal/teacher/11846/524530.mooc" title="江主席"><img src="images/JZM.jpg" class="user-min"><s:property value="Course_Teacher"/></a></span>
                                            <span class="show-school substr"></span>
                                        </h4>
                                        <!-- 学期学习 -->

                                        <div class="view-handle clearfix">
                                            <!-- 学期学习 -->

                                            <s:property value="Course_Intro"/>


                                            <!-- 随到随学 -->


                                            <div class="link-group">
                                                <a class="link-action courseDetail" href="/portal/session/11846-study.mooc">课程详情</a>

                                            </div>
                                        </div>

                                        <!-- 学期学习 -->

                                        <!-- 有成绩 -->


                                        <!-- 无成绩 -->

                                        <div class="view-progressbar pc-progressbar">
                                            <div class="progressbar-ui">
                                                <div class="progressbar-value">
                                                    <span class="start-value"><s:property value="Course_Date"/></span>
                                                </div>
                                                <div class="progressbar-bg">
                                                    <div class="progressbar-in" style="width: 58%;"></div>
                                                </div>
                                            </div>
                                        </div>



                                        <!-- 随到随学 -->



                                        <i class="view-state-v normal" title="修学分课程"></i>


                                        <!-- 证书 -->

                                    </div>
                                </div>
                            </li>
                            </s:iterator>
                            <!-- 已结束 -->

                            <s:iterator value="courseList_finished" status="status">
                            <li class="finished-item hidden-course" ucid="1277078">
                                <div class="view">
                                    <div class="view-show">

                                        <div class="view-img" href="javascript:void(0)">
                                            <img src="<s:property value="Course_Image"/>">
                                            <a class="view-shadow" href="https://www.cnmooc.org/portal/session/index/11846.mooc" style="top: 0px; left: -982px;">
                                                <div class="view-tips view-action">
                                                    <i class="icon-play"></i>去学习
                                                </div>
                                            </a>
                                        </div>
                                    </div>
                                    <div class="view-intro">
                                        <h3 class="view-title substr" style="width:400px;">

                                            <s:property value="Course_Name"/>


                                            <span class="cview-time">2018秋</span>
                                        </h3>




                                        <h4 class="view-subtitle">
                                            <span class="show-tname substr" style="width:180px;"><a class="link-action" href="/portal/teacher/11846/524530.mooc" title="江主席"><img src="images/JZM.jpg" class="user-min"><s:property value="Course_Teacher"/></a></span>
                                            <span class="show-school substr"></span>
                                        </h4>
                                        <!-- 学期学习 -->

                                        <div class="view-handle clearfix">
                                            <!-- 学期学习 -->

                                            <s:property value="Course_Intro"/>


                                            <!-- 随到随学 -->


                                            <div class="link-group">
                                                <a class="link-action courseDetail" href="/portal/session/11846-study.mooc">课程详情</a>

                                            </div>
                                        </div>

                                        <!-- 学期学习 -->

                                        <!-- 有成绩 -->


                                        <!-- 无成绩 -->

                                        <div class="view-progressbar pc-progressbar">
                                            <div class="progressbar-ui">
                                                <div class="progressbar-value">
                                                    <span class="start-value"><s:property value="Course_Date"/></span>
                                                </div>
                                                <div class="progressbar-bg">
                                                    <div class="progressbar-in" style="width: 58%;"></div>
                                                </div>
                                            </div>
                                        </div>



                                        <!-- 随到随学 -->



                                        <i class="view-state-v normal" title="修学分课程"></i>


                                        <!-- 证书 -->

                                    </div>
                                </div>
                            </li>
                            </s:iterator>


<!--
                            <div class="pagination" id="pageId">
                                <ul class="clearfix">
                                    <li class="page-dropdown">
                                        <span class="factor-item" id="rowCountNum">1条记录</span>
                                    </li>

                                    <li class="page-prev">
                                        <a href="javascript:void(0);" id="page-prev" pagenum="1">‹</a>
                                    </li>
                                    <li class="page-num current">
                                        <a href="javascript:void(0);" pagenum="1">1</a>
                                    </li>

                                    <li class="page-next">
                                        <a href="javascript:void(0);" id="page-next" pagenum="1">›</a>
                                    </li>
                                    <li class="page-action">
                                        <input type="text" class="input-text input-page" title="Enter Search" _type="changeIndex">
                                        <span class="page-total">/1 页 </span>
                                    </li>
                                </ul>
                            </div>
                    -->

                            <script>
                                $(function () {
                                    $("#rowCountNum").html(1 + "条记录");
                                    var $pageSelect = $("#pageId").find(".page-select").select({
                                        change:function(){
                                            if (this.value == '10') {
                                                return;
                                            }
                                            var fn = "";

                                            if (fn.length > 0) {
                                                fn = fn+"(" + 1 + ",\""+"pageId"+"\","+this.value+")";
                                                eval(fn);
                                            } else {
                                                gotoPage(1, "pageId",this.value);
                                            }
                                        }
                                    });

                                    $("#pageId").find(".page-num,.page-prev,.page-next").click(function () {
                                        var pageNum = $(this).children('a').attr("pageNum");
                                        if (typeof(pageNum) == 'undefined') {
                                            return;
                                        }
                                        if (pageNum == '1') {
                                            return;
                                        }
                                        var fn = "";

                                        if (fn.length > 0) {
                                            fn = fn+"(" + pageNum + ",\""+"pageId"+"\","+$pageSelect.val()+")";
                                            eval(fn);
                                        } else {
                                            gotoPage && gotoPage(pageNum, "pageId", $pageSelect.val());
                                        }
                                    })
                                    $("#pageId").find('[_type="changeIndex"]').on("keyup.changeIndex", function (event) {
                                        var $this = $(this);
                                        if ($.trim($this.val()||"").length > 0) {
                                            var pageNum = parseInt($this.val())
                                            if (isNaN(pageNum)) {
                                                pageNum = 0;
                                            }
                                            if (pageNum > "1") {
                                                pageNum = " 1" || 0;
                                            }
                                            if (pageNum < 1) {
                                                pageNum = 1
                                            }
                                            if (pageNum == '1') {
                                                return;
                                            }
                                            if (event.keyCode == 13) {
                                                var fn = "";

                                                if (fn.length > 0) {
                                                    fn = fn+"(" + pageNum + ",\""+"pageId"+"\","+$pageSelect.val()+")";
                                                    eval(fn);
                                                } else {
                                                    gotoPage(pageNum, "pageId", $pageSelect.val());
                                                }
                                            }
                                        }

                                    })
                                })
                            </script>
                        </ul>

                    </div>
                </div>

                <script src="/js/app/portal/ajaxmyCourseIndex.js?c10f4345bd" type="text/javascript"></script>
                <script type="text/javascript">
                    $(function(){
                        formatAvatar(".show-tname img");

                    })
                    function checkSystem(){
                        var isPc =true;
                        var browser={
                            versions:function(){
                                var u = navigator.userAgent;
                                return {//移动终端浏览器版本信息          　　
                                    trident: u.indexOf('Trident') > -1, //IE内核　　
                                    presto: u.indexOf('Presto') > -1, //opera内核
                                    webKit: u.indexOf('AppleWebKit') > -1, //苹果、谷歌内核
                                    gecko: u.indexOf('Gecko') > -1 && u.indexOf('KHTML') == -1, //火狐内核
                                    mobile: !!u.match(/AppleWebKit.*Mobile.*/), //是否为移动终端
                                    ios: !!u.match(/\(i[^;]+;( U;)? CPU.+Mac OS X/), //ios终端
                                    android: u.indexOf('Android') > -1 || u.indexOf('Linux') > -1, //android终端或uc浏览器
                                    iPhone: u.indexOf('iPhone') > -1 , //是否为iPhone或者QQHD浏览器
                                    iPad: u.indexOf('iPad') > -1, //是否iPad
                                    webApp: u.indexOf('Safari') == -1 //是否web应该程序，没有头部与底部
                                };
                            }()

                        }
                        if(browser.versions.mobile){
                            isPc = false;
                            $.warn("章节暂时不支持移动端进行浏览！");
                        }
                        return isPc;
                    }
                    function gotoPage(pageIndex, pageId) {
                        var keyWord = $("#keyWord").val();
                        var tabIndex = $("#tabIndex").val();
                        var searchType = $("#searchType").val();
                        var schoolcourseType = $("#schoolcourseType").val();
                        searchMyCourse(keyWord,tabIndex,searchType,schoolcourseType,pageIndex);
                    }

                </script></div>
            </s:if>

            <s:if test="#session.user.User_Identity == 2">
                <div class="main-header">
                    <div class="btn-group btn-tabs" id="mycoursecenter_teacher">
                        <a class="btn-item current" href="javascript:void(0);" tabindex="1">申请通过</a>
                        <a class="btn-item" href="javascript:void(0);" tabindex="2">等待批准</a>
                        <a class="btn-item last" href="javascript:void(0);" tabindex="3">已结束</a>

                    </div>
                    <div class="search-box">
                        <div class="search">
                            <input class="input-search searchCourse" id="keyWord_teacher" placeholder="根据课程名称、学校、教师搜索" type="text" value="">
                            <a class="icon-search" id="searchCourse_teacher" href="javascript:void(0)"><i class="i-search"></i></a>
                        </div>
                    </div>
                </div>


                <div class="main-body" id="myCourse">


                    <div class="main-tab">
                        <div class="tab-view">

                            <ul class="view-courseList_ongoing">

                                <!-- 正在进行 -->

                                <s:iterator value="courseList_ongoing" status="status">

                                    <li class="view-item" ucid="1277078">
                                        <div class="view">
                                            <div class="view-show">
                                                <div class="view-img" href="javascript:void(0)">
                                                    <img src="<s:property value="Course_Image"/>">
                                                    <a class="view-shadow" href="https://www.cnmooc.org/portal/session/index/11846.mooc" style="top: 0px; left: -982px;">
                                                        <div class="view-tips view-action">
                                                            <i class="icon-play"></i>去学习
                                                        </div>
                                                    </a>
                                                </div>
                                            </div>
                                            <div class="view-intro">
                                                <h3 class="view-title substr" style="width:400px;">

                                                    <s:property value="Course_Name"/>


                                                    <span class="cview-time">2019春</span>
                                                </h3>




                                                <h4 class="view-subtitle">
                                                    <span class="show-tname substr" style="width:180px;"><a class="link-action" href="/portal/teacher/11846/524530.mooc" title="江主席"><img src="images/JZM.jpg" class="user-min"><s:property value="Course_Teacher"/></a></span>
                                                    <span class="show-school substr"></span>
                                                </h4>
                                                <!-- 学期学习 -->

                                                <div class="view-handle clearfix">
                                                    <!-- 学期学习 -->

                                                    <span class="view-tip"><s:property value="Course_Intro"/></span>


                                                    <!-- 随到随学 -->


                                                    <div class="link-group">
                                                        <a class="link-action courseDetail" href="single-courses.jsp?course_id=<s:property value="Course_Id"/>">课程详情</a>

                                                    </div>
                                                </div>

                                                <!-- 学期学习 -->

                                                <!-- 有成绩 -->


                                                <!-- 无成绩 -->

                                                <div class="view-progressbar pc-progressbar">
                                                    <div class="progressbar-ui">
                                                        <div class="progressbar-value">
                                                            <span class="start-value"><s:property value="Course_Date"/></span>
                                                        </div>
                                                        <div class="progressbar-bg">
                                                            <div class="progressbar-in" style="width: 58%;"></div>
                                                        </div>
                                                    </div>
                                                </div>



                                                <!-- 随到随学 -->



                                                <i class="view-state-v normal" title="修学分课程"></i>


                                                <!-- 证书 -->

                                            </div>
                                        </div>
                                    </li>

                                </s:iterator>
                                <!-- 即将开始 -->
                                <s:iterator value="courseList_coming" status="status">
                                    <li class="soon-item hidden-course" ucid="1277078">
                                        <div class="view">
                                            <div class="view-show">

                                                <div class="view-img" href="javascript:void(0)">
                                                    <img src="<s:property value="Course_Image"/>">
                                                    <a class="view-shadow" href="https://www.cnmooc.org/portal/session/index/11846.mooc" style="top: 0px; left: -982px;">
                                                        <div class="view-tips view-action">
                                                            <i class="icon-play"></i>去学习
                                                        </div>
                                                    </a>
                                                </div>
                                            </div>
                                            <div class="view-intro">
                                                <h3 class="view-title substr" style="width:400px;">

                                                    <s:property value="Course_Name"/>


                                                    <span class="cview-time">2020春</span>
                                                </h3>




                                                <h4 class="view-subtitle">
                                                    <span class="show-tname substr" style="width:180px;"><a class="link-action" href="/portal/teacher/11846/524530.mooc" title="江主席"><img src="images/JZM.jpg" class="user-min"><s:property value="Course_Teacher"/></a></span>
                                                    <span class="show-school substr"></span>
                                                </h4>
                                                <!-- 学期学习 -->

                                                <div class="view-handle clearfix">
                                                    <!-- 学期学习 -->

                                                    <s:property value="Course_Intro"/>


                                                    <!-- 随到随学 -->


                                                    <div class="link-group">
                                                        <a class="link-action courseDetail" href="/portal/session/11846-study.mooc">课程详情</a>

                                                    </div>
                                                </div>

                                                <!-- 学期学习 -->

                                                <!-- 有成绩 -->


                                                <!-- 无成绩 -->

                                                <div class="view-progressbar pc-progressbar">
                                                    <div class="progressbar-ui">
                                                        <div class="progressbar-value">
                                                            <span class="start-value"><s:property value="Course_Date"/></span>
                                                        </div>
                                                        <div class="progressbar-bg">
                                                            <div class="progressbar-in" style="width: 58%;"></div>
                                                        </div>
                                                    </div>
                                                </div>



                                                <!-- 随到随学 -->



                                                <i class="view-state-v normal" title="修学分课程"></i>


                                                <!-- 证书 -->

                                            </div>
                                        </div>
                                    </li>
                                </s:iterator>
                                                                    <!-- 已结束 -->
                                <s:iterator value="courseList_finished" status="status">
                                    <li class="finished-item hidden-course" ucid="1277078">
                                        <div class="view">
                                            <div class="view-show">

                                                <div class="view-img" href="javascript:void(0)">
                                                    <img src="<s:property value="Course_Image"/>">
                                                    <a class="view-shadow" href="https://www.cnmooc.org/portal/session/index/11846.mooc" style="top: 0px; left: -982px;">
                                                        <div class="view-tips view-action">
                                                            <i class="icon-play"></i>去学习
                                                        </div>
                                                    </a>
                                                </div>
                                            </div>
                                            <div class="view-intro">
                                                <h3 class="view-title substr" style="width:400px;">

                                                    <s:property value="Course_Name"/>


                                                    <span class="cview-time">2018秋</span>
                                                </h3>




                                                <h4 class="view-subtitle">
                                                    <span class="show-tname substr" style="width:180px;"><a class="link-action" href="/portal/teacher/11846/524530.mooc" title="江主席"><img src="images/JZM.jpg" class="user-min"><s:property value="Course_Teacher"/></a></span>
                                                    <span class="show-school substr"></span>
                                                </h4>
                                                <!-- 学期学习 -->

                                                <div class="view-handle clearfix">
                                                    <!-- 学期学习 -->

                                                    <s:property value="Course_Intro"/>


                                                    <!-- 随到随学 -->


                                                    <div class="link-group">
                                                        <a class="link-action courseDetail" href="/portal/session/11846-study.mooc">课程详情</a>

                                                    </div>
                                                </div>

                                                <!-- 学期学习 -->

                                                <!-- 有成绩 -->


                                                <!-- 无成绩 -->

                                                <div class="view-progressbar pc-progressbar">
                                                    <div class="progressbar-ui">
                                                        <div class="progressbar-value">
                                                            <span class="start-value"><s:property value="Course_Date"/></span>
                                                        </div>
                                                        <div class="progressbar-bg">
                                                            <div class="progressbar-in" style="width: 58%;"></div>
                                                        </div>
                                                    </div>
                                                </div>



                                                <!-- 随到随学 -->



                                                <i class="view-state-v normal" title="修学分课程"></i>


                                                <!-- 证书 -->

                                            </div>
                                        </div>
                                    </li>
                                </s:iterator>

                                <!--
                                                            <div class="pagination" id="pageId">
                                                                <ul class="clearfix">
                                                                    <li class="page-dropdown">
                                                                        <span class="factor-item" id="rowCountNum">1条记录</span>
                                                                    </li>

                                                                    <li class="page-prev">
                                                                        <a href="javascript:void(0);" id="page-prev" pagenum="1">‹</a>
                                                                    </li>
                                                                    <li class="page-num current">
                                                                        <a href="javascript:void(0);" pagenum="1">1</a>
                                                                    </li>

                                                                    <li class="page-next">
                                                                        <a href="javascript:void(0);" id="page-next" pagenum="1">›</a>
                                                                    </li>
                                                                    <li class="page-action">
                                                                        <input type="text" class="input-text input-page" title="Enter Search" _type="changeIndex">
                                                                        <span class="page-total">/1 页 </span>
                                                                    </li>
                                                                </ul>
                                                            </div>
                                                    -->

                                <script>
                                    $(function () {
                                        $("#rowCountNum").html(1 + "条记录");
                                        var $pageSelect = $("#pageId").find(".page-select").select({
                                            change:function(){
                                                if (this.value == '10') {
                                                    return;
                                                }
                                                var fn = "";

                                                if (fn.length > 0) {
                                                    fn = fn+"(" + 1 + ",\""+"pageId"+"\","+this.value+")";
                                                    eval(fn);
                                                } else {
                                                    gotoPage(1, "pageId",this.value);
                                                }
                                            }
                                        });

                                        $("#pageId").find(".page-num,.page-prev,.page-next").click(function () {
                                            var pageNum = $(this).children('a').attr("pageNum");
                                            if (typeof(pageNum) == 'undefined') {
                                                return;
                                            }
                                            if (pageNum == '1') {
                                                return;
                                            }
                                            var fn = "";

                                            if (fn.length > 0) {
                                                fn = fn+"(" + pageNum + ",\""+"pageId"+"\","+$pageSelect.val()+")";
                                                eval(fn);
                                            } else {
                                                gotoPage && gotoPage(pageNum, "pageId", $pageSelect.val());
                                            }
                                        })
                                        $("#pageId").find('[_type="changeIndex"]').on("keyup.changeIndex", function (event) {
                                            var $this = $(this);
                                            if ($.trim($this.val()||"").length > 0) {
                                                var pageNum = parseInt($this.val())
                                                if (isNaN(pageNum)) {
                                                    pageNum = 0;
                                                }
                                                if (pageNum > "1") {
                                                    pageNum = " 1" || 0;
                                                }
                                                if (pageNum < 1) {
                                                    pageNum = 1
                                                }
                                                if (pageNum == '1') {
                                                    return;
                                                }
                                                if (event.keyCode == 13) {
                                                    var fn = "";

                                                    if (fn.length > 0) {
                                                        fn = fn+"(" + pageNum + ",\""+"pageId"+"\","+$pageSelect.val()+")";
                                                        eval(fn);
                                                    } else {
                                                        gotoPage(pageNum, "pageId", $pageSelect.val());
                                                    }
                                                }
                                            }

                                        })
                                    })
                                </script>
                            </ul>

                        </div>
                    </div>

                    <script src="/js/app/portal/ajaxmyCourseIndex.js?c10f4345bd" type="text/javascript"></script>
                    <script type="text/javascript">
                        $(function(){
                            formatAvatar(".show-tname img");

                        })
                        function checkSystem(){
                            var isPc =true;
                            var browser={
                                versions:function(){
                                    var u = navigator.userAgent;
                                    return {//移动终端浏览器版本信息          　　
                                        trident: u.indexOf('Trident') > -1, //IE内核　　
                                        presto: u.indexOf('Presto') > -1, //opera内核
                                        webKit: u.indexOf('AppleWebKit') > -1, //苹果、谷歌内核
                                        gecko: u.indexOf('Gecko') > -1 && u.indexOf('KHTML') == -1, //火狐内核
                                        mobile: !!u.match(/AppleWebKit.*Mobile.*/), //是否为移动终端
                                        ios: !!u.match(/\(i[^;]+;( U;)? CPU.+Mac OS X/), //ios终端
                                        android: u.indexOf('Android') > -1 || u.indexOf('Linux') > -1, //android终端或uc浏览器
                                        iPhone: u.indexOf('iPhone') > -1 , //是否为iPhone或者QQHD浏览器
                                        iPad: u.indexOf('iPad') > -1, //是否iPad
                                        webApp: u.indexOf('Safari') == -1 //是否web应该程序，没有头部与底部
                                    };
                                }()

                            }
                            if(browser.versions.mobile){
                                isPc = false;
                                $.warn("章节暂时不支持移动端进行浏览！");
                            }
                            return isPc;
                        }
                        function gotoPage(pageIndex, pageId) {
                            var keyWord = $("#keyWord").val();
                            var tabIndex = $("#tabIndex").val();
                            var searchType = $("#searchType").val();
                            var schoolcourseType = $("#schoolcourseType").val();
                            searchMyCourse(keyWord,tabIndex,searchType,schoolcourseType,pageIndex);
                        }

                    </script></div>
            </s:if>
        </div>
        <div id="viewUserGrade"></div>
        <script src="/js/plugins/jquery.history.js" type="text/javascript"></script>
        <script src="/js/app/portal/myCourseIndex.js?c10f4345bd" type="text/javascript"></script>
        <script src="/js/plugins/intro.js" type="text/javascript"></script>
        <script src="/js/app/share/cookie.js" type="text/javascript"></script>
        <script type="text/javascript">
            $(function(){
                $(".mycourse").addClass("current");
                importIntroJs("cookieForMyCourseInro_973887");
            })

        </script>

    </div>
</div><!-- .hero-content -->

<%@ include file="footer.jsp" %>

<script type='text/javascript' src='js/jquery.js'></script>
<script type='text/javascript' src='js/swiper.min.js'></script>
<script type='text/javascript' src='js/masonry.pkgd.min.js'></script>
<script type='text/javascript' src='js/jquery.collapsible.min.js'></script>
<script type='text/javascript' src='js/custom.js'></script>
<script>
    $(".btn-item").click(function(){
        $(this).addClass('current');
        $(this).siblings().removeClass('current');
        if (this.tabIndex == 1) {
            $('.view-item').removeClass('hidden-course');
            $('.soon-item').addClass('hidden-course');
            $('.finished-item').addClass('hidden-course');
        }
        if (this.tabIndex == 2) {
            $('.view-item').addClass('hidden-course');
            $('.soon-item').removeClass('hidden-course');
            $('.finished-item').addClass('hidden-course');
        }
        if (this.tabIndex == 3) {
            $('.view-item').addClass('hidden-course');
            $('.soon-item').addClass('hidden-course');
            $('.finished-item').removeClass('hidden-course');
        }
    });
</script>
<script src="js/bootstrap.min.js"></script>


</body>
</html>