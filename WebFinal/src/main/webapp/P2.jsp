<%-- 
    Document   : P2
    Created on : 9/12/2020, 02:48:45 AM
    Author     : aldom
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css" integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous">
        <link rel= "stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.1/css/all.min.css">
        <link href="https://fonts.googleapis.com/css2?family=Yanone+Kaffeesatz:wght@600&display=swap" rel="stylesheet">
        <link href="https://fonts.googleapis.com/css2?family=Hind+Siliguri:wght@300&display=swap" rel="stylesheet">
        <link rel="stylesheet" href="P2.CSS">
        <title>Noticias Cheems</title>
    </head>
    <body>
        <div class = "container">
        <!--NAVEGACIÓN-->
        <nav class = "nav-main">
            <a href="P2.jsp">
              <img src= "img/logo.png" alt= "logo" class ="class-logo">
            </a>
            <ul class= "menu">
                <li>
                    <a href="p5.jsp">Agregar Noticia</a>
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
                          <button class="btn btn-outline-secondary" type="button" id="button-addon1">Buscar</button>
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
                    <img src = "<%=session.getAttribute("Img")%>" alt = "avatar" class="class-avatar"/>
                </li>
            </ul>
        </nav>
        <hr>
        <!-- SHOWCASE -->
        <header class="showcase">
            <h2>Perro convoca golpe de estado</h2>
            <p>Lorem, ipsum dolor sit amet consectetur adipisicing elit. Id dolor laudantium rerum, excepturi est praesentium
            natus qui? Tempora rerum, numquam inventore eligendi in, nostrum reprehenderit, eum cumque fugit eaque
            similique!</p>
            <a href="#" class="btn">
            Leer más <i class="fas fa-chevron-right"></i>
            </a>
        </header>
        <div class="news-cards">
            <div>
              <img src="img/card1.jpg" alt="" />
              <h3>Lorem, ipsum dolor.</h3>
              <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Veniam dolore fugit esse corporis nesciunt minima
                doloremque modi mollitia rerum, similique optio eligendi itaque amet qui ullam vel incidunt asperiores fuga?
              </p>
              <a href="#">Leer más <i class="fas fa-angle-double-right"></i></a>
            </div>
            <div>
              <img src="img/card2.jpg" alt="" />
              <h3>Lorem, ipsum dolor.</h3>
              <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Veniam dolore fugit esse corporis nesciunt minima
                doloremque modi mollitia rerum, similique optio eligendi itaque amet qui ullam vel incidunt asperiores fuga?
              </p>
              <a href="#">Leer más <i class="fas fa-angle-double-right"></i></a>
            </div>
            <div>
              <img src="img/card3.jpg" alt="" />
              <h3>Lorem, ipsum dolor.</h3>
              <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Veniam dolore fugit esse corporis nesciunt minima
                doloremque modi mollitia rerum, similique optio eligendi itaque amet qui ullam vel incidunt asperiores fuga?
              </p>
              <a href="#">Leer más <i class="fas fa-angle-double-right"></i></a>
            </div>
            <div>
              <img src="img/card4.jpg" alt="" />
              <h3>Lorem, ipsum dolor.</h3>
              <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Veniam dolore fugit esse corporis nesciunt minima
                doloremque modi mollitia rerum, similique optio eligendi itaque amet qui ullam vel incidunt asperiores fuga?
              </p>
              <a href="#">Leer más <i class="fas fa-angle-double-right"></i></a>
            </div>
        </div>
    </div>
    </body>
</html>
