<%-- 
    Document   : menu
    Created on : 8 de set. de 2024, 20:15:35
    Author     : Elias
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Menu Simples</title>

        <style>
            ul {
                list-style-type: none;
                margin: 0;
                padding: 0;
                background-color: white;
                overflow: hidden;
                border: 1px solid #ddd;
                border-radius: 8px;
            }

            li {
                display: inline;
                float: left;
                margin-right: 10px;
            }

            li a {
                display: block;
                color: black;
                text-align: center;
                padding: 14px 16px;
                text-decoration: none;
                border-radius: 8px;
            }

            li a:hover {
                background-color: #f0f0f0;
                color: #007BFF;
                border-radius: 15px;
            }
        </style>
    </head>
    <body>

        <ul>
            <li><a href="home.jsp">Home</a></li>
            <li><a href="cadastro.jsp">Cadastro Pessoal</a></li>
            <li><a href="cadastro-tabela.jsp">Listar cadastros</a></li>
            <li><a href="index.jsp">Sair (Deslogar)</a></li>
        </ul>

    </body>
</html>

