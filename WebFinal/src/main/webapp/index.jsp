<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css" integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous">
        <link rel= "stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.1/css/all.min.css">
        <link href="https://fonts.googleapis.com/css2?family=Yanone+Kaffeesatz:wght@600&display=swap" rel="stylesheet">
        <link href="https://fonts.googleapis.com/css2?family=Hind+Siliguri:wght@300&display=swap" rel="stylesheet">
        <link rel="stylesheet" href="P1.CSS">
        <title>Noticias Cheems</title>
    </head>
    <body>
        <%=session.getAttribute("mes")%>
        <%=session.getAttribute("meso")%>
        <div class = "container">
        <!--NAVEGACIÓN-->
        <nav class = "nav-main">
            <a href="P2.HTML">
            <img src= "img/logo.png" alt= "logo" class ="class-logo">
            </a>
            <ul class= "menu">
                <li>
                    <a href ="#">Opcion 1</a>
                </li>
                <li>
                    <a href ="#">Opcion 2</a>
                </li>
                <li>
                    <a href ="#">Opcion 2</a>
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
        </nav>
        <!--Formularios de registro e inicio de sesión-->
        <div class ="formularios">
            <form class="ini-ses">
                <h1>Iniciar sesión</h1>
                <div class="form-group">
                  <label for="exampleInputEmail1">Correo Electrónico</label>
                  <input type="email"  class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp">
                </div>
                <div class="form-group">
                  <label for="exampleInputPassword1">Contraseña</label>
                  <input type="password"  class="form-control" id="exampleInputPassword1">
                </div>
                <button type="submit" class="btn btn-primary">Ingresar</button>
            </form>
            <form action="SingInController" method="POST" class="regis"> 
                <h1>Registrarse</h1>
                <div class="form-group">
                    <label for="exampleInputUser1">Usuario</label>
                    <input type="user" name="user" class="form-control" id="exampleInputUser1">
                </div>
                <div class="form-group">
                  <label for="exampleInputEmail1">Correo Electrónico</label>
                  <input type="email"  name="email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp">
                </div>
                <div class="form-group">
                  <label for="exampleInputPassword1">Contraseña</label>
                  <input type="password" name="password" class="form-control" id="exampleInputPassword1">
                </div>
                <div class="form-group">
                    <img src="img/insta.webp" alt="insta logo" class="logo-insta">
                    <label for="exampleInputUser1">Instagram</label>
                    <input type="user" name="red1" class="form-control" id="exampleInputInsta1">
                </div>
                <div class="form-group">
                    <img src="img/Twitter.png" alt="twitter logo" class="logo-twitter">
                    <label for="exampleInputUser1">Twitter</label>
                    <input type="user" name="red2" class="form-control" id="exampleInputTwitter1">
                </div>
                <div>
                    <label for="exampleInputUser1">Imagen</label>
                    <input type="user" name="img" class="form-control" id="exampleInputInsta1">
                </div>
                <button type="submit" class="btn btn-primary">Registrarse</button>
              </form>
        </div>
        
    </div>
</body>
</html>
