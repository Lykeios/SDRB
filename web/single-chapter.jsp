<%@ page import="dao.ChapterDao" %>
<%@ page import="model.Chapter" %>
<%@ page import="dao.CourseDao" %>
<%@ page import="model.Course" %>
<%@ page import="dao.CommentDao" %>
<%@ page import="model.Comment" %>
<%@ page import="dao.UserDao" %>
<%@ page import="model.User" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="java.util.PriorityQueue"%>
<%@ page import="java.util.Comparator"%>
<%@ page import="java.sql.Timestamp"%>
<%@ page import="java.util.Map"%>
<%@ page import="com.opensymphony.xwork2.ActionContext"%>
<%@ page language="java" contentType="text/html; charset=utf-8" autoFlush="false" buffer="256kb"
         pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <title>Hello World</title>

    <!-- Required meta tags -->
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

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

    <!-- Styles -->
    <link rel="stylesheet" href="style.css">
</head>
<body class="single-blog-post">
    <%
        class CmpComent implements Comparator<Comment>
        {
            @Override
            public int compare(Comment c1, Comment c2) {
                return (int) (c1.getComment_Time().getTime() - c2.getComment_Time().getTime());
            }
        };
    %>
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
        <input type="hidden" id="login_User_id" value="<S:property value="#session.user.User_id"/>">
        <%
            ActionContext actionContext = ActionContext.getContext();
            Map session2 = actionContext.getSession();
            int chapter_id = Integer.parseInt(request.getParameter("chapter_id"));
            String login = request.getParameter("user_id");
            int login_id = 0;
            if(login != "")login_id = Integer.parseInt(request.getParameter("user_id"));
            System.out.println(login_id);
            ChapterDao chapterDao = new ChapterDao();
            Chapter chapter = chapterDao.findChapter(chapter_id);
            CourseDao courseDao = new CourseDao();
            Course course = courseDao.find(chapter.getCourse_Course_Id());
            CommentDao commentDao =  new CommentDao();
            ArrayList<Comment> CommentArrayList = commentDao.getChapterComment(chapter_id);
        %>
        <div class="page-header-overlay">
            <div class="container">
                <div class="row">
                    <div class="col-12">
                        <header class="entry-header">
                            <h1 class="entry-title"><%=chapter.getChapter_Name()%></h1>

                            <div class="entry-meta flex justify-content-center align-items-center">
                                <div class="post-author"><a href="#"><%=course.getCourse_Teacher()%></a></div>

                                <div class="post-comments"><a href="#">评论数：<%=CommentArrayList.size()%></a></div>
                            </div><!-- .entry-meta -->
                        </header><!-- .entry-header -->
                    </div><!-- .col -->
                </div><!-- .row -->
            </div><!-- .container -->
        </div><!-- .page-header-overlay -->
    </div><!-- .page-header -->

    <div class="container">
        <div class="row">
            <div class="col-12 offset-lg-1 col-lg-10">
                <div class="featured-image">
                    <video src="images\POO.mp4" width="940" height="530" controls="controls">
                    </video>
                    <!-- 修改为视频 -->
                </div><!-- .featured-image -->
            </div><!-- .col -->
        </div><!-- .row -->

        <div class="row">
            <div class="col-12 offset-lg-1 col-lg-1"></div><!-- .col -->

            <div class="col-12 col-lg-8">

                <div class="author-box">
                    <div class="author-info flex flex-wrap">
                        <div class="author-avatar">
                            <img src="images/instructor.jpg" alt="">

                            <ul class="author-social-profile p-0 m-0 mt-3 d-flex flex-wrap align-items-center">
                                <li><a href="#"><i class="fa fa-facebook"></i></a></li>
                                <li><a href="#"><i class="fa fa-twitter"></i></a></li>
                                <li><a href="#"><i class="fa fa-google-plus"></i></a></li>
                            </ul>
                        </div>

                        <div class="author-details">
                            <h3 class="author-name">Ms. Lara Croft <span>Admin</span></h3>

                            <div class="entry-content mt-3">
                                <p>Hi! I'm Colt. I'm a developer with a serious love for teaching. I've spent the last few years teaching people to program at 2 different immersive bootcamps where I've helped hundreds of people become web developers and change their lives. My graduates work at companies like Google, Salesforce, and Square.</p>
                            </div>
                        </div>
                    </div>
                </div>


                <div class="post-comments-wrap">
                    <div class="post-comments">
                        <h3 class="comments-title"><span class="comments-number"><%=CommentArrayList.size()%> Comments</span></h3>

                        <ol class="comment-courseList_ongoing">
                            <%
                                if(CommentArrayList != null && CommentArrayList.size()>0)
                                {
                                    UserDao userDao = new UserDao();
                                    for(int i = 0; i < CommentArrayList.size(); i++)
                                    {
                                        PriorityQueue<Comment> CommentQueue = new PriorityQueue<Comment>(10, new CmpComent());
                                        Comment comment = CommentArrayList.get(i);
                                        User user = userDao.findUser(comment.getUser_User_id());
                                        if(comment.getComment_To() == 0)
                                        {
                            %>
                            <li class="comment">
                                <article class="comment-body">
                                    <figure class="comment-author-avatar">
                                        <img src="images/c-1.png" alt="">
                                    </figure>

                                    <div class="comment-wrap">
                                        <div class="comment-author">
                                            <span class="comment-meta d-block">
                                                <a href="#"><%=comment.getComment_Time()%></a>
                                            </span>

                                            <span class="fn">
                                                <a href="#"><%=user.getUser_Name()%></a>
                                            </span>
                                        </div>

                                        <p><%=comment.getComment_Content()%></p>
                                        <div class="reply">
                                            <div class="panel panel-default" style="display: inline-block;">
                                                <div class="panel-heading">
                                                    <h4 class="panel-title">
                                                        <a data-toggle="collapse" data-parent="#accordion"
                                                           href="#<%=comment.getComment_id()%>">
                                                            reply
                                                        </a>
                                                    </h4>
                                                </div>
                                                <div id="<%=comment.getComment_id()%>" class="panel-collapse collapse in">
                                                    <div class="panel-body">

                                                        <div class="comments-form">
                                                            <div class="comment-respond">
                                                                <h3 class="comment-reply-title">Leave a Reply</h3>

                                                                <form action="leavecomment" class="comment-form" method="post">
                                                                    <textarea rows="6" name="comment.Comment_Content" id="commentcontent" placeholder="Messages"></textarea>
                                                                    <input type="hidden" name="comment.Comment_Time" value="<%=new Timestamp(System.currentTimeMillis())%>">
                                                                    <input type="hidden" name="comment.Comment_To" value="<%=comment.getComment_id()%>">
                                                                    <input type="hidden" name="comment.Chapter_Chapter_id" value="<%=chapter_id%>">
                                                                    <input type="hidden" name="comment.User_User_id" value="<S:property value="#session.user.User_id"/>">
                                                                    <input type="hidden" name="login_id" value="<%=login_id%>">
                                                                    <input type="submit" value="send comment">
                                                                </form><!-- .comment-form -->
                                                            </div><!-- .comment-respond -->
                                                        </div><!-- .comments-form -->
                                                    </div>
                                                </div>
                                            </div>
                                            <%
                                                int adminJudge = 0;
                                                if(login_id != 0){
                                                    User LoginUser = userDao.findUser(login_id);
                                                    if(LoginUser.getUser_Identity() == 0) adminJudge = 1;
                                                }
                                                if(comment.getUser_User_id() == login_id || adminJudge == 1){
                                            %>
                                            <a href="delete-comment.jsp?comment_id=<%=comment.getComment_id()%>&user_id=<%=login_id%>" style="background:red;color:#fff">delete</a>
                                            <%
                                                }
                                            %>
                                        </div>
                                    </div>

                                    <div class="clearfix"></div>
                                </article>
                                        <%
                                            CommentQueue.offer(comment);
                                            while(!CommentQueue.isEmpty())
                                            {
                                                Comment comment2 = CommentQueue.poll();
                                                CommentDao commentDao1 = new CommentDao();
                                                ArrayList<Comment> CommentArrayListReply = commentDao1.getCommentReply(comment2.getComment_id());
                                                if(CommentArrayListReply != null && CommentArrayListReply.size() > 0)
                                                {
                                                    for(int j = 0; j < CommentArrayListReply.size(); j ++)  CommentQueue.offer(CommentArrayListReply.get(j));
                                                }
                                                if(comment2 != comment)
                                                {
                                                    User user2 = userDao.findUser(comment2.getUser_User_id());
                                                    User previousUser = userDao.findUser(commentDao.find(comment2.getComment_To()).getUser_User_id()); //回复的User
                                        %>
                                <ol class="children">
                                    <li class="comment">
                                        <article class="comment-body">
                                            <figure class="comment-author-avatar">
                                                <img src="images/c-1.png" alt="">
                                            </figure>

                                            <div class="comment-wrap">
                                                <div class="comment-author">
                                                    <span class="comment-meta d-block">
                                                        <a href="#"><%=comment2.getComment_Time()%></a>
                                                    </span>

                                                    <span class="fn">
                                                        <a href="#"><%=user2.getUser_Name()%></a><a>    Reply To    </a><a href="#"><%=previousUser.getUser_Name()%></a>
                                                    </span>
                                                </div>

                                                <p><%=comment2.getComment_Content()%></p>


                                                <div class="reply">
                                                    <div class="panel panel-default"  style="display: inline-block;">
                                                        <div class="panel-heading">
                                                            <h4 class="panel-title">
                                                                <a data-toggle="collapse" data-parent="#accordion"
                                                                   href="#<%=comment2.getComment_id()%>">reply
                                                                </a>
                                                            </h4>
                                                        </div>
                                                        <div id="<%=comment2.getComment_id()%>" class="panel-collapse collapse in">
                                                            <div class="panel-body">
                                                                <div class="comments-form">
                                                                    <div class="comment-respond">
                                                                        <h3 class="comment-reply-title">Leave a Reply</h3>

                                                                        <form action="leavecomment" class="comment-form" method="post">
                                                                            <textarea rows="6" name="comment.Comment_Content" id="commentcontent" placeholder="Messages"></textarea>
                                                                            <input type="hidden" name="comment.Comment_Time" value="<%=new Timestamp(System.currentTimeMillis())%>">
                                                                            <input type="hidden" name="comment.Comment_To" value="<%=comment2.getComment_id()%>">
                                                                            <input type="hidden" name="comment.Chapter_Chapter_id" value="<%=chapter_id%>">
                                                                            <input type="hidden" name="comment.User_User_id" value="<S:property value="#session.user.User_id"/>">
                                                                            <input type="hidden" name="login_id" value="<%=login_id%>">
                                                                            <input type="submit" value="send comment">
                                                                        </form><!-- .comment-form -->
                                                                    </div><!-- .comment-respond -->
                                                                </div><!-- .comments-form -->
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <%
                                                        if(comment2.getUser_User_id() == login_id || adminJudge == 1){
                                                    %>
                                                    <a href="delete-comment.jsp?comment_id=<%=comment2.getComment_id()%>&user_id=<%=login_id%>" style="background:red;color:#fff">delete</a>
                                                    <%
                                                        }
                                                    %>
                                                </div>

                                            </div>

                                            <div class="clearfix"></div>
                                        </article>
                                    </li>
                                </ol>
                            </li>
                            <%
                                                }
                                            }
                                        }
                                    }
                                }
                            %>
                        </ol><!-- .comment-courseList_ongoing -->
                    </div><!-- .post-comments -->

                    <div class="comments-form">
                        <div class="comment-respond">
                            <h3 class="comment-reply-title">Leave a comment</h3>

                            <form action="leavecomment" class="comment-form" method="post">
                                <textarea rows="6" name="comment.Comment_Content" id="commentcontent" placeholder="Messages"></textarea>
                                <input type="hidden" name="comment.Comment_Time" value="<%=new Timestamp(System.currentTimeMillis())%>">
                                <input type="hidden" name="comment.Comment_To" value="<%=0%>">
                                <input type="hidden" name="comment.Chapter_Chapter_id" value="<%=chapter_id%>">
                                <input type="hidden" name="comment.User_User_id" value="<S:property value="#session.user.User_id"/>">
                                <input type="hidden" name="login_id" value="<%=login_id%>">
                                <input type="submit" value="send comment">
                            </form><!-- .comment-form -->
                        </div><!-- .comment-respond -->
                    </div><!-- .comments-form -->
                </div><!-- .post-comments-wrap -->
            </div><!-- .col -->
        </div><!-- .row -->
    </div><!-- .container -->

    <%@ include file="footer.jsp" %>

    <script type='text/javascript' src='js/jquery.js'></script>
    <script type='text/javascript' src='js/swiper.min.js'></script>
    <script type='text/javascript' src='js/masonry.pkgd.min.js'></script>
    <script type='text/javascript' src='js/jquery.collapsible.min.js'></script>
    <script type='text/javascript' src='js/custom.js'></script>

</body>
</html>