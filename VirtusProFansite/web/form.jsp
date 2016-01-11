<%-- 
    Document   : index
    Created on : Jan 10, 2016, 11:30:53 PM
    Author     : spejs
--%>
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
                $('.datepicker').pickadate({
                    selectMonths: true, // Creates a dropdown to control month
                    selectYears: 15 // Creates a dropdown of 15 years to control year
                });
                $('#news').trigger('autoresize');
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
                <div class='content' style='margin-top: 2%'>
                    <form class='col s12' role='form' method='POST' action='NewsController'>
                        <div class="input-field col s12 m6">
                            <input placeholder="Name" id="name" name='author' type="text" class="validate">
                            <label for="name">Name</label>
                        </div>
                        <div class="input-field col s12 m6">
                            <input placeholder="Email" id="email" type="email" name='email' class="validate" pattern="[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,3}$">
                            <label for="email">Email</label>
                        </div>
                        <label>Category</label>
                        <select class="browser-default" name='category'>
                            <option value="" disabled selected>Choose your option</option>
                            <option value="games">Games</option>
                            <option value="roster">Roster moves</option>
                            <option value="psa">PSA</option>
                        </select>
                        <div class="input-field col s12">
                            <input placeholder="Title" id="title" type="text" name='title' class="validate">
                            <label for="title">Title</label>
                        </div>
                        <div class='input-field col s12'>
                            <input type="date" name='date' class="datepicker">
                            <label for='date'>Date</label>
                        </div>
                        <div class="input-field col s12">
                            <textarea id="news" name='news' class="materialize-textarea"></textarea>
                            <label for="news">News</label>
                        </div>
                        <button class="waves-effect waves-light btn"><i class="material-icons right">play_arrow</i>Submit</button>
                    </form>
                </div>
            </div>
        </div>
    </body>
</html>
