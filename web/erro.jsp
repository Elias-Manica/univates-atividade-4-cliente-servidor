<%-- 
    Document   : erro
    Created on : 8 de set. de 2024, 22:08:50
    Author     : Elias
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Erro - Falha na Operação</title>
        <style>
            body {
                font-family: Arial, sans-serif;
                background-color: #f8d7da;
                color: #721c24;
                padding: 20px;
            }

            .container {
                max-width: 600px;
                margin: 30px auto;
                text-align: center;
                padding: 30px;
                border: 2px solid #f5c6cb;
                background-color: #f8d7da;
                border-radius: 10px;
            }

            h1 {
                font-size: 24px;
            }

            p {
                font-size: 18px;
            }

            a {
                color: #721c24;
                text-decoration: underline;
            }
        </style>
    </head>
    <%@include file="menu.jsp" %>
    <body>
        <div class="container">
            <h1>Ocorreu um Erro</h1>
            <p>Infelizmente, não foi possível concluir a operação. Por favor, tente novamente mais tarde.</p>
            <p><a href="index.jsp">Voltar à página inicial</a></p>
        </div>
    </body>
</html>

