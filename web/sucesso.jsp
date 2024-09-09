<%-- 
    Document   : sucesso
    Created on : 8 de set. de 2024, 22:09:53
    Author     : Elias
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Sucesso - Operação Concluída</title>
        <style>
            body {
                font-family: Arial, sans-serif;
                background-color: #d4edda;
                color: #155724;
                padding: 20px;
            }

            .container {
                max-width: 600px;
                margin: 30px auto;
                text-align: center;
                padding: 30px;
                border: 2px solid #c3e6cb;
                background-color: #d4edda;
                border-radius: 10px;
            }

            h1 {
                font-size: 24px;
            }

            p {
                font-size: 18px;
            }

            a {
                color: #155724;
                text-decoration: underline;
            }
        </style>
    </head>
    <%@include file="menu.jsp" %>
    <body>
        <div class="container">
            <h1>Operação Concluída com Sucesso</h1>
            <p>Os dados foram salvos com sucesso!</p>
            <p><a href="home.jsp">Voltar à página inicial</a></p>
        </div>
    </body>
</html>

