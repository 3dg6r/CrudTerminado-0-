

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="modelo.Socios" %>
<%@page import="modelo.SociosDAO" %>
<%@page import="java.util.List"%>



<!DOCTYPE html>
<html>
    <head>
        <title>Socios</title>
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
        <h1 class="nav justify-content-center">Listado de Socios del Gym</h1>
        <br>
        
        <div class="container">
            <div class="row">   
                <!-- <a class="btn btn-primary col-4 m-4" href="SociosController?accion=nuevo">Agregar Socio</a> -->
                
                <table class="table table-success table-striped">
                    <thead>
                            <th>id</th>
                            <th>Nombre</th>
                            <th>Apellido</th>
                             <th>Direccion</th>
                             <th>Localidad</th>
                             <th>Fecha Nac.</th>
                             <th>Telefono</th>
                             <th>mail</th>
                             <th>Modificar</th>
                             <th>Eliminar</th>
                    </thead>
                    
                    <%
                    List<Socios> resultado=null;
                    SociosDAO s1=new SociosDAO();
                    resultado=s1.listarSocios();
                    
                                for(int i=0;i<resultado.size();i++)
				{
				String ruta="SociosController?accion=modificar&id="+resultado.get(i).getIdSocio();	
				String rutaE="SociosController?accion=eliminar&id="+resultado.get(i).getIdSocio();
				%>                
                    
                
                    <tr>
                         <td><%=resultado.get(i).getIdSocio()%></td>
                         <td><%=resultado.get(i).getNombre()%></td>
                         <td><%=resultado.get(i).getApellido()%></td>
                         <td><%=resultado.get(i).getDireccion()%></td>
                         <td><%=resultado.get(i).getLocalidad()%></td>
                         <td><%=resultado.get(i).getFnac()%></td>
                         <td><%=resultado.get(i).getTelefono()%></td>
                         <td><%=resultado.get(i).getMail()%></td>
                         <td class="text-center"><a href=<%=ruta%> <i class="fa-sharp fa-solid fa-screwdriver-wrench"></i> </a></td>
			 <td class="text-center"><a href=<%=rutaE%><i class="fa-regular fa-trash-can"></i> </a></td>
                    </tr>
                    <%
                        }
                    %>
                   
                </table>
                <div class="nav justify-content-end">
                    <a class="btn btn-primary col-4 m-4" href="SociosController?accion=nuevo">Agregar Socio</a>
                </div> 
 
        </div>
             
        
    </body>
    <!-- nose porque no puedo estiralo mas -->
    <footer>
        <div class="principal">
        <nav class="navbar" style="background-color: #B1BBBB;">
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
</html>

