

<%@page import="modelo.SociosDAO"%>
<%@page import="modelo.Socios"%>
<%@page import="java.util.List"%>  
<%@page contentType="text/html" pageEncoding="UTF-8"%>


<!DOCTYPE html>
<html>
    <head>
        <title>Modificar</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <!-- CSS only -->
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
        <!-- JavaScript Bundle with Popper -->
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4" crossorigin="anonymous"></script>
        <script src="https://kit.fontawesome.com/2cbbc87d30.js" crossorigin="anonymous"></script>
    
    </head>
        <body style="background-color: darkkhaki">
        <!-- cambio agregado y el de abajo -->
        <div class="principal">
        <nav class="navbar navbar-dark navbar-expand-lg bg-dark" id="nav-principal">
            <div class="container">
               <i class="fa-brands fa-bootstrap" style="background-color: darkkhaki">Bootstrap</i>

                <div class="justify-content-end"  id="navBarText">
                    <ul class="navbar-nav">
                        <li class="nav-item">
                        <a class="nav-link active" id="nav-Logo" aria-current="page" href="#" id="nav-text">Acerca de nosotros</a>
                        </li>
                        <li class="nav-item">
                        <a class="nav-link active" id="nav-Logo" aria-current="page" href="#" id="nav-text">XXXXXXXXX</a>
                        </li>
                        <li class="nav-item">
                        <a class="nav-link active" id="nav-Logo" aria-current="page" href="#" id="nav-text">XXXXXXXXX</a>
                        </li>
                        <li class="nav-item">
                        <a class="nav-link active" id="nav-Logo" aria-current="page" href="#" id="nav-text">Donde estamos...</a>
                        </li>
                        <li class="nav-item">
                        <a class="nav-link active" id="nav-Logo" aria-current="page" href="#" id="nav-text">Contacto</a>
                        </li>
                        
                    </ul>
                </div>
            </div>
        </nav>
        </div>       
        <br>
        <div class="container" >
            <h1 class="text-center" >Modificar Socio</h1>
                <div class="row" >
                    <%
				String id=request.getParameter("id");
				int mid;
				mid=Integer.parseInt(id);				
				Socios resultado=null;
				SociosDAO  socio=new SociosDAO();
				resultado=socio.mostrarSocio(mid);				
		    %>
                    <form class="p-5" method="POST" action="SociosController?accion=actualizar">
                         <div class="mb-2">
                            <label for="id" class="form-label" >id</label>
                            <input type="text" class="form-control" id="id" name="id" readonly="true" value=<%=resultado.getIdSocio() %> style="background-color: lightcyan">                          
                        </div> 
                        <div class="mb-2">
                            <label for="nombre" class="form-label" >Nombre</label>
                            <input type="text" class="form-control" id="nombre" name="nombre" value=<%=resultado.getNombre() %> style="background-color: lightcyan"  >                       
                        </div> 
                        <div class="mb-2">
                            <label for="apellido" class="form-label" >Apellido</label>
                            <input type="text" class="form-control" id="apellido" name="apellido" value=<%=resultado.getApellido() %> style="background-color: lightcyan"  >                       
                        </div> 
                         <div class="mb-2">
                            <label for="direccion" class="form-label" >Direccion</label>
                            <input type="text" class="form-control" id="direccion" name="direccion"value=<%=resultado.getDireccion() %> style="background-color: lightcyan" >                          
                        </div> 
                         <div class="mb-2">
                            <label for="localidad" class="form-label" >Localidad</label>
                            <input type="text" class="form-control" id="localidad" name="localidad" value=<%=resultado.getLocalidad() %>  style="background-color: lightcyan" >                          
                        </div> 
                          <div class="mb-2">
                            <label for="fnac" class="form-label" >Fecha Nac</label>
                            <input type="date" class="form-control" id="fnac" name="fnac" value=<%=resultado.getFnac() %> style="background-color: lightcyan" >                          
                        </div> 
                        <div class="mb-2">
                            <label for="mail" class="form-label" >E-Mail</label>
                            <input type="text" class="form-control" id="mail" name="mail" value=<%=resultado.getMail()%> style="background-color: lightcyan" >                          
                        </div>  
                        <div class="mb-2">
                            <label for="telefono" class="form-label" >Telefono</label>
                            <input type="text" class="form-control" id="telefono" name="telefono" value=<%=resultado.getTelefono()%> style="background-color: lightcyan">                          
                        </div> 
                        
                         </div>                        
                        <button type="submit" class="btn btn-primary col-4 m-4" >Modificar </button>
                        
                    </form>                
                </div>
       </div>
    <footer>
        <div class="principal">
        <nav class="navbar navbar-expand-lg" style="background-color: #B1BBBB;">
            <div class="container-fluid">
                <a class="navbar-brand" href="#">
                <i class="fa-brands fa-bootstrap"></i>
                Bootstrap
                </a>
                <div class="justify-content-end"  id="navBarText">
                    <ul class="navbar-nav">
                        <li class="nav-item">
                        <h6 class="nav-link" id="nav-text">&#174Realizado por: Edgar Alberto Florio</h6>
                        </li> 
                    </ul>
                </div>
            </div>
        </nav>
        </div>
    </footer>
    </body>
</html>