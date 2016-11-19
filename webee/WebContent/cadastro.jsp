<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Cadastro</title>
<style type="text/css">
  body { background: url('http://www.pixeden.com/media/k2/galleries/93/003-subtle-light-pattern-background-texture.jpg'); font-family: Arsenale;}
            .corpo { background: white; width: 800px; font-family: Verdana; }
            .links { background: black; padding: 10px; font-size: 20px; width: 113.33px; float: right; text-transform: uppercase;}
            .links:hover{background: gray; color: black;}
            .links a {text-decoration: none; color: gray;}
            .links a:hover{ color: gray; color: black;}
			form {background: transparent; text-align: right; text-transform: capitalize; margin-left: 20px; font-style: bold;}
			form input{ height: 30px; font-size: 16px;}
</style>


</head>
<body>

  <center>
        <img src="http://images.contentful.com/7h71s48744nc/70427ELNN6kOeaYGcwcUuc/31664def73639e5c45727a57c7325e10/bee-movie.jpg" width="800px">
        <div class="corpo"> 
       
        	<div class="links"> <a href="inicio.jsp">Início</a>  </div> 
        	<div class="links"> <a href="login.jsp">Login</a>  </div>
        	<div class="links"> <a href="cadastro.jsp">Cadastrar</a>  </div>
                          	 <br><br><br>
           	<strong>${erro}</strong>

			<form action="Cadastrar.bee" method="POST">
			<table>
	<tr>
		<td>Nome: </td>
			 <td><input type="text" name="nome"/><br></td> </tr><tr>
		<td>Login: </td>
			 <td><input type="text" name="login"/><br></td> </tr>
	<tr>
		<td>Senha:</td> 
			<td><input type="password" name="senha"   /><br></td>
	<tr>
		<td></td>
		<td><input type="submit" value="Ir" width="30px"></td>
	</tr>
	</table>

</form>
</center>

		</div>
</body>
</html>