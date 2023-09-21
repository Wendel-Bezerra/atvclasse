<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>jsp</title>
<meta name="author" content="Wendel Campos Bezerra,Guilherme Gentili de almeida">
<meta name="keywords" content="web,200024945, 200023098">
<meta name="description" content="Atividades sobre jsp">
</head>
<body>
    <form method="post">
        <label for="nome">Nome:</label><br>
        <input type="text" id="nome" name="nome"><br>

        <label for="estadoCivil">Estado Civil:</label><br>
        <select id="estadoCivil" name="estadoCivil">
            <option value="Solteiro(a)">Solteiro(a)</option>
            <option value="Casado(a)">Casado(a)</option>
            <!-- Adicione mais opções conforme necessário -->
        </select><br>

        <label for="faixaEtaria">Faixa Etária:</label><br>
        <select id="faixaEtaria" name="faixaEtaria">
            <option value="3 a 10 anos">3 a 10 anos</option>
            <option value="11 a 25 anos">11 a 25 anos</option>
            <option value="36 a 55 anos">36 a 55 anos</option>
            <option value="56 a 100 anos">56 a 100 anos</option>
        </select><br>

        <input type="submit" value="Enviar">
    </form>

    <%
        String nome = request.getParameter("nome");
        String estadoCivil = request.getParameter("estadoCivil");
        String faixaEtaria = request.getParameter("faixaEtaria");
        
        if (nome != null && estadoCivil != null && faixaEtaria != null) {
            out.println("Nome: " + nome);
            out.println("Estado Civil: " + estadoCivil);
            out.println("Faixa Etária: " + faixaEtaria);
        }
    %>
</body>
</html>
