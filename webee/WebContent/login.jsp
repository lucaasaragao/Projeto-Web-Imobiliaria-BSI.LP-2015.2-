<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link type="text/css" rel="stylesheet" href="<c:url value="/codigo.css" />" />

<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Login</title>
<style type="text/css">
 

</style>


</head>
<body>

  <center>
        <img src="http://images.contentful.com/7h71s48744nc/70427ELNN6kOeaYGcwcUuc/31664def73639e5c45727a57c7325e10/bee-movie.jpg" width="800px">
        <div class="corpo"> 
       
         
        <div class="links"> <a href="inicio.jsp">Início</a>  </div> 
        <div class="links"> <a href="login.jsp">Login</a>  </div>
        <div class="links"> <a href="cadastro.jsp">Cadastro</a>  </div>
        <div class="links"> <a href="users.jsp">Users</a>  </div>
        
       
           
         <br>
         <br>
         <br>
         
            <strong>${erro}</strong>
            
		<form action="Login.bee" method="POST">
		
	<table>
	<tr>
		<td>Login: </td>
			 <td><input type="text" name="login" size="30"/><br></td> </tr> <tr>
		<td>Senha:</td> 
			<td><input type="password" name="senha" size="30"   /><br></td>
	<tr>
		<td></td>
		<td><input type="submit" value="Ir" size="30"></td> </tr>
	</table>
</form> 
</center>



</body>
</html>