<%
    String path = request.getContextPath();
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/"+"templates"+"/";
%>
<!DOCTYPE html>
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="/WEB-INF/struts-tags.tld" prefix="s"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<html lang="en">
<head>
    <base href=" <%=basePath%>">
    <meta charset="UTF-8">
    <title>搜索</title>
    <link rel="stylesheet" href="assets/css/bootstrap.css">
    <link rel="stylesheet" href="assets/css/search.css">
</head>
<body>
    <div class="header">
    <nav class="navbar navbar-default">
        <div class="container-fluid">
            <!-- Brand and toggle get grouped for better mobile display -->
            <div class="navbar-header">
                <a class="navbar-brand" href="">ComforLife</a>
            </div>

            <!-- Collect the nav links, forms, and other content for toggling -->
            <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                <ul class="nav navbar-nav">
                    <li class=""><a href="">找租房</a></li>
                    <li><a href="">買新房</a></li>
                    <li><a href="">買二手房</a></li>
                    <li><a href="">新聞</a></li>
                </ul>
                <ul class="nav navbar-nav navbar-right">
                    <li><a href="">登錄</a></li>
                    <li><a href="">註冊</a></li>
                </ul>
            </div><!-- /.navbar-collapse -->
        </div><!-- /.container-fluid -->
    </nav>

</div>
    <div class="zhanwei"></div>
    <div class="search-container">
        <div class="col-lg-6 search-box">
            <div class="input-group">
                <input type="text" id="search-kw" class="form-control" placeholder="Search for...">
                <span class="input-group-btn">
                    <button class="btn btn-default search-btn" type="button"><span class="glyphicon glyphicon-search" aria-hidden="true"></span>
                    </button>
                </span>
            </div><!-- /input-group -->
        </div><!-- /.col-lg-6 -->
        <div class="tag-box">
            <div class="tags type">
                <div class="tags-name" v="type">種類</div>
                <div class="tag active" id="shouf" v="0">買新房</div>
                <div class="tag" id="zu" v="1">租房</div>
                <div class="tag" id="shous" v="2">買二手房</div>
            </div>
            <div class="tags zu">
                <div class="tags-name" v="rentPay">租金</div>
                <div class="tag active" v="0">不限</div>
                <div class="tag" v="1">0-500</div>
                <div class="tag" v="2">500-1000</div>
                <div class="tag" v="3">1000-2000</div>
                <div class="tag" v="4">2000-3000</div>
                <div class="tag" v="5">3000-5000</div>
                <div class="tag" v="6">5000-8000</div>
            </div>
            <div class="tags shou">
                <div class="tags-name" v="salePay">每平方米</div>
                <div class="tag active" v="0">不限</div>
                <div class="tag" v="1">0-500</div>
                <div class="tag" v="2">2000-3000</div>
                <div class="tag" v="3">3000-5000</div>
                <div class="tag" v="4">5000-8000</div>
                <div class="tag" v="5">8000-10000</div>
                <div class="tag" v="6">10000-20000</div>
            </div>
            <div class="tags">
                <div class="tags-name" v="room">戶型</div>
                <div class="tag active" v="0">不限</div>
                <div class="tag" v="1">一居</div>
                <div class="tag" v="2">二居</div>
                <div class="tag" v="3">三居</div>
                <div class="tag" v="4">四居</div>
            </div>
            <div class="tags zu">
                <div class="tags-name" v="rentType">方式</div>
                <div class="tag active" v="0">不限</div>
                <div class="tag" v="1">整租</div>
                <div class="tag" v="2">合租</div>
                <div class="tag" v="3">日租</div>
                <div class="tag" v="4">周租</div>
            </div>
        </div>
        <div class="house-container">
            <div id="g1" class="house-group">
                <c:forEach var="home" items="${result}" varStatus="status">
                <div class="a-house">
                    <img src="assets/images/cly.jpg" alt="">
                    <div class="house-details">
                        <div class="house-name">
                             ${home.title}
                        </div>
                        <div class="house-types">
                        <c:if test="${home.rentType == 1}">整租
                        </c:if>
                        <c:if test="${home.rentType ==2}">合租
                        </c:if>
                        <c:if test="${home.rentType == 3}">日租
                        </c:if>
                        <c:if test="${home.rentType ==4}">周租
                        </c:if>
                            <span>|</span>
                            ${home.room}室${home.hall}廳
                            <span>|</span>
                                ${home.area}平方米
                            <span>|</span>
                                ${home.floor}/${home.floorNum}層
                            <span>|</span>
                            <c:if test="${home.direction == 1}">南北朝向
                            </c:if>
                            <c:if test="${home.direction == 2}">东西朝向
                            </c:if>
                        </div>
                        <div class="house-position">
                                ${home.homeArea}-${home.busiArea}-${home.conName}
                        </div>
                    </div>
                    <div class="house-price">
                        <span>${home.rentNum}</span>元/月
                    </div>
                </div>
                </c:forEach>
            </div>
            <nav>
                <ul class="pagination">
                    <li>
                        <a href="#" class='previous' aria-label="Previous">
                            <span aria-hidden="true">&laquo;</span>
                        </a>
                    </li>
                    <li class="active"><a href="#g1" class="page-number">1</a></li>
                    <li><a href="#g2" class="page-number">2</a></li>
                    <li><a href="#g3" class="page-number">3</a></li>
                    <li><a href="#g4" class="page-number">4</a></li>
                    <li><a href="#g5" class="page-number">5</a></li>
                    <li>
                        <a href="#" class="next" aria-label="Next">
                            <span aria-hidden="true">&raquo;</span>
                        </a>
                    </li>
                </ul>
            </nav>
        </div>
    </div>
    <div class="footer">
        <div class="container">
            <div class="row">
                <div class="col-md-5 col-md-offset-1 widget">
                    <div class="widget-body">
                        <p>
                            <img alt="知识共享许可协议" style="border-width:0" src="https://o11vcttoe.qnssl.com/images_80x15.png">
                            本网站采用
                            <a rel="license" href="http://creativecommons.org/licenses/by-nc-sa/4.0/" target="_blank">CC BY-NC-SA 4.0 国际许可协议</a>
                        </p>
                    </div>
                </div>
                <div class="col-md-5 widget">
                    <div class="widget-body">
                        <p class="text-right">
                            Copyright © 2016 ComforLive
                        </p>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <script src="assets/js/jquery-2.1.4.js"></script>
    <script src="assets/js/bootstrap.min.js"></script>
    <script src="assets/js/masonry.pkgd.min.js"></script>
    <script src="assets/js/json2.js"></script>

    <script>
        $(function(){
            var args = {};
            $('.tag').on('click', function () {
                $(this).siblings('.tag').removeClass('active');
                $(this).addClass('active');
                $('.tags').each(function(index, e){
                    var i = $(e).children('.tags-name').attr('v');
                    var v;
                    $(e).children('.tag').each(function(index, e){
                        if ($(e).hasClass('active')){
                            v = $(e).attr('v');
                        }
                    });
                    args[i] = v;
                });
                console.log(JSON.stringify(args));

            }) ;
            $('#g1').css('display', 'block');
            var cur_page = 1;
            $('.zu').show();
            $('.shou').hide();
            var page_change = function (i){
                $('.house-group').hide();
                $(i).show();
                cur_page = i.substring(2);
            }
            $('.page-number').on('click', function(){
                $(this).parent('li').siblings('li').removeClass('active');
                $(this).parent('li').addClass('active');
                page_change($(this).attr('href'));
            })
            $('.previous').on('click', function(){
                if (cur_page > 1) cur_page = parseInt(cur_page) - 1;
                page_change('#g'+cur_page);
                console.log('#g'+cur_page);
                $(this).parent('li').siblings('li').removeClass('active');
                $($(this).parent('li').siblings('li')[cur_page-1]).addClass('active');
            });
            $('.next').on('click', function(){
                if (cur_page < 5) cur_page = parseInt(cur_page) + 1;
                page_change('#g'+cur_page);
                console.log('#g'+cur_page);
                $(this).parent('li').siblings('li').removeClass('active');
                $($(this).parent('li').siblings('li')[cur_page]).addClass('active');
            });
            $('#zu').on('click', function(){
                $('.zu').show();
                $('.shou').hide();
            });
            $('#shouf').on('click', function(){
                $('.shou').show();
                $('.zu').hide();
            });
            $('#shous').on('click', function(){
                $('.shou').show();
                $('.zu').hide();
            });

            $('.search-btn').on('click', function(){
                args['kw'] = $('#search-kw').val();
                var s = '?';
                args.forEach(function(i, e){
                    s += '' + i + '=' + e + '&'
                });
                var url = '';
                window.location = url+s;

            });
        });
    </script>
</body>
</html>