<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ page import="com.NewsEntity" %>

<%
    String path = request.getContextPath();
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/"+"templates"+"/";
%>
<!DOCTYPE html>
<html lang="en">
<base href=" <%=basePath%>">
<%
    List news = (List)request.getAttribute("admin0Info");
    int size = news.size();
%>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>SB Admin 2 - Bootstrap Admin Theme</title>

    <!-- Bootstrap Core CSS -->
    <link href="assets/css/bootstrap.min.css" rel="stylesheet">

    <!-- MetisMenu CSS -->
    <link href="assets/css/metisMenu.min.css" rel="stylesheet">

    <!-- Timeline CSS -->
    <link href="assets/css/timeline.css" rel="stylesheet">

    <!-- Custom CSS -->
    <link href="assets/css/sb-admin-2.css" rel="stylesheet">

    <!-- Morris Charts CSS -->
    <link href="assets/css/morris.css" rel="stylesheet">

    <!-- Custom Fonts -->
    <link href="assets/css/font-awesome.min.css" rel="stylesheet" type="text/css">

    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
    <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->

    <link href="assets/css/titatoggle-dist.css" rel="stylesheet">

    <link rel="stylesheet" href="assets/css/admin-index.css">

</head>

<body>
<div id="wrapper">
    <!-- Navigation -->
    <nav class="navbar navbar-default navbar-static-top" role="navigation" style="margin-bottom: 0">
    <div class="container-fluid">
    <!-- Brand and toggle get grouped for better mobile display -->
    <div class="navbar-header">
    <a class="navbar-brand" href="">ComforLife</a>
    </div>

    <!-- Collect the nav links, forms, and other content for toggling -->
    <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
    <ul class="nav navbar-nav">
    <li class=""><a href="">找租房</a></li>
    <li><a href="">买新房</a></li>
    <li><a href="">买二手房</a></li>
    <li><a href="">新闻</a></li>
    </ul>
    <ul class="nav navbar-nav navbar-right">

    <li class="dropdown">
    <a class="dropdown-toggle" data-toggle="dropdown" href="#">
    <i class="fa fa-user fa-fw"></i>  <i class="fa fa-caret-down"></i>
    </a>
    <ul class="dropdown-menu dropdown-user">
    <li><a href="/templates/user?user_id=<%=s.getAttribute("id") %>"><i class="fa fa-user fa-fw"></i> 用户账户</a>
    </li>
    <li class="divider"></li>
    <li><a href='/struts/delSession.action'>註銷</a></li>

    </ul>
    <!-- /.dropdown-user -->
    </li>
    </ul>
    </div><!-- /.navbar-collapse -->
    </div><!-- /.container-fluid -->


    <div class="navbar-default sidebar" role="navigation">
            <div class="sidebar-nav navbar-collapse">
                <ul class="nav" id="side-menu">
                    <li>
                        <a href="#"><i class="fa fa-bar-chart-o fa-fw"></i> 新聞<span class="fa arrow"></span></a>
                        <ul class="nav nav-second-level collapse">
                            <li>
                                <a href="">查看新聞量</a>
                            </li>
                            <li>
                                <a href="">添加新聞</a>
                            </li>
                            <li>
                                <a href="">刪除新聞</a>
                            </li>
                        </ul>
                    </li>
                    <li>
                        <a href="#"><i class="fa fa-edit fa-fw"></i> 房產管理<span class="fa arrow"></span></a>
                        <ul class="nav nav-second-level collapse">
                            <li>
                                <a href="">審批房產</a>
                            </li>
                            <li>
                                <a href="">刪除房產</a>
                            </li>
                        </ul>
                        <!-- /.nav-second-level -->
                    </li>
                    <li>
                        <a href="#"><i class="fa fa-user fa-fw"></i> 用戶管理<span class="fa arrow"></span></a>
                        <ul class="nav nav-second-level collapse">
                            <li>
                                <a href="">刪除用戶</a>
                            </li>
                        </ul>
                        <!-- /.nav-second-level -->
                    </li>
                </ul>
            </div>
            <!-- /.sidebar-collapse -->
        </div>
        <!-- /.navbar-static-side -->
    </nav>

    <div id="page-wrapper">
        <div class="row">
            <div class="col-lg-12">
                <h1 class="page-header">新聞</h1>
            </div>
            <!-- /.col-lg-12 -->
        </div>
        <!-- /.row -->
        <div class="row">
            <div class="col-lg-12">
                <div class="panel panel-default">
                    <div class="panel-heading">
                        新聞列表
                    </div>
                    <!-- /.panel-heading -->
                    <div class="panel-body">
                        <div class="dataTable_wrapper">
                            <table class="table table-striped table-bordered table-hover" id="dataTables-example">
                                <thead>
                                <tr>
                                    <th>新聞ID</th>
                                    <th>新聞標題</th>
                                    <th>作者</th>
                                    <th>時間</th>
                                    <th>點擊量</th>
                                    <th>是否置頂</th>
                                </tr>
                                </thead>
                                <tbody>
                                <%
                                    NewsEntity e;
                                    for(int i=0; i<size; i++){
                                        e = (NewsEntity)news.get(i);
                                        out.println( "<tr>"+
                                                     "<td>"+e.getId()+"</td>"+
                                                     "<td>"+e.getAuthor()+"</td>"+
                                                     "<td>"+e.getTitle()+"</td>"+
                                                     "<td class='center'>"+e.getTime()+"</td>"+
                                                     "<td class='center'>"+e.getClick()+"</td>"+
                                                     "<td>"+
                                                     "<div class='checkbox checkbox-slider--c-weight'>"+
                                                     "<label>"+
                                                     "<input type='checkbox' class='zd' "+(e.getTop()==1? "checked>":">")+"<span></span>"+
                                                     "</label></div></td></tr>"
                                                   );
                                    }
                                %>
                                <%--<tr>--%>
                                    <%--<td>1</td>--%>
                                    <%--<td>崔樂陽</td>--%>
                                    <%--<td>崔樂陽</td>--%>
                                    <%--<td class="center">01/01/2016</td>--%>
                                    <%--<td class="center">50</td>--%>
                                    <%--<td>--%>
                                        <%--<div class="checkbox checkbox-slider--c-weight">--%>
                                            <%--<label>--%>
                                                <%--<input type="checkbox" class="zd"><span></span>--%>
                                            <%--</label>--%>
                                        <%--</div>--%>
                                    <%--</td>--%>
                                <%--</tr>--%>
                                <%--<tr>--%>
                                    <%--<td>1</td>--%>
                                    <%--<td>崔樂陽</td>--%>
                                    <%--<td>崔樂陽</td>--%>
                                    <%--<td class="center">01/01/2016</td>--%>
                                    <%--<td class="center">50</td>--%>
                                    <%--<td>--%>
                                        <%--<div class="checkbox checkbox-slider--c-weight">--%>
                                            <%--<label>--%>
                                                <%--<input type="checkbox"><span></span>--%>
                                            <%--</label>--%>
                                        <%--</div>--%>
                                    <%--</td>--%>
                                <%--</tr>--%>
                                <%--<tr>--%>
                                    <%--<td>1</td>--%>
                                    <%--<td>崔樂陽</td>--%>
                                    <%--<td>崔樂陽</td>--%>
                                    <%--<td class="center">01/01/2016</td>--%>
                                    <%--<td class="center">50</td>--%>
                                    <%--<td>--%>
                                        <%--<div class="checkbox checkbox-slider--c-weight">--%>
                                            <%--<label>--%>
                                                <%--<input type="checkbox"><span></span>--%>
                                            <%--</label>--%>
                                        <%--</div>--%>
                                    <%--</td>--%>
                                <%--</tr>--%>
                                <%--<tr>--%>
                                    <%--<td>1</td>--%>
                                    <%--<td>崔樂陽</td>--%>
                                    <%--<td>崔樂陽</td>--%>
                                    <%--<td class="center">01/01/2016</td>--%>
                                    <%--<td class="center">50</td>--%>
                                    <%--<td>--%>
                                        <%--<div class="checkbox checkbox-slider--c-weight">--%>
                                            <%--<label>--%>
                                                <%--<input type="checkbox"><span></span>--%>
                                            <%--</label>--%>
                                        <%--</div>--%>
                                    <%--</td>--%>
                                <%--</tr>--%>
                                <%--<tr>--%>
                                    <%--<td>1</td>--%>
                                    <%--<td>崔樂陽</td>--%>
                                    <%--<td>崔樂陽</td>--%>
                                    <%--<td class="center">01/01/2016</td>--%>
                                    <%--<td class="center">50</td>--%>
                                    <%--<td>--%>
                                        <%--<div class="checkbox checkbox-slider--c-weight">--%>
                                            <%--<label>--%>
                                                <%--<input type="checkbox"><span></span>--%>
                                            <%--</label>--%>
                                        <%--</div>--%>
                                    <%--</td>--%>
                                <%--</tr>--%>
                                <%--<tr>--%>
                                    <%--<td>1</td>--%>
                                    <%--<td>崔樂陽</td>--%>
                                    <%--<td>崔樂陽</td>--%>
                                    <%--<td class="center">01/01/2016</td>--%>
                                    <%--<td class="center">50</td>--%>
                                    <%--<td>--%>
                                        <%--<div class="checkbox checkbox-slider--c-weight">--%>
                                            <%--<label>--%>
                                                <%--<input type="checkbox"><span></span>--%>
                                            <%--</label>--%>
                                        <%--</div>--%>
                                    <%--</td>--%>
                                <%--</tr>--%>
                                <%--<tr>--%>
                                    <%--<td>1</td>--%>
                                    <%--<td>崔樂陽</td>--%>
                                    <%--<td>崔樂陽</td>--%>
                                    <%--<td class="center">01/01/2016</td>--%>
                                    <%--<td class="center">50</td>--%>
                                    <%--<td>--%>
                                        <%--<div class="checkbox checkbox-slider--c-weight">--%>
                                            <%--<label>--%>
                                                <%--<input type="checkbox"><span></span>--%>
                                            <%--</label>--%>
                                        <%--</div>--%>
                                    <%--</td>--%>
                                <%--</tr>--%>
                                <%--<tr>--%>
                                    <%--<td>1</td>--%>
                                    <%--<td>崔樂陽</td>--%>
                                    <%--<td>崔樂陽</td>--%>
                                    <%--<td class="center">01/01/2016</td>--%>
                                    <%--<td class="center">50</td>--%>
                                    <%--<td>--%>
                                        <%--<div class="checkbox checkbox-slider--c-weight">--%>
                                            <%--<label>--%>
                                                <%--<input type="checkbox"><span></span>--%>
                                            <%--</label>--%>
                                        <%--</div>--%>
                                    <%--</td>--%>
                                <%--</tr>--%>
                                <%--<tr>--%>
                                    <%--<td>1</td>--%>
                                    <%--<td>崔樂陽</td>--%>
                                    <%--<td>崔樂陽</td>--%>
                                    <%--<td class="center">01/01/2016</td>--%>
                                    <%--<td class="center">50</td>--%>
                                    <%--<td>--%>
                                        <%--<div class="checkbox checkbox-slider--c-weight">--%>
                                            <%--<label>--%>
                                                <%--<input type="checkbox"><span></span>--%>
                                            <%--</label>--%>
                                        <%--</div>--%>
                                    <%--</td>--%>
                                <%--</tr>--%>
                                <%--<tr>--%>
                                    <%--<td>1</td>--%>
                                    <%--<td>崔樂陽</td>--%>
                                    <%--<td>崔樂陽</td>--%>
                                    <%--<td class="center">01/01/2016</td>--%>
                                    <%--<td class="center">50</td>--%>
                                    <%--<td>--%>
                                        <%--<div class="checkbox checkbox-slider--c-weight">--%>
                                            <%--<label>--%>
                                                <%--<input type="checkbox"><span></span>--%>
                                            <%--</label>--%>
                                        <%--</div>--%>
                                    <%--</td>--%>
                                <%--</tr>--%>
                                <%--<tr>--%>
                                    <%--<td>1</td>--%>
                                    <%--<td>崔樂陽</td>--%>
                                    <%--<td>崔樂陽</td>--%>
                                    <%--<td class="center">01/01/2016</td>--%>
                                    <%--<td class="center">50</td>--%>
                                    <%--<td>--%>
                                        <%--<div class="checkbox checkbox-slider--c-weight">--%>
                                            <%--<label>--%>
                                                <%--<input type="checkbox"><span></span>--%>
                                            <%--</label>--%>
                                        <%--</div>--%>
                                    <%--</td>--%>
                                <%--</tr>--%>
                                <%--<tr>--%>
                                    <%--<td>1</td>--%>
                                    <%--<td>崔樂陽</td>--%>
                                    <%--<td>崔樂陽</td>--%>
                                    <%--<td class="center">01/01/2016</td>--%>
                                    <%--<td class="center">50</td>--%>
                                    <%--<td>--%>
                                        <%--<div class="checkbox checkbox-slider--c-weight">--%>
                                            <%--<label>--%>
                                                <%--<input type="checkbox"><span></span>--%>
                                            <%--</label>--%>
                                        <%--</div>--%>
                                    <%--</td>--%>
                                <%--</tr>--%>
                                <%--<tr>--%>
                                    <%--<td>1</td>--%>
                                    <%--<td>崔樂陽</td>--%>
                                    <%--<td>崔樂陽</td>--%>
                                    <%--<td class="center">01/01/2016</td>--%>
                                    <%--<td class="center">50</td>--%>
                                    <%--<td>--%>
                                        <%--<div class="checkbox checkbox-slider--c-weight">--%>
                                            <%--<label>--%>
                                                <%--<input type="checkbox"><span></span>--%>
                                            <%--</label>--%>
                                        <%--</div>--%>
                                    <%--</td>--%>
                                <%--</tr>--%>
                                <%--<tr>--%>
                                    <%--<td>1</td>--%>
                                    <%--<td>崔樂陽</td>--%>
                                    <%--<td>崔樂陽</td>--%>
                                    <%--<td class="center">01/01/2016</td>--%>
                                    <%--<td class="center">50</td>--%>
                                    <%--<td>--%>
                                        <%--<div class="checkbox checkbox-slider--c-weight">--%>
                                            <%--<label>--%>
                                                <%--<input type="checkbox"><span></span>--%>
                                            <%--</label>--%>
                                        <%--</div>--%>
                                    <%--</td>--%>
                                <%--</tr>--%>
                                <%--<tr>--%>
                                    <%--<td>1</td>--%>
                                    <%--<td>崔樂陽</td>--%>
                                    <%--<td>崔樂陽</td>--%>
                                    <%--<td class="center">01/01/2016</td>--%>
                                    <%--<td class="center">50</td>--%>
                                    <%--<td>--%>
                                        <%--<div class="checkbox checkbox-slider--c-weight">--%>
                                            <%--<label>--%>
                                                <%--<input type="checkbox"><span></span>--%>
                                            <%--</label>--%>
                                        <%--</div>--%>
                                    <%--</td>--%>
                                <%--</tr>--%>
                                <%--<tr>--%>
                                    <%--<td>1</td>--%>
                                    <%--<td>崔樂陽</td>--%>
                                    <%--<td>崔樂陽</td>--%>
                                    <%--<td class="center">01/01/2016</td>--%>
                                    <%--<td class="center">50</td>--%>
                                    <%--<td>--%>
                                        <%--<div class="checkbox checkbox-slider--c-weight">--%>
                                            <%--<label>--%>
                                                <%--<input type="checkbox"><span></span>--%>
                                            <%--</label>--%>
                                        <%--</div>--%>
                                    <%--</td>--%>
                                <%--</tr>--%>
                                <%--<tr>--%>
                                    <%--<td>1</td>--%>
                                    <%--<td>崔樂陽</td>--%>
                                    <%--<td>崔樂陽</td>--%>
                                    <%--<td class="center">01/01/2016</td>--%>
                                    <%--<td class="center">50</td>--%>
                                    <%--<td>--%>
                                        <%--<div class="checkbox checkbox-slider--c-weight">--%>
                                            <%--<label>--%>
                                                <%--<input type="checkbox"><span></span>--%>
                                            <%--</label>--%>
                                        <%--</div>--%>
                                    <%--</td>--%>
                                <%--</tr>--%>
                                <%--<tr>--%>
                                    <%--<td>1</td>--%>
                                    <%--<td>崔樂陽</td>--%>
                                    <%--<td>崔樂陽</td>--%>
                                    <%--<td class="center">01/01/2016</td>--%>
                                    <%--<td class="center">50</td>--%>
                                    <%--<td>--%>
                                        <%--<div class="checkbox checkbox-slider--c-weight">--%>
                                            <%--<label>--%>
                                                <%--<input type="checkbox"><span></span>--%>
                                            <%--</label>--%>
                                        <%--</div>--%>
                                    <%--</td>--%>
                                <%--</tr>--%>
                                <%--<tr>--%>
                                    <%--<td>1</td>--%>
                                    <%--<td>崔樂陽</td>--%>
                                    <%--<td>崔樂陽</td>--%>
                                    <%--<td class="center">01/01/2016</td>--%>
                                    <%--<td class="center">50</td>--%>
                                    <%--<td>--%>
                                        <%--<div class="checkbox checkbox-slider--c-weight">--%>
                                            <%--<label>--%>
                                                <%--<input type="checkbox"><span></span>--%>
                                            <%--</label>--%>
                                        <%--</div>--%>
                                    <%--</td>--%>
                                <%--</tr>--%>
                                <%--<tr>--%>
                                    <%--<td>1</td>--%>
                                    <%--<td>崔樂陽</td>--%>
                                    <%--<td>崔樂陽</td>--%>
                                    <%--<td class="center">01/01/2016</td>--%>
                                    <%--<td class="center">50</td>--%>
                                    <%--<td>--%>
                                        <%--<div class="checkbox checkbox-slider--c-weight">--%>
                                            <%--<label>--%>
                                                <%--<input type="checkbox"><span></span>--%>
                                            <%--</label>--%>
                                        <%--</div>--%>
                                    <%--</td>--%>
                                <%--</tr>--%>
                                <%--<tr>--%>
                                    <%--<td>1</td>--%>
                                    <%--<td>崔樂陽</td>--%>
                                    <%--<td>崔樂陽</td>--%>
                                    <%--<td class="center">01/01/2016</td>--%>
                                    <%--<td class="center">50</td>--%>
                                    <%--<td>--%>
                                        <%--<div class="checkbox checkbox-slider--c-weight">--%>
                                            <%--<label>--%>
                                                <%--<input type="checkbox"><span></span>--%>
                                            <%--</label>--%>
                                        <%--</div>--%>
                                    <%--</td>--%>
                                <%--</tr>--%>
                                <%--<tr>--%>
                                    <%--<td>1</td>--%>
                                    <%--<td>崔樂陽</td>--%>
                                    <%--<td>崔樂陽</td>--%>
                                    <%--<td class="center">01/01/2016</td>--%>
                                    <%--<td class="center">50</td>--%>
                                    <%--<td>--%>
                                        <%--<div class="checkbox checkbox-slider--c-weight">--%>
                                            <%--<label>--%>
                                                <%--<input type="checkbox"><span></span>--%>
                                            <%--</label>--%>
                                        <%--</div>--%>
                                    <%--</td>--%>
                                <%--</tr>--%>
                                <%--<tr>--%>
                                    <%--<td>1</td>--%>
                                    <%--<td>崔樂陽</td>--%>
                                    <%--<td>崔樂陽</td>--%>
                                    <%--<td class="center">01/01/2016</td>--%>
                                    <%--<td class="center">50</td>--%>
                                    <%--<td>--%>
                                        <%--<div class="checkbox checkbox-slider--c-weight">--%>
                                            <%--<label>--%>
                                                <%--<input type="checkbox"><span></span>--%>
                                            <%--</label>--%>
                                        <%--</div>--%>
                                    <%--</td>--%>
                                <%--</tr>--%>
                                <%--<tr>--%>
                                    <%--<td>1</td>--%>
                                    <%--<td>崔樂陽</td>--%>
                                    <%--<td>崔樂陽</td>--%>
                                    <%--<td class="center">01/01/2016</td>--%>
                                    <%--<td class="center">50</td>--%>
                                    <%--<td>--%>
                                        <%--<div class="checkbox checkbox-slider--c-weight">--%>
                                            <%--<label>--%>
                                                <%--<input type="checkbox"><span></span>--%>
                                            <%--</label>--%>
                                        <%--</div>--%>
                                    <%--</td>--%>
                                <%--</tr>--%>
                                <%--<tr>--%>
                                    <%--<td>1</td>--%>
                                    <%--<td>崔樂陽</td>--%>
                                    <%--<td>崔樂陽</td>--%>
                                    <%--<td class="center">01/01/2016</td>--%>
                                    <%--<td class="center">50</td>--%>
                                    <%--<td>--%>
                                        <%--<div class="checkbox checkbox-slider--c-weight">--%>
                                            <%--<label>--%>
                                                <%--<input type="checkbox"><span></span>--%>
                                            <%--</label>--%>
                                        <%--</div>--%>
                                    <%--</td>--%>
                                <%--</tr>--%>
                                <%--<tr>--%>
                                    <%--<td>1</td>--%>
                                    <%--<td>崔樂陽</td>--%>
                                    <%--<td>崔樂陽</td>--%>
                                    <%--<td class="center">01/01/2016</td>--%>
                                    <%--<td class="center">50</td>--%>
                                    <%--<td>--%>
                                        <%--<div class="checkbox checkbox-slider--c-weight">--%>
                                            <%--<label>--%>
                                                <%--<input type="checkbox"><span></span>--%>
                                            <%--</label>--%>
                                        <%--</div>--%>
                                    <%--</td>--%>
                                <%--</tr>--%>
                                <%--<tr>--%>
                                    <%--<td>1</td>--%>
                                    <%--<td>崔樂陽</td>--%>
                                    <%--<td>崔樂陽</td>--%>
                                    <%--<td class="center">01/01/2016</td>--%>
                                    <%--<td class="center">50</td>--%>
                                    <%--<td>--%>
                                        <%--<div class="checkbox checkbox-slider--c-weight">--%>
                                            <%--<label>--%>
                                                <%--<input type="checkbox"><span></span>--%>
                                            <%--</label>--%>
                                        <%--</div>--%>
                                    <%--</td>--%>
                                <%--</tr>--%>
                                <%--<tr>--%>
                                    <%--<td>1</td>--%>
                                    <%--<td>崔樂陽</td>--%>
                                    <%--<td>崔樂陽</td>--%>
                                    <%--<td class="center">01/01/2016</td>--%>
                                    <%--<td class="center">50</td>--%>
                                    <%--<td>--%>
                                        <%--<div class="checkbox checkbox-slider--c-weight">--%>
                                            <%--<label>--%>
                                                <%--<input type="checkbox"><span></span>--%>
                                            <%--</label>--%>
                                        <%--</div>--%>
                                    <%--</td>--%>
                                <%--</tr>--%>
                                <%--<tr>--%>
                                    <%--<td>1</td>--%>
                                    <%--<td>崔樂陽</td>--%>
                                    <%--<td>崔樂陽</td>--%>
                                    <%--<td class="center">01/01/2016</td>--%>
                                    <%--<td class="center">50</td>--%>
                                    <%--<td>--%>
                                        <%--<div class="checkbox checkbox-slider--c-weight">--%>
                                            <%--<label>--%>
                                                <%--<input type="checkbox"><span></span>--%>
                                            <%--</label>--%>
                                        <%--</div>--%>
                                    <%--</td>--%>
                                <%--</tr>--%>
                                </tbody>
                            </table>
                        </div>
                        <!-- /.table-responsive -->
                    </div>
                    <!-- /.panel-body -->
                </div>
                <!-- /.panel -->
            </div>
            <!-- /.col-lg-12 -->
        </div>
        <!-- /.row -->
    </div>
    <!-- /#page-wrapper -->

</div>
<!-- /#wrapper -->

<!-- jQuery -->
<script src="assets/js/jquery-2.2.1.min.js"></script>

<!-- Bootstrap Core JavaScript -->
<script src="assets/js/bootstrap.min.js"></script>

<!-- Metis Menu Plugin JavaScript -->
<script src="assets/js/metisMenu.min.js"></script>

<!-- Morris Charts JavaScript -->
<script src="assets/js/raphael-min.js"></script>
<!--<script src="assets/js/morris.min.js"></script>-->
<!--<script src="assets/js/morris-data.js"></script>-->

<!-- Custom Theme JavaScript -->
<script src="assets/js/sb-admin-2.js"></script>

<!-- DataTables JavaScript -->
<script src="assets/js/jquery.dataTables.min.js"></script>
<script src="assets/js/dataTables.bootstrap.min.js"></script>

<script>
    $(function(){
        $('.active').removeClass('active');
        $('.nav-second-level').removeClass('in');
        $('#dataTables-example').DataTable({
            responsive: true,
            "language": {
                "info": "_START_ - _END_ 共 _TOTAL_ 條新聞",
                "infoEmpty": "無內容",
                "infoFiltered": " - 共 _MAX_ 條新聞",
                "lengthMenu": "每頁顯示 _MENU_ 條新聞",
                "search": "搜索:",
                "zeroRecords": "無符合條件",
                "paginate": {
                    "next": "下一頁",
                    "previous": "上一頁"
                }
            }
        });
        $('.zd').on('click', function(){
            var id = $($(this).parents('td').siblings('td')[0]).html();
            var flag = 0;
            if ($(this).is(':checked')){
                flag = 1;
            }
            var d = {
                id: id,
                flag: flag
            };
            $.ajax({
                method: 'POST',
                url: '',
                data: d,
                success: function(){},
                error: function(){}
            });
        });
    });
</script>
</body>

</html>
