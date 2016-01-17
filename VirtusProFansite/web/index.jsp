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
        <script type="text/javascript" src="js/shoutbox.js"></script>
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
                        <li class='active'><a href="index.jsp">News</a></li>
                        <li><a href="team.jsp">Team</a></li>
                    </ul>
                    <ul class="side-nav" id="mobile-demo">
                        <li class='active'><a href="index.jsp">News</a></li>
                        <li><a href="team.jsp">Team</a></li>
                    </ul>
                </div>
            </nav>

            <div class='row'>
                <div class='content'>

                    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

                    <jsp:useBean id="newsList" class="model.NewsModel" scope="page" />

                    <%
                        if (request.getParameter("id") == null) {
                    %>
                    <c:forEach var="news" items="${newsList.getNews()}">

                        <div class="row" style="padding: 1%">
                            <div class="col s12">
                                <div class="card ">
                                    <div class="card-content black-text">
                                        <span class="card-title">${news.getTitle()}</span>
                                        <p>
                                            von ${news.getAuthor()} am ${news.getDate()}
                                        </p>
                                        <p>${news.getShort()}...</p>
                                    </div>
                                    <div class="card-action">
                                        <a href="news.jsp?id=${news.getID()}">read more</a>
                                    </div>
                                </div>
                            </div>
                        </div>

                    </c:forEach>
                    <%
                    } else {
                        News news = newsList.getNews(request.getParameter("id"));
                        if (news != null) {
                    %>


                    <%
                    } else {
                    %>
                    <p>News not found</p>
                    <%
                            }
                        }
                    %>
                    <div class="row" style="padding: 1%;">
                        <div id='messages' style="height:20%;overflow:auto;">

                            </div>
                    </div>
                    <form id="shout-form">
                    <div class="row" style="padding: 1%;">
                        <div class="input-field col s12 m4">
                            <input type="text" maxlength="20" class="form-control col-sm-8" name="name" id="name" placeholder="name">
                        </div>
                        <div class="input-field col s12 m8">
                            <input type="text" onkeyup="count()" maxlength="240" class="form-control col-sm-8" name="message" id="message" placeholder="messages">
                        </div>
                        <div class="col s12">
                            <div id="limit"></div>
                            <button id="shout-submit" type='submit' value='submit' class="btn btn-primary col-sm-2"> Submit </button>
                        </div>
                    </div>
                    </form>

                    <script>
                        var box = document.getElementById("message");
                        var limit = document.getElementById("limit");

                        function count() {
                            limit.innerHTML = 240 - box.value.length
                            if ((240 - box.value.length) < 40) {
                                limit.style.color = "red";
                            } else {
                                limit.style.color = "grey"
                            }
                        }
                    </script>
                </div>
            </div>
            <jsp:include page="footer.jsp"/>
        </div>
    </body>
</html>
