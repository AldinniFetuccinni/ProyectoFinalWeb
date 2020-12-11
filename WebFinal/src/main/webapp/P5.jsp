<%-- 
    Document   : P5
    Created on : 9/12/2020, 10:38:44 AM
    Author     : aldom
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css" integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous">
    <link rel= "stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.1/css/all.min.css">
    <link href="https://fonts.googleapis.com/css2?family=Yanone+Kaffeesatz:wght@600&display=swap" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css2?family=Hind+Siliguri:wght@300&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="P5.CSS">
    <title>Noticias Cheems</title>
    </head>
    <body>
    <div class = "container">
        <nav class = "nav-main">
            <a href="P2.jsp">
                <img src= "img/logo.png" alt= "logo" class ="class-logo">
            </a>
            <ul class= "menu">
                <li>
                    <a href ="p5.jsp">Agregar Noticia</a>
                </li>
                <li>
                    <a href ="#">Espectaculos</a>
                </li>
                <li>
                    <a href ="#">Politica</a>
                </li>
                <li>
                    <div class="input-group mb-3">
                        <div class="input-group-prepend">
                          <button class="btn btn-outline-secondary" type="button" id="button-addon1">Button</button>
                        </div>
                        <input type="text" class="form-control" placeholder="" aria-label="Example text with button addon" aria-describedby="button-addon1">
                    </div>
                </li>
            </ul>
            <ul class="user">
                <li>
                    <a href="P6.jsp" class="user"><%=session.getAttribute("UserName")%></a>
                </li>
            </ul>
            <ul>
                <li>
                    <img src="<%=session.getAttribute("Img")%>" alt = "avatar" class="class-avatar">
                </li>
            </ul>
        </nav>
        <hr>
        <div class ="Agreg-Noti"> 
            <h1>Agregar Noticia</h1>
            <h4>Titulo</h4>
            <input class="form-control" type="text" placeholder="Disabled input" aria-label="Disabled input example">
            <h4>Breve descripción</h4>
            <input class="form-control" type="text" placeholder="Disabled input" aria-label="Disabled input example">
            <h4>Cuerpo</h4>
            <input class="form-control" type="text" placeholder="Disabled input" aria-label="Disabled input example">
            <div class ="files">
                <form>
                    <h4>Imagen</h4>
                    <input type="file" id="myFile" name="filename">
                </form>
                <form>
                    <h4>Video</h4>
                    <input type="file" id="myFile" name="filename">
                </form>
            </div>
            <button type="button" class="btn btn-success">Enviar</button>
        </div>
        <h1>Aprobar Noticia</h1>
        <div class="aprobar-noti">
            <h4>Titulo</h4>
            <p class ="aprov-tit">Titulo a aprobar</p>
            <h4>Breve descripción</h4>
            <p class ="aprov-desc">Descripción a aprobar</p>
            <h4>Cuerpo</h4>
            <p class ="aprov-cuer">Yo nada más quiero decirle a la directiva de los Tigres que tenga piedad de nosotros los aficionados. No puede ser posible, somos el hazmerreír de todo México, 4-0 por favor entiendan. Ya corran a ese técnico, ¿hasta cuándo? ¿Qué más quieren ver? ¿Qué más quieren? Nosotros los aficionados ahí en el estadio echando porras y cuanto para que ellos no hagan nada. Es infame ver cómo el equipo perdía el día de hoy, ¿hasta cuándo? ¿Hasta cuándo? Le digo a toda esa directiva de inutiles que no han podido hacer nada, por favor hombre, ya estuvo bueno; todos esos jugadores que no hacen nada, que ellos como quiera se les paga y el fin de semana se van a los antros, a las discos a seguir disfrutando, mientras que el aficionado, el que siente los colores de los Tigres, tiene que estar siempre soportando la burla de los Rayados que tienen un gran equipo ahorita, los felicito. Yo soy uno de los tantos que estoy deshecho, ya no hallo ni qué hacer, por favor, se lo suplico, por el amor de Dios, haga algo.</p>
            <div class ="files">
                <div class="img-vid">
                    <img src="img/noticia.jpg" alt="cheems" class="noticia-img">
                    <video class="video-not" autoplay>
                        <source src="img/music.mp4">
                    </video>
                </div>
            </div>
            <button type="button" class="btn btn-success">Aprobar</button>
            <button type="button" class="btn btn-danger">Rechazar</button>
        </div>
    </div>
    </body>
</html>
