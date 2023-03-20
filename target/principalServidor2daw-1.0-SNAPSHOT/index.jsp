<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:include page="VerArchivos"/>

<jsp:useBean id="respaldoIndex" scope="session" class="com.daw.principalservidor2daw.respaldos.RespaldoIndex"/>

<!DOCTYPE html>
<html>
    <head>
        
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="css/index.css"/>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
        <link rel="preconnect" href="https://fonts.googleapis.com">
        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
        <link href="https://fonts.googleapis.com/css2?family=Chakra+Petch&display=swap" rel="stylesheet">
        <title>Proyecto 2DAW 2023</title>
        <link href="https://file.myfontastic.com/v9GGDmiwYfMabbEYmRryoS/icons.css" rel="stylesheet">
    </head>
    <body>
        <header>
            <nav class="navbar bg-body-tertiary">
                <div class="container-fluid text-white">
                    <a id="logo" class="navbar-brand p-0 b-0 text-white text-center d-flex align-items-center" hidden="#" aria-label="Ir a inicio"> 
                        <img src="img/project.png" alt="Logo" width="50" height="50" class="d-inline-block align-text-top" title="">
                        <span class="fs-3 ms-3">Proyectos</span></a>
                        <!--
                    <div id="divLogin">
                        <a class="nav-link dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false" alt="Icono iniciar sesión" title="Iniciar sesión">
                            <svg xmlns="http://www.w3.org/2000/svg" width="40" height="40" fill="currentColor" class="bi bi-person-circle" viewBox="0 0 16 16">
                            <path d="M11 6a3 3 0 1 1-6 0 3 3 0 0 1 6 0z"/>
                            <path fill-rule="evenodd" d="M0 8a8 8 0 1 1 16 0A8 8 0 0 1 0 8zm8-7a7 7 0 0 0-5.468 11.37C3.242 11.226 4.805 10 8 10s4.757 1.225 5.468 2.37A7 7 0 0 0 8 1z"/>
                            </svg>
                        </a>
                        <div class="dropdown-menu p-1 me-md-0 bordeAzul position-absolute mt-2 end-0">
                            <h4 class="text-center">Iniciar sesión</h4>
                            <form class="">
                                <div class="mb-3 pt-2 input-group">

                                    <span class="input-group-text" for="email"><svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-person" viewBox="0 0 16 16">
                                        <path d="M8 8a3 3 0 1 0 0-6 3 3 0 0 0 0 6Zm2-3a2 2 0 1 1-4 0 2 2 0 0 1 4 0Zm4 8c0 1-1 1-1 1H3s-1 0-1-1 1-4 6-4 6 3 6 4Zm-1-.004c-.001-.246-.154-.986-.832-1.664C11.516 10.68 10.289 10 8 10c-2.29 0-3.516.68-4.168 1.332-.678.678-.83 1.418-.832 1.664h10Z"/>
                                        </svg></span>
                                    <input type="text" class="form-control" name="usuario" placeholder="Usuario">
                                </div>
                                <div class="mb-3  input-group">
                                    <span class="input-group-text" for="email"><svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-lock" viewBox="0 0 16 16">
                                        <path d="M8 1a2 2 0 0 1 2 2v4H6V3a2 2 0 0 1 2-2zm3 6V3a3 3 0 0 0-6 0v4a2 2 0 0 0-2 2v5a2 2 0 0 0 2 2h6a2 2 0 0 0 2-2V9a2 2 0 0 0-2-2zM5 8h6a1 1 0 0 1 1 1v5a1 1 0 0 1-1 1H5a1 1 0 0 1-1-1V9a1 1 0 0 1 1-1z"/>
                                        </svg></span>
                                    <input type="password" class="form-control" name="password" placeholder="Contraseña">
                                </div>
                                <input type="submit" class="btn colorAzulBoton mb-2 w-100" value="Acceder">
                            </form>
                        </div>
                    </div>-->
                </div>
            </nav>
        </header>
        <main >
            <div class="container">
                <div class="row align-items-center text-center">
                  <figure class="col-12 col-md-5">
                      <img src="img/imagenDaw.png" class="w-100 " alt="Imagen">
                  </figure>
                  <h2 class="col-12 col-md-7 display-5">Proyectos creados por C.F.G.S. Desarrollo de Aplicaciones Web</h2>
                </div>
            </div>
            <h1 class="text-center mb-5" id="tituloP">Proyectos </h1>
            <!--
            <form action="" class="col-1 offset-7 mt-5 mb-5">
                <select name="" id="">
                    <option value="2023">2023</option>
                    <option value="asignatura">Asignatura</option>
                    <option value="tfg">TFG</option>

                </select>
            </form>
            -->


            <div class="d-flex g-0 mt-5 justify-content-evenly row-cols-lg-2 p-2 p-lg-4 flex-wrap">
                <c:forEach items="${respaldoIndex.listaProyectos}" var="proyecto">    
                    <div class="accordion col-12 col-md-6 col-lg-5" id="proyecto${proyecto.codProyecto}">
                    <div class="accordion-item">
                        <h2 class="accordion-header" id="heading${proyecto.codProyecto}">
                            <button class="accordion-button collapsed btnAcordeon fs-4" type="button" data-bs-toggle="collapse"
                                data-bs-target="#collapse${proyecto.codProyecto}" aria-expanded="false" aria-controls="collapse${proyecto.codProyecto}">
                                ${proyecto.nombre}
                            </button>
                        </h2>
                        <div id="collapse${proyecto.codProyecto}" class="accordion-collapse collapse" aria-labelledby="heading${proyecto.codProyecto}"
                            data-bs-parent="#proyecto${proyecto.codProyecto}">
                            <div class="accordion-body d-flex flex-column align-items-center">
                                <img class="logo img-fluid" src="img/logoProyectos/${proyecto.logo}" alt="alt"/>
                                <p>${proyecto.descripcion}</p>
                                <form action="..${proyecto.ruta}" class="d-flex justify-content-center">
                                    <input type="submit" value="Ver proyecto" id="" class="btn btnAcordeon">
                                </form>

                            </div>
                        </div>
                    </div>

                </div>
                </c:forEach>
        <!--
        <ul>
            <c:forEach items="${lista}" var="directorio">
                <li><a href="../${directorio}">${directorio}</a></li>
            </c:forEach>
        </ul>
        -->
      </main>

    <footer role="contentinfo">
        <div id="info">
            <a href="https://iesmartinrivero.org/" id="logoFooter">
                <figure>
                    <img src="img/Logo.gif" alt="Logo de IES Martín Rivero">
                </figure>
            </a>   
            <div id="infoFooter">
    
                <div class="accordion accordion-flush" id="acordeon">
                    <p>Autores:</p>
                    <div class="accordion-item">
                        <h2 class="accordion-header" id="pestania1">
                            <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse"
                                data-bs-target="#info1" aria-expanded="false" aria-controls="info1">
                                Clase 2º DAW - 2023
                            </button>
                        </h2>
                        <div id="info1" class="accordion-collapse collapse" aria-labelledby="pestania1"
                            data-bs-parent="#acordeon">
                            <div class="accordion-body">
                                <p>Aitor García Ruano</p>
                                <p>Ana Castilla Fernández</p>
                                <p>Bienvenido Moreno Álvarez</p>
                                <p>Carlos Guerrero Hormigo</p>
                                <p>Francisco Sedeño Barea</p>
                                <p>Fernando Tolosana Tenorio</p>
                                <p>Jose Ayala Montes</p>
                                <p>Noé López Valle</p>
                                <p>Daniel Pinzón Jiménez</p>
                                <p>Rubén Benítez Navas</p>
                                <p>Rafael Pimentel Prados</p>
                                <p>Noelia Pérez Cañestro</p>
                            </div>
                        </div>
                    </div>
                </div>
    
                <div id="redes">
                    <a href="https://www.facebook.com/iesmartinrivero" target="_blank"
                        title="Visitar el facebook del instituto">
                        <img src="img/facebook.png" alt="Facebook" loading="lazy">
                        <span>facebook</span>
                    </a>
                    <a href="https://www.instagram.com/ies_martinrivero/" target="_blank"
                        title="Visitar el instagram del instituto">
                        <img src="img/instagram.png" alt="Instagram" loading="lazy">
                        <span>instagram</span>
                    </a>
                    <a href="https://twitter.com/iesmartinrivero" target="_blank"
                        title="Visitar la cuenta twitter del instituto">
                        <img src="img/twitter.png" alt="Twitter" loading="lazy">
                        <span>twitter</span>
                    </a>
                </div>
    
            </div>
        </div>
        <hr>
        <p> © Copyright 2023 | I.E.S Martín Rivero</p>
    </footer>    
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4" crossorigin="anonymous"></script>   
    </body>
</html>
