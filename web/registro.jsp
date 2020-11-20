<%-- 
    Document   : registro
    Created on : 18/11/2020, 08:43:29 PM
    Author     : Samsung
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>PreParcial</title>
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css" 
        integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" 
        crossorigin="anonymous">
        <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" 
                integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" 
        crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js" 
        integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN" 
        crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.min.js" 
        integrity="sha384-w1Q4orYjBQndcko6MimVbzY0tgp4pWB4lZ7lr30WKz0vr/aWKhXdBNmNb5D92v7s" 
        crossorigin="anonymous"></script>
        <div class="container">
            <h1>Ejercicio PreParcial</h1>
        
<ul class="nav nav-pills" >
  <li class="nav-item">
    <a class="nav-link active" href="index.jsp">Inicio</a>
  </li>
  <li class="nav-item dropdown">
    <a class="nav-link dropdown-toggle" data-toggle="dropdown" href="#" role="button" aria-haspopup="true" aria-expanded="false">Pre Parcial</a>
    <div class="dropdown-menu">
      <a class="dropdown-item" href="registro.jsp">Subsidio</a>
    </div>
  </li>
<li class="nav-item dropdown">
    <a class="nav-link dropdown-toggle" data-toggle="dropdown" href="#" role="button" aria-haspopup="true" aria-expanded="false">Pendientes</a>
    <div class="dropdown-menu">
      <a class="dropdown-item" href="#">Pendiente</a>
      
    </div> 
</li>
</ul> 
                </div> <!--DIV del container-->  
    </head>
    <body>
        <table class="container">
        <form method="post" action="RegistroMenor">
            <div class="container">
            <h2>Ingreso Menor</h2>
  
            <td>
                <table>
            <tr>
        <div class="col-md-3">
            <td><label>Documento de Identidad: </label></td>
            <td><input type="number"  placeholder="documento identidad" id="IdDocument" name="IdDocument"/></td>
                </div></tr>
            <tr>
        <div class="col-md-3">
            <td><label>Nombres del Menor: </label></td>
            <td><input type="text" placeholder="Nombres" id="txtNombre" name="txtNombre"/></td>
                </div></tr>
            <tr>
        <div class="col-md-3">
            <td><label>Apellidos del Menor: </label></td>
            <td><input type="text" placeholder="Apellidos" id="txtApellido" name="txtApellido"/></td>
                </div></tr>
                <tr>
        <div class="col-md-3">
            <td><label>Dirección: </label></td>
            <td><input type="text" placeholder="Dirección" id="txtDireccion" name="txtDireccion"/></td>
                </div></tr>
            <tr>
        <div class="col-md-3">
            <td><label>Edad: </label></td>
            <td><input type="number" min="0" max="99" maxlength="2" placeholder="Edad" id="Edad" name="Edad"/></td>
                </div></tr>
                <tr>
        <div class="col-md-3">
            <td><label>Lugar de Nacimiento: </label></td>
            <td><input type="text" placeholder="Lugar Nacimiento" id="txtLugarNacimiento" name="txtLugarNacimiento"/></td>
                </div></tr>
        <div class="col-md-3">
            <td><label>Telefono: </label></td>
            <td><input type="number" placeholder="telefono" id="phone" name="phone"/></td>
                </div></tr>
        <div class="col-md-3">
            <td><label>Salario del Trabajador: </label></td>
            <td><input type="number" placeholder="Salario" id="SueldoTrabajador" name="SueldoTrabajador"/></td>
                </div></tr>
        <div class="col-md-3">
            <td><label>Salario Conyuge: </label></td>
            <td><input type="number" placeholder="Salario Conyuge" id="SueldoConyuge" name="SueldoConyuge"/></td>
                </div></tr>                
            

            
        
                    <div class="col-md-3">
                   
                    <th><input class="btn btn-primary btn-lg col-md-8" type="submit" value="Verificar" id="btnVerificar" name="btnVerificar" /> </th>
                    <th><a class="btn btn-secondary" type="reset" href="registro.jsp">Cancelar</a></th>
                    
                </div>
            </div>
            </table>
            </td>
        </form></br>
        <td>
        <div class="container">
        <label class="badge badge-light">
        <%
        if (request.getAttribute("Subsi") != null) {
        %>
        
        <div class="container">
            <br>
            <h1><label class="badge badge-pill badge-<%=request.getAttribute("Subsi") == "Aplica" ? "succes" : "danger"%>">Subsidio: 
                <span class="badge badge-pill badge-light"><%= request.getAttribute("Subsi")%></span>
            </label></h1>
            <h6>
            <label class="badge badge-secondary">Nombre del Menor
                <span class="badge badge-light"><%=request.getParameter("txtNombre") + " " + request.getParameter("txtApellido")%></span>
            </label>
            <label class="badge badge-secondary">Documento:
                <span class="badge badge-light"><%=request.getParameter("IdDocument")%></span>
            </label>
            <label class="badge badge-secondary">Edad:
                <span class="badge badge-light"><%=request.getParameter("Edad")%></span>
            </label></br>    
            <label class="badge badge-secondary">Lugar Nacimiento:
                <span class="badge badge-light"><%=request.getParameter("txtLugarNacimiento")%></span>
            </label>           
            <label class="badge badge-secondary">Dirección:
                <span class="badge badge-light"><%=request.getParameter("txtDireccion")%></span>
            </label>            
            <label class="badge badge-secondary">Teléfono:
                <span class="badge badge-light"><%=request.getParameter("phone")%></span>
            </label></br>            
            <label class="badge badge-info">Salario Trabajador:
                <span class="badge badge-light"><%=request.getParameter("SueldoTrabajador")%></span>
            </label>       
            <label class="badge badge-info">Salario Conyuge:
                <span class="badge badge-light"><%=request.getParameter("SueldoConyuge")%></span>
            </label></br>            


            </h6>
        </div>
                <%} %>
                </label>
                </div>
                </td>
        </table>             
    </body>
</html>
