<%-- 
    Document   : cadastro
    Created on : 8 de set. de 2024, 20:37:22
    Author     : Elias
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Cadastro de Pessoa</title>
        <style>
            body {
                font-family: Arial, sans-serif;
                background-color: #f4f4f4;
                margin: 0;
                padding: 0;
            }

            .container {
                width: 50%;
                margin: 0 auto;
                background-color: white;
                padding: 20px;
                border-radius: 8px;
                box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
                margin-top: 50px;
            }

            h1 {
                text-align: center;
                color: #007BFF;
            }

            label {
                display: block;
                margin-top: 10px;
                margin-bottom: 5px;
            }

            input[type="text"], input[type="date"], input[type="tel"], input[type="email"] {
                width: 100%;
                padding: 10px;
                margin-bottom: 10px;
                border: 1px solid #ccc;
                border-radius: 4px;
                box-sizing: border-box;
            }

            input[type="submit"] {
                width: 100%;
                padding: 10px;
                background-color: #007BFF;
                color: white;
                border: none;
                border-radius: 4px;
                cursor: pointer;
            }

            input[type="submit"]:hover {
                background-color: #0056b3;
            }
        </style>
    </head>
    <%@include file="menu.jsp" %>
    <body>
        <div class="container">
            <h1>Cadastro de Pessoa</h1>
            <form action="/action?a=salvarPessoa" method="post">
                <label for="nome">Nome Completo:</label>
                <input type="text" id="nome" name="nome" placeholder="Digite o nome completo" required>

                <label for="email">Email:</label>
                <input type="email" id="email" name="email" placeholder="Digite o email" required>

                <label for="telefone">Telefone:</label>
                <input type="tel" id="telefone" name="telefone" placeholder="Digite o telefone">

                <label for="data_nascimento">Data de Nascimento:</label>
                <input type="date" id="data_nascimento" name="data_nascimento">

                <input type="submit" value="Cadastrar">
            </form>
        </div>
    </body>
</html>

