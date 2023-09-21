<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Verificador de Palíndromo</title>
</head>
<body>
    <form method="post">
        <label for="palavra">Digite uma palavra:</label><br>
        <input type="text" id="palavra" name="palavra"><br>
        <input type="submit" value="Verificar">
    </form>

    <%
        String palavra = request.getParameter("palavra");
        if (palavra != null) {
            String reverso = new StringBuilder(palavra).reverse().toString();
            if (palavra.equals(reverso)) {
                out.println(palavra + " é um palíndromo.");
            } else {
                out.println(palavra + " não é um palíndromo.");
            }
        }
    %>
</body>
</html>
