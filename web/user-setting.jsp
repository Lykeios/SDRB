<%@ page language="java" contentType="text/html; charset=utf-8"
         pageEncoding="utf-8"%>
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
    <link rel="stylesheet" href="css/user-setting.css">
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
                            <li class="nav-item" data-step="1" data-highlightclass="" data-intro="欢迎进入我的课程，这里汇集了您所有参加和收藏的课程。">
                                <a class="nav-text" href=getcourselist?u2_id=<s:property value="#session.user.User_id"/>><i class="icon-nav icon-course"></i>我的课程</a>
                                <ul class="sub-nav">
                                    <li class="nav-item">
                                        <a class="sub-nav-text" content="myCourse" href="#">学习的课程</a>
                                    </li>
                                    <!-- 管理的课程 -->

                                    <li class="nav-item">
                                        <a class="sub-nav-text" href="#" content="favoriteCourse">收藏的课程</a>
                                    </li>

                                </ul>
                            </li>


                            <!-- 我的错题本 与考试相关 mooc_cloud使用-->

                            <!-- 我的笔记 -->
                            <li class="nav-item" data-step="4" data-highlightclass="" data-intro="在课程学习的过程中您可以随时记录学习心得或疑惑,点击这里可以管理自己的课程笔记。">
                                <a class="nav-text" href="#" content="myNote"><i class="icon-nav icon-notes"></i>我的笔记</a>
                            </li>
                            <li class="nav-item" data-step="5" data-highlightclass="" data-intro="系统和授课教师会通过站内消息向您发送重要通知，您要及时关注这里的消息哦！">
                                <a class="nav-text" href="#" content="myMessage"><i class="icon-nav icon-msg"></i>消息<sup id="newMsg" style="display:none;">●</sup></a>
                            </li>
                            <li class="nav-item open-up navItem" data-step="6" data-highlightclass="" data-intro="在这里您可以进行密码管理,邮箱绑定,以及对基本资料信息进行维护。">
                                <a class="nav-text current" href="user-setting.jsp" content="mySetting"><i class="icon-nav icon-set"></i>个人设置</a>
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
        <div class="main personal-settings">
            <div class="main-header">
                <div class="btn-group btn-tabs">
                    <a id="basicInfo" class="btn-item current" href="javascript:void(0)" url="/portal/basicinfo.mooc">基本资料</a>
                    <a id="passwordSet" class="btn-item" href="javascript:void(0)" url="/portal/password.mooc">密码设置</a>

                </div>
            </div>
            <div id="settingContent" >

                <input type="hidden" id="inSchoolVerify" value="20">
                <div class="main-body p-basic-data">


                    <div id="isPrivate" class="input-group">
                        <label class="input-label">
                            隐私
                        </label>
                        <span class="input-cr"><a class="input-r " href="javascript:void(0)" value="2"></a>仅限自己</span>
                        <span class="input-cr"><a class="input-r selected" href="javascript:void(0)" value="1"></a>公开</span>
                    </div>
                    <div id="inSchool" class="input-group">
                        <label class="input-label">
                            是否在校生
                        </label>
                        <input type="hidden" id="inSchoolHide" value="20">


                        <span class="input-cr">
					<a class="input-r in-school selected disabled" href="javascript:void(0)" value="20"></a>
					在校生
				</span>
                        <span class="input-cr">
					<a class="input-r in-school disabled" href="javascript:void(0)" value="10"></a>
					非在校生
				</span>



                    </div>
                    <div id="schoolYes">

                        <div class="input-group">
                            <label class="input-label">ID</label>
                            <span class="input-cr"><s:property value="#session.user.User_id"></s:property></span>
                        </div>



                        <div class="input-group">

                            <label class="input-label">
                                登录名
                            </label>
                            <span class="input-cr"><s:property value="#session.user.User_Name"></s:property></span>

                            <input id="loginName" type="hidden" value="1145141919@qq.com">
                        </div>
                        <div class="input-group">
                            <label class="input-label">
                                真实姓名
                            </label>
                            <span class="input-cr">张瑞年</span>
                            <input id="userName" type="hidden" value="张瑞年">
                        </div>
                        <div class="input-group">
                            <label class="input-label">
                                学号
                            </label>
                            <span class="input-cr"><s:property value="#session.user.User_id"></s:property></span>
                            <input id="studentNo" type="hidden" value="1145141919">
                        </div>
                        <div class="input-group">
                            <label class="input-label">
                                所在学校
                            </label>
                            <span class="input-cr">北京锤雷大学</span>
                            <input id="schoolName" type="hidden" value="北京锤雷大学" class="ui-autocomplete-input" autocomplete="off">
                            <input id="schoolId" type="hidden" value="102">
                        </div>



                        <div class="input-group">
                            <label class="input-label">
                                在读学历
                            </label>
                            <!--<div class="dk-select select" id="dk0-education"><div class="dk-selected" tabindex="0" id="dk0-combobox" aria-live="assertive" aria-owns="dk0-listbox" role="combobox">---请选择---</div><ul class="dk-select-options" id="dk0-listbox" role="listbox" aria-expanded="false"><li class="dk-option  dk-option-selected" data-value="" role="option" aria-selected="true" id="dk0-">---请选择---</li><li class="dk-option " data-value="08" role="option" aria-selected="false" id="dk0-08">初中</li><li class="dk-option " data-value="10" role="option" aria-selected="false" id="dk0-10">高中</li><li class="dk-option " data-value="20" role="option" aria-selected="false" id="dk0-20">专科</li><li class="dk-option " data-value="30" role="option" aria-selected="false" id="dk0-30">本科</li><li class="dk-option " data-value="40" role="option" aria-selected="false" id="dk0-40">硕士</li><li class="dk-option " data-value="50" role="option" aria-selected="false" id="dk0-50">博士</li></ul></div>
                            -->
                            <select id="education" class="select" data-dkcacheid="0">
                            <option value="">---请选择---</option>

                            <option value="08">
                                初中
                            </option>

                            <option value="10">
                                高中
                            </option>

                            <option value="20">
                                专科
                            </option>

                            <option value="30">
                                本科
                            </option>

                            <option value="40">
                                硕士
                            </option>

                            <option value="50">
                                博士
                            </option>

                        </select>
                        </div>
                        <div class="input-group">
                            <label class="input-label">
                                所在院系
                            </label>
                            <input id="department" type="text" class="input-text" value="" maxlength="50">
                        </div>
                        <div class="input-group">
                            <label class="input-label">
                                所学专业
                            </label>
                            <input id="professional" type="text" class="input-text" value="" maxlength="50">
                        </div>
                        <div class="input-group">
                            <label class="input-label">
                                所在年级
                            </label>
                            <input id="grade" type="text" class="input-text" value="" maxlength="10">
                        </div>
                        <div class="input-group">
                            <label class="input-label">
                                入学时间
                            </label>
                            <select id="eduYear" class="select date-select">

                                <option value="2000">
                                    2000
                                </option>

                                <option value="2001">
                                    2001
                                </option>

                                <option value="2002">
                                    2002
                                </option>

                                <option value="2003">
                                    2003
                                </option>

                                <option value="2004">
                                    2004
                                </option>

                                <option value="2005">
                                    2005
                                </option>

                                <option value="2006">
                                    2006
                                </option>

                                <option value="2007">
                                    2007
                                </option>

                                <option value="2008">
                                    2008
                                </option>

                                <option value="2009">
                                    2009
                                </option>

                                <option value="2010">
                                    2010
                                </option>

                                <option value="2011">
                                    2011
                                </option>

                                <option value="2012">
                                    2012
                                </option>

                                <option value="2013">
                                    2013
                                </option>

                                <option value="2014">
                                    2014
                                </option>

                                <option value="2015">
                                    2015
                                </option>

                                <option value="2016">
                                    2016
                                </option>

                                <option value="2017">
                                    2017
                                </option>

                                <option value="2018">
                                    2018
                                </option>

                                <option selected="selected" value="2019">
                                    2019
                                </option>

                                <option value="2020">
                                    2020
                                </option>

                                <option value="2021">
                                    2021
                                </option>

                                <option value="2022">
                                    2022
                                </option>

                                <option value="2023">
                                    2023
                                </option>

                                <option value="2024">
                                    2024
                                </option>

                                <option value="2025">
                                    2025
                                </option>

                                <option value="2026">
                                    2026
                                </option>

                                <option value="2027">
                                    2027
                                </option>

                                <option value="2028">
                                    2028
                                </option>

                            </select>
                            <span class="to-text">年</span>
                            <select id="eduMonth" class="select date-select">

                                <option value="01">
                                    01
                                </option>

                                <option value="02">
                                    02
                                </option>

                                <option value="03">
                                    03
                                </option>

                                <option value="04">
                                    04
                                </option>

                                <option value="05">
                                    05
                                </option>

                                <option selected="selected" value="06">
                                    06
                                </option>

                                <option value="07">
                                    07
                                </option>

                                <option value="08">
                                    08
                                </option>

                                <option value="09">
                                    09
                                </option>

                                <option value="10">
                                    10
                                </option>

                                <option value="11">
                                    11
                                </option>

                                <option value="12">
                                    12
                                </option>

                            </select>
                            <span class="to-text">月</span>
                        </div>
                    </div>
                    <div id="schoolNo" style="display: none;">

                        <div class="input-group">
                            <label class="input-label">好大学ID</label>
                            <span class="input-cr">6232884097</span>
                        </div>

                        <div class="input-group">
                            <label class="input-label">
                                <b id="userNameLabel">*</b>真实姓名
                            </label>
                            <input id="userName10" type="text" class="input-text" value="曾礼" maxlength="50">
                        </div>
                        <div class="input-group">
                            <label class="input-label">
                                毕业学校
                            </label>
                            <input id="lastSchoolName" type="text" class="input-text" value="" maxlength="50">
                            <input id="lastSchoolId" type="hidden" class="input-text" value="102">
                        </div>
                        <div class="input-group">
                            <label class="input-label">
                                最后学历
                            </label>
                            <select id="lastEducation" class="select">
                                <option value="">---请选择---</option>

                                <option value="08">
                                    初中
                                </option>

                                <option value="10">
                                    高中
                                </option>

                                <option value="20">
                                    专科
                                </option>

                                <option value="30">
                                    本科
                                </option>

                                <option value="40">
                                    硕士
                                </option>

                                <option value="50">
                                    博士
                                </option>

                            </select>
                        </div>
                        <div class="input-group">
                            <label class="input-label">
                                毕业专业
                            </label>
                            <input id="lastProfessional" type="text" class="input-text" value="" maxlength="50">
                        </div>
                    </div>
                    <div class="input-group">
                        <label class="input-label">
                            通讯地址
                        </label>
                        <input id="address" type="text" class="input-text input-address" value="" placeholder="请填写完整的通讯地址，确保您能收到我们邮寄的证书" maxlength="100">
                    </div>
                    <div class="input-group">
                        <label class="input-label">
                            昵称
                        </label>
                        <input id="nickName" type="text" class="input-text" value="张瑞年" maxlength="50">
                    </div>
                    <div class="input-group">
                        <label class="input-label">
                            手机
                        </label>
                        <input id="mobile" type="text" class="input-text" value="" maxlength="20">
                    </div>
                    <div id="gender" class="input-group">
                        <label class="input-label">
                            性别
                        </label>
                        <span class="input-cr"><a class="input-r " href="javascript:void(0)" value="1"></a>男</span>
                        <span class="input-cr"><a class="input-r " href="javascript:void(0)" value="2"></a>女</span>
                        <span class="input-cr"><a class="input-r selected" href="javascript:void(0)" value="0"></a>保密</span>
                    </div>
                    <div class="input-group">
                        <label class="input-label">
                            生日
                        </label>
                        <select id="year" class="select date-select">

                            <option value="1950">
                                1950
                            </option>

                            <option value="1951">
                                1951
                            </option>

                            <option value="1952">
                                1952
                            </option>

                            <option value="1953">
                                1953
                            </option>

                            <option value="1954">
                                1954
                            </option>

                            <option value="1955">
                                1955
                            </option>

                            <option value="1956">
                                1956
                            </option>

                            <option value="1957">
                                1957
                            </option>

                            <option value="1958">
                                1958
                            </option>

                            <option value="1959">
                                1959
                            </option>

                            <option value="1960">
                                1960
                            </option>

                            <option value="1961">
                                1961
                            </option>

                            <option value="1962">
                                1962
                            </option>

                            <option value="1963">
                                1963
                            </option>

                            <option value="1964">
                                1964
                            </option>

                            <option value="1965">
                                1965
                            </option>

                            <option value="1966">
                                1966
                            </option>

                            <option value="1967">
                                1967
                            </option>

                            <option value="1968">
                                1968
                            </option>

                            <option value="1969">
                                1969
                            </option>

                            <option value="1970">
                                1970
                            </option>

                            <option value="1971">
                                1971
                            </option>

                            <option value="1972">
                                1972
                            </option>

                            <option value="1973">
                                1973
                            </option>

                            <option value="1974">
                                1974
                            </option>

                            <option value="1975">
                                1975
                            </option>

                            <option value="1976">
                                1976
                            </option>

                            <option value="1977">
                                1977
                            </option>

                            <option value="1978">
                                1978
                            </option>

                            <option value="1979">
                                1979
                            </option>

                            <option value="1980">
                                1980
                            </option>

                            <option value="1981">
                                1981
                            </option>

                            <option value="1982">
                                1982
                            </option>

                            <option value="1983">
                                1983
                            </option>

                            <option value="1984">
                                1984
                            </option>

                            <option value="1985">
                                1985
                            </option>

                            <option value="1986">
                                1986
                            </option>

                            <option value="1987">
                                1987
                            </option>

                            <option value="1988">
                                1988
                            </option>

                            <option value="1989">
                                1989
                            </option>

                            <option selected="selected" value="1990">
                                1990
                            </option>

                            <option value="1991">
                                1991
                            </option>

                            <option value="1992">
                                1992
                            </option>

                            <option value="1993">
                                1993
                            </option>

                            <option value="1994">
                                1994
                            </option>

                            <option value="1995">
                                1995
                            </option>

                            <option value="1996">
                                1996
                            </option>

                            <option value="1997">
                                1997
                            </option>

                            <option value="1998">
                                1998
                            </option>

                            <option value="1999">
                                1999
                            </option>

                            <option value="2000">
                                2000
                            </option>

                            <option value="2001">
                                2001
                            </option>

                            <option value="2002">
                                2002
                            </option>

                            <option value="2003">
                                2003
                            </option>

                            <option value="2004">
                                2004
                            </option>

                            <option value="2005">
                                2005
                            </option>

                            <option value="2006">
                                2006
                            </option>

                            <option value="2007">
                                2007
                            </option>

                            <option value="2008">
                                2008
                            </option>

                            <option value="2009">
                                2009
                            </option>

                            <option value="2010">
                                2010
                            </option>

                            <option value="2011">
                                2011
                            </option>

                            <option value="2012">
                                2012
                            </option>

                            <option value="2013">
                                2013
                            </option>

                            <option value="2014">
                                2014
                            </option>

                            <option value="2015">
                                2015
                            </option>

                            <option value="2016">
                                2016
                            </option>

                            <option value="2017">
                                2017
                            </option>

                            <option value="2018">
                                2018
                            </option>

                            <option value="2019">
                                2019
                            </option>

                        </select>
                        <span class="to-text">年</span>
                        <select id="month" class="select date-select">

                            <option value="01">
                                01
                            </option>

                            <option value="02">
                                02
                            </option>

                            <option value="03">
                                03
                            </option>

                            <option value="04">
                                04
                            </option>

                            <option value="05">
                                05
                            </option>

                            <option value="06">
                                06
                            </option>

                            <option value="07">
                                07
                            </option>

                            <option value="08">
                                08
                            </option>

                            <option value="09">
                                09
                            </option>

                            <option value="10">
                                10
                            </option>

                            <option value="11">
                                11
                            </option>

                            <option value="12">
                                12
                            </option>

                        </select>
                        <span class="to-text">月</span>
                        <select id="day" class="select date-select">

                            <option value="1">
                                1
                            </option>

                            <option value="2">
                                2
                            </option>

                            <option value="3">
                                3
                            </option>

                            <option value="4">
                                4
                            </option>

                            <option value="5">
                                5
                            </option>

                            <option value="6">
                                6
                            </option>

                            <option value="7">
                                7
                            </option>

                            <option value="8">
                                8
                            </option>

                            <option value="9">
                                9
                            </option>

                            <option value="10">
                                10
                            </option>

                            <option value="11">
                                11
                            </option>

                            <option value="12">
                                12
                            </option>

                            <option value="13">
                                13
                            </option>

                            <option value="14">
                                14
                            </option>

                            <option value="15">
                                15
                            </option>

                            <option value="16">
                                16
                            </option>

                            <option value="17">
                                17
                            </option>

                            <option value="18">
                                18
                            </option>

                            <option value="19">
                                19
                            </option>

                            <option value="20">
                                20
                            </option>

                            <option value="21">
                                21
                            </option>

                            <option value="22">
                                22
                            </option>

                            <option value="23">
                                23
                            </option>

                            <option value="24">
                                24
                            </option>

                            <option value="25">
                                25
                            </option>

                            <option value="26">
                                26
                            </option>

                            <option value="27">
                                27
                            </option>

                            <option value="28">
                                28
                            </option>

                        </select>
                        <span class="to-text">日</span>
                    </div>
                    <div class="input-group">
                        <label class="input-label">
                            个人简介
                        </label>
                        <textarea id="selfIntro" class="input-area" placeholder="告诉我们您的情况，例如您的工作，感兴趣的事情以及您希望通过学习课程达到什么目标。"></textarea>
                    </div>

                    <div class="btn-area">
                        <a id="saveBtn" href="javascript:void(0)" class="btn-icon"><i class="icon-btn"><i class="i-save"></i> </i>提交</a>
                    </div>
                </div>

                <!--
                <div class="dialog ui-dialog-public ui-dialog-form">
                    <div class="dialog-form-courseList_ongoing">
                        <div class="input-group">
                            <span class="print-text print-tip"><i class="icon-right"></i>提交成功，您的在校认证已通过！</span>
                        </div>
                        <p class="public-tip">登录时您可以采用方式：</p>

                        <div class="input-group">
                            <label class="input-label">登录名：</label>
                            <span class="print-text" id="loginType"></span>
                        </div>

                        <div class="input-group">
                            <label class="input-label">邮　箱：</label>
                            <span class="print-text" id="loginEmail"></span>
                        </div>

                    </div>
                </div>

                <div class="dialog ui-dialog-public ui-dialog-form">
                    <div class="dialog-form-courseList_ongoing">
                        <div class="input-group">
                            <span class="print-text print-tip"><i class="icon-e-point"></i>您填写的学生身份已被其他账号使用！</span>
                        </div>
                        <p class="public-tip">请确认您的学号、姓名、学校是否填写正确；</p>
                        <p class="public-tip">如果正确无误，请用填写的学生身份登录；</p>
                    </div>
                </div>
                <div class="dialog ui-dialog-public ui-dialog-form">
                    <div class="dialog-form-courseList_ongoing">
                        <div class="input-group">
                            <span class="print-text print-tip"><i class="icon-right"></i>提交成功，您的在校认证在审核中！</span>
                        </div>
                        <p class="public-tip" style="padding-left:20px;"><i class="icon-tip"></i>审核通过后我们会发消息通知您。</p>

                    </div>
                </div>
                <div class="dialog ui-dialog-public ui-dialog-form">
                    <div class="dialog-form-courseList_ongoing">
                        <div class="input-group">
                            <span class="print-text print-tip"><i class="icon-right"></i>在校认证失败！</span>
                        </div>
                        <p class="public-tip" style="padding-left:20px;"><i class="icon-tip"></i>您填写的姓名与教务处系统中的姓名不一致，有疑问请联系学校教务处。</p>

                    </div>
                </div>

                <div class="dialog ui-dialog-public ui-dialog-form">
                    <div class="dialog-form-courseList_ongoing">
                        <div class="input-group">
                            <span class="print-text print-tip"><i class="icon-e-point"></i>您填写的学生信息未被学校录入进去！</span>
                        </div>
                        <p class="public-tip">请确认您的学号、姓名、学校是否填写正确；</p>
                        <p class="public-tip">如果正确无误，请联系学校录入您的学生信息。</p>

                    </div>
                </div>

                <div class="dialog ui-dialog-public ui-dialog-form">
                    <div class="dialog-form-courseList_ongoing">
                        <div class="input-group">
                            <span class="print-text print-tip"><i class="icon-e-point"></i>您填写的学生信息已被学校录入，现已被激活！</span>
                        </div>

                        <p class="public-tip">请您重新登录，您的学生信息将自动被录入</p>

                    </div>
                </div>
                -->
                <!--提示语句-->

                <script type="text/javascript">
                    $(function() {
                        //禁止学号复制粘贴剪切
                        $("#studentNo").bind("copy cut paste",function(e){
                            //alert(111);
                            return false;
                        })
                        $("#studentNoTwo").bind("copy cut paste",function(e){
                            //alert(111);
                            return false;
                        })
                        var inSchoolHide = $("#inSchoolHide").val();
                        showInSchool(inSchoolHide);

                        var inSchoolPre = $("#inSchoolPre").val();
                        if (inSchoolPre==20){
                            $(".in-school").removeClass("selected");
                            $(".in-school").addClass("disabled");
                            $(".in-school").each(function(){
                                if ($(this).attr("value")==20){
                                    $(this).addClass("selected");
                                    showInSchool(20);
                                }
                            });
                        }
                        var inSchoolVerify = $("#inSchoolVerify").val();
                        /*if (inSchoolVerify == 20){
                         $("#schoolYes").find("input").attr("disabled", "disabled");
                         $("#education").attr("disabled", "disabled");
                         }*/

                        var $education;
                        //if (inSchoolVerify != 20 || inSchoolHide == 10){
                        $education = $("#education").select();
                        //}
                        var $lastEducation = $("#lastEducation").select();
                        var $yearSelect,$monthSelect,$daySelect;
                        if (isMobile) {
                            $yearSelect=$("#year").change(function() {
                                var year = this.value;
                                var month = $monthSelect.val();
                                addDayOptions(year, month);
                            })
                            $monthSelect=$("#month").change(function() {
                                var year = this.value;
                                var month = $monthSelect.val();
                                addDayOptions(year, month);
                            })
                            $daySelect = $("#day");
                        } else {
                            $yearSelect = $("#year").select( { change: function() {
                                    var year = this.value;
                                    var month = $monthSelect.val();
                                    addDayOptions(year, month);
                                }
                            });
                            $monthSelect = $("#month").select( {
                                change : function() {
                                    var month = this.value;
                                    var year = $yearSelect.val();
                                    addDayOptions(year, month);
                                }
                            });
                            $daySelect = new Dropkick("#day");
                        }

                        var $eduYear = $("#eduYear").select();
                        var $eduMonth = $("#eduMonth").select();


                        $(".input-r").click(
                            function() {
                                if ($(this).hasClass("disabled")) {
                                    return;
                                }
                                var $radio = $(this).parent().parent().find("a.input-r")
                                    .removeClass("selected");
                                $(this).addClass("selected");
                                if ($(this).hasClass("in-school")) {
                                    showInSchool($(this).attr("value"));
                                }
                            });

                        function showInSchool(inschool){
                            if (inschool == 10) {
                                $("#schoolYes").hide();
                                $(".pbd-tip").hide();
                                $("#schoolNo").show();
                                $("#userNameLabel").text("");
                            }
                            if (inschool == 20) {
                                $("#schoolNo").hide();
                                $("#schoolYes").show();
                                $(".pbd-tip").show();
                                $("#userNameLabel").text("*");
                            }
                        }

                        function addDayOptions(year, month) {
                            var days = getDaysInOneMonth(year, month);
                            if (isMobile) {
                                var html="";
                                for ( var i = 0; i < days; i++) {
                                    html+="<option value='"+(i+1)+"'>"+(i+1)+"</option>";
                                }
                                $daySelect.html(html);
                            } else {
                                for ( var x = $daySelect.options.length - 1; x >= 0; x--) {
                                    $daySelect.remove(x);
                                }
                                for ( var i = 0; i < days; i++) {
                                    $daySelect.add(i + 1 + "", i);
                                }
                                $daySelect.refresh();
                            }
                        }

                        function getDaysInOneMonth(year, month) {
                            return parseInt(new Date(new Date(year, month, 1).getTime()
                                - (1000 * 3600 * 24)).getDate());
                        }

                        $("#saveBtn").click(function(){
                            var isPrivacy = $("#isPrivate").find("a.selected").attr("value");
                            var inSchool = $("#inSchool").find("a.selected").attr("value");
                            var education = $education.val();
                            var eduStartDate = $eduYear.val() + "" + $eduMonth.val();
                            var company = "";

                            var professional = $("#professional").val();
                            var schoolName = $("#schoolName").val();
                            var schoolId = $("#schoolId").val();
                            var studentNo = $("#studentNo").val();
                            var studentNoTwo=$("#studentNoTwo").val();
                            //alert(studentNoTwo)


                            var grade = $("#grade").val();
                            var department = $("#department").val();
                            var userName = $("#userName").val();
                            if (inSchool == 10)
                            {
                                userName = $("#userName10").val();
                                education = $lastEducation.val();
                                professional = $("#lastProfessional").val();
                                company = $("#lastSchoolName").val();
                                //schoolId = $("#lastSchoolId").val();
                                studentNo = null;
                                grade = null;
                                department = null;
                                eduStartDate = null;
                            }
                            if (inSchool == 20 && inSchoolVerify != 20){
                                if (schoolName==null || $.trim(schoolName)=="")
                                {
                                    $.dialog.error(Msg.get('userSet.schoolname.empty'));
                                    return;
                                }
                                if (studentNo==null || $.trim(studentNo)=="")
                                {
                                    $.dialog.error(Msg.get('userSet.studentno.empty'));
                                    return;
                                }
                                if (userName==null || $.trim(userName)=="")
                                {
                                    $.dialog.error(Msg.get('userSet.identity.name.empty'));
                                    return;
                                }
                                if (typeof(studentNoTwo) != "undefined"){
                                    if(studentNo!=studentNoTwo){
                                        $.dialog.error("两次输入的学号必须相同！");
                                        return;
                                    }
                                    if(studentNo.match(/[\uff00-\uffff]/g)||studentNoTwo.match(/[\uff00-\uffff]/g)){
                                        $.dialog.error("请使用半角输入学号！");
                                        return;
                                    }


                                }
                            }
                            var address = $("#address").val();
                            var nickName = $("#nickName").val();
                            if (nickName==null || $.trim(nickName)=="")
                            {
                                $.dialog.error(Msg.get('userSet.nickName.empty'));
                                return;
                            }
                            if (userName.indexOf("<")>-1||userName.indexOf(">")>-1){
                                $.dialog.error(Msg.get('userSet.userName.check'));
                                return;
                            }
                            if (nickName.indexOf("<")>-1||nickName.indexOf(">")>-1){
                                $.dialog.error(Msg.get('userSet.nickName.check'));
                                return;
                            }
                            var mobile = $("#mobile").val();
                            var gender = $("#gender").find("a.selected").attr("value");
                            var year = $yearSelect.val();
                            var month = $monthSelect.val();
                            var day = $daySelect.value;
                            var selfIntro = $("#selfIntro").val();
                            var birthday = year + "-" + month + "-" + day;
                            $.ajax({
                                type:"post",
                                url:CONTEXTPATH+"/portal/savebaseinfo.mooc",
                                dataType:"json",
                                data:{
                                    isPrivacy:isPrivacy,
                                    inSchool:inSchool,
                                    education:education,
                                    professional:professional,
                                    company:company,
                                    schoolName:schoolName,
                                    schoolId:schoolId,
                                    address:address,
                                    nickName:nickName,
                                    userName:userName,
                                    mobile:mobile,
                                    gender:gender,
                                    birthday:birthday,
                                    selfIntro:selfIntro,
                                    studentNo:studentNo,
                                    department:department,
                                    grade:grade,
                                    eduStartDate:eduStartDate
                                },
                                success:function(response){
                                    if (response.userInfo && response.userInfo.inSchoolVerify ==20){
                                        $("#loginType").text(response.coeusUser.loginName);
                                        $("#loginEmail").text(response.coeusUser.email);
                                        var dialog=$.dialog({
                                            title:Msg.get("userSet.save.tip"),
                                            content:$(".dialog")[0],
                                            width:"650px",
                                            lock:true,
                                            ok:function(){
                                            }
                                        });
                                    } else if (response.userInfo && response.userInfo.inSchoolVerify ==40){
                                        var dialog=$.dialog({
                                            title:Msg.get("userSet.save.tip"),
                                            content:$(".dialog")[2],
                                            width:"650px",
                                            lock:true,
                                            ok:function(){
                                            }
                                        });
                                    } else if (response.isExist==1){
                                        var dialog=$.dialog({
                                            title:Msg.get("userSet.exist.tip"),
                                            content:$(".dialog")[1],
                                            width:"650px",
                                            lock:true
                                        });
                                    } else if (response.isExist==2){
                                        var dialog=$.dialog({
                                            title:Msg.get("userSet.inschool.tip"),
                                            content:$(".dialog")[3],
                                            width:"650px",
                                            lock:true
                                        });
                                    }else if(response.isExist==3){
                                        var dialog=$.dialog({
                                            title:Msg.get("userSet.exist.tip"),
                                            content:$(".dialog")[4],
                                            width:"650px",
                                            lock:true
                                        });
                                    }else if(response.isExist==4){
                                        var dialog=$.dialog({
                                            title:Msg.get("userSet.exist.tip"),
                                            content:$(".dialog")[5],
                                            width:"650px",
                                            lock:true
                                        });
                                    }

                                    else if (response.errMsg){
                                        $.dialog.error(response.errMsg);
                                    } else{
                                        $.dialog.success(Msg.get('userSet.basicInfo.success'));
                                    }
                                },
                                error:function(){
                                    $.dialog.error(Msg.get('userSet.basicInfo.error'));
                                }
                            });
                        });


                        //输入框搜索
                        $.ajax({
                            type : 'post',
                            url : CONTEXTPATH+'/school/initSchool.mooc',
                            dataType: "json",
                            success : function(response) {
                                $('#schoolName').autocomplete({
                                    appendTo: null,
                                    autoFocus: false,
                                    source: response,
                                    minLength:0,
                                    // callbacks
                                    select:function(a,b,v) {
                                        $("#schoolId").val(b.item.schoolId);
                                    }
                                }).focus(function () {
                                    $(this).autocomplete("search");
                                });

                            }
                        })
                    });
                </script></div>
            <div id="settingPassword" class="hidden-course">


                <input type="hidden" id="modulus" value="0088d263588e5916662b39e30319cc92f995f8a5555458830cac272e8d9d12328ff3fa023a4c0bee12248264c1dc46165a37c617b217cfaf3d010f941bafd89dc035ac81b58c5ca7eb9027d7bca9ae33805ed77b9af79338b2c824ba1c5fde7d1010c6024ebaa1a1cf164323ce46fdf8d64ad6f207ca156c204b454c8a1bb8325b">
                <input type="hidden" id="exponent" value="010001">
                <div class="main-body p-pwd-set">

                    <div class="input-group">

                    </div>
                    <div class="input-group">
                        <label class="input-label"><b>*</b>当前密码</label>
                        <input id="oldPassword" type="password" class="input-text">
                        <span class="public-tip"><i class=""></i></span>
                    </div>
                    <div class="input-group">
                        <label class="input-label"><b>*</b>新密码</label>
                        <input id="newPassword" maxlength="18" minlength="8" type="password" class="input-text">
                        <!--
                        <div class="psw-tip publicTip">
                            <p class="psw-tip-text clearfix">
                                <span class="pt-left">弱</span>
                                <span class="pt-right">强</span>
                            </p>
                            <i class="icon-strength"></i>
                        </div>
                        <p class="public-tip public-pwd1-tip publicTip"><i class="icon-mark error-mark"></i><span>密码不能为空！</span></p>
                        -->
                    </div>
                    <p class="public-pwd-tip"><i class="icon-tip"></i>请输入8~18个字符,且必须为数字与字母组合</p>
                    <div class="input-group">
                        <label class="input-label"><b>*</b>确认密码</label>
                        <input id="newPassword2" maxlength="18" minlength="8" type="password" class="input-text">
                        <span class="public-tip"><i class=""></i></span>
                    </div>
                    <div class="btn-area">
                        <a id="savePassword" href="javascript:void(0)" class="btn-icon"><i class="icon-btn"><i class="i-save"></i></i>保存</a>
                    </div>


                </div>

                <script src="/js/extJs/BigInt.js" type="text/javascript"></script>
                <script src="/js/extJs/RSA.js" type="text/javascript"></script>
                <script src="/js/extJs/Barrett.js" type="text/javascript"></script>

                <script type="text/javascript">
                    $(function(){
                        $("#oldPassword").blur(function(){
                            var op = $("#oldPassword").val();
                            //var oph = $("#oldPasswordHide").val();
                            $.ajax({
                                type:"post",
                                url:CONTEXTPATH+"/portal/comparePasswd.mooc",
                                data:{
                                    srpwd:op
                                },
                                success:function(response){
                                    if (response.returnCode=='success'){
                                        $("#oldPassword").parent().children("span.public-tip").children("i").removeClass().addClass("icon-mark right-mark");
                                    }
                                    else{
                                        $("#oldPassword").parent().children("span.public-tip").children("i").removeClass().addClass("icon-mark error-mark");
                                    }
                                },
                                error:function(){

                                }
                            });

                        });

                        $("#newPassword").keyup(function(){
                            var opn = $.trim($("#newPassword").val()) ;
                            if(opn.length>0){
                                var modes = checkStrong(opn);
                                if (modes == 0) { //位数小于8
                                    $('.psw-tip').addClass("publicTip");
                                    $('.public-pwd1-tip').find("span").html(Msg.get("user.checkPassword"));
                                    $('.public-pwd1-tip').removeClass("publicTip");
                                } else if (modes == -1) {
                                    $('.psw-tip').addClass("publicTip");
                                    $('.public-pwd1-tip').find("span").html(Msg.get("user.incorrectPasswordFormat"));
                                    $('.public-pwd1-tip').removeClass("publicTip");
                                } else {
                                    $('.public-pwd1-tip').addClass("publicTip");
                                    if (modes == 1) {
                                        $('.psw-tip').removeClass("middle strong publicTip");
                                    } else if (modes == 2) {
                                        $('.psw-tip').removeClass("middle strong publicTip").addClass("middle");
                                    } else if (modes >= 3) {
                                        $('.psw-tip').removeClass("middle strong publicTip").addClass("strong");
                                    }
                                }
                            }else{
                                $('.psw-tip').addClass("publicTip");
                                $('.public-pwd1-tip').find("span").html(Msg.get("password.null"));
                                $('.public-pwd1-tip').removeClass("publicTip");
                            }
                        });

                        $("#newPassword2").blur(function(){
                            var opn2 = $("#newPassword2").val();
                            var opn = $("#newPassword").val();
                            if (opn.length < 8 || opn2.length < 8){
                                $.dialog.error(Msg.get("userSet.password.length.less"));
                            }
                            else if (opn != opn2)
                            {
                                $.dialog.error(Msg.get("userSet.password.not.same"));
                                $("#newPassword2").parent().children("span.public-tip").children("i").removeClass().addClass("icon-mark error-mark");
                            }
                            else{
                                $("#newPassword2").parent().children("span.public-tip").children("i").removeClass().addClass("icon-mark right-mark");
                            }
                        });

                        $("#savePassword").click(function(){
                            var op = $("#oldPassword").val();
                            var opn2 = $("#newPassword2").val();
                            var opn = $("#newPassword").val();
                            if (op==null || op==""){
                                $.dialog.error(Msg.get("userSet.password.current.error"));
                                return;
                            }
                            if (opn==null || opn2==""){
                                $.dialog.error(Msg.get("userSet.password.new.empty"));
                                return;
                            }
                            if (opn != opn2){
                                $.dialog.error(Msg.get("userSet.password.not.same"));
                                return;
                            }
                            if (opn.length < 8 || opn2.length < 8){
                                $.dialog.error(Msg.get("userSet.password.length.less"));
                                return;
                            }
                            var modulus = $("#modulus").val();
                            var exponent = $("#exponent").val();
                            setMaxDigits(130);
                            var key = new RSAKeyPair(exponent, "", modulus);
                            var strOldPass = encryptedString(key, op);
                            var strNewPass = encryptedString(key, opn);

                            $.ajax({
                                type:"post",
                                url:CONTEXTPATH+"/portal/save/password.mooc",
                                dataType:"json",
                                data:{
                                    strOldPass: strOldPass,
                                    strNewPass:strNewPass
                                },
                                success:function(response){
                                    if (response.errorMsg){
                                        $.dialog.error(response.errorMsg);
                                    }
                                    else{
                                        $.dialog.success( Msg.get("userSet.password.success"));
                                    }
                                },
                                error:function(){

                                }
                            });
                        });


                    });
                </script></div>
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
        if (this.id == 'basicInfo') {
            $('#settingContent').removeClass('hidden-course');
            $('#settingPassword').addClass('hidden-course');
        }
        if (this.id == 'passwordSet') {
            $('#settingContent').addClass('hidden-course');
            $('#settingPassword').removeClass('hidden-course');
        }
    });
</script>
<script>
    $(".input-r").click(function() {
        $(this).parent().siblings().children('.input-r').removeClass('selected');
        $(this).addClass('selected');
    });
</script>

</body>
</html>