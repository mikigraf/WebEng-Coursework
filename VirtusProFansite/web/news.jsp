<%-- 
    Document   : index
    Created on : Jan 10, 2016, 11:30:53 PM
    Author     : spejs
--%>
<%@page import="beans.News"%>
<%@page import="model.NewsModel"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>VirtusPro</title>
        <!--Import Google Icon Font-->
        <link href="http://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
        <!--Import materialize.css-->
        <link type="text/css" rel="stylesheet" href="css/materialize.min.css"  media="screen,projection"/>
        <link href='https://fonts.googleapis.com/css?family=Arizonia' rel='stylesheet' type='text/css'>
        <!--Import jQuery before materialize.js-->
        <script type="text/javascript" src="https://code.jquery.com/jquery-2.1.1.min.js"></script>
        <script type="text/javascript" src="js/materialize.min.js"></script>
        <script type="text/javascript" src="js/navbarMobile.js"></script>
        <link rel='stylesheet' href='css/style.css'>
        <script>
            $(document).ready(function () {
                $(".button-collapse").sideNav();
            })
        </script>
    </head>
    <body>
        <div class="container">
            <img class="img-responsive" id='banner' src='http://heroeswar.es/wp-content/uploads/2015/07/Banner_VirtusPro_listo.jpg'>
            <nav>
                <div class="nav-wrapper blue-grey darken-4">
                    <a href="#!" class="brand-logo"><img src='http://stuffled.com/vector/wp-content/uploads/sites/5/2014/06/Virtus-PRO-Logo-EPS-vector-image.png' height='55px'/></a>
                    <a href="#" data-activates="mobile-demo" class="button-collapse"><i class="material-icons">menu</i></a>
                    <ul class="right hide-on-med-and-down">
                        <li><a href="index.jsp">News</a></li>
                        <li><a href="team.jsp">Team</a></li>
                    </ul>
                    <ul class="side-nav" id="mobile-demo">
                        <li><a href="index.jsp">News</a></li>
                        <li><a href="team.jsp">Team</a></li>
                    </ul>
                </div>
            </nav>
            <div class='row'>
                <div class='content'>
                    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
                    <jsp:useBean id="newsList" class="model.NewsModel" scope="page" />
                    <%
                        News news = newsList.getNews(request.getParameter("id"));
                        if (news != null) {
                    %>
                    <div class="row" style="padding: 1%">
                        <div class="col s12">
                            <div class="card ">
                                <div class="card-content black-text">
                                    <span class="card-title"><%=news.getTitle()%></span>
                                    <p>
                                        von <%=news.getAuthor()%> am <%=news.getDate()%> in <%=news.getCategory()%>
                                    </p>
                                    <p class="flow-text"><%=news.getNews()%></p>
                                </div>
                                <div class="card-action">
                                    <a href="index.jsp">go back</a>
                                </div>
                            </div>
                        </div>
                    </div>
                    <%
                        }%>
                </div>
            </div>
            <jsp:include page="footer.jsp"/>
        </div>
    </body>
</html>
