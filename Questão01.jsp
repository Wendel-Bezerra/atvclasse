<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
 <title>Taboada</title>
</head>
<body>
    <h1>Taboada</h1>
    
    <%
        if(request.getMethod().equalsIgnoreCase("post")) {
            int numero = Integer.parseInt(request.getParameter("numero"));
            StringBuilder resultado = new StringBuilder();
            for (int i = 1; i <= 10; i++) {
                resultado.append(numero).append(" x ").append(i).append(" = ").append(numero * i).append("<br>");
            }
    %>
            Número: <%= numero %><br><br>
            <%= resultado %>
    <%
        } else {
    %>
            <form action="" method="post">
                Digite um número inteiro: <input type="text" name="numero">
                <input type="submit" value="Calcular">
            </form>
    <%
        }
    %>
</body>
</html>