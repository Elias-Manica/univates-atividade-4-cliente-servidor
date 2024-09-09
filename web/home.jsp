<%-- 
    Document   : index
    Created on : 8 de set. de 2024, 20:15:20
    Author     : Elias
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
   <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Projeto Web - Home</title>
        <style>
            body {
                font-family: Arial, sans-serif;
                background-color: #f4f4f4;
                margin: 0;
                padding: 0;
            }

            .container {
                width: 80%;
                margin: 50px auto;
                background-color: white;
                padding: 20px;
                border-radius: 8px;
                box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            }

            h1 {
                text-align: center;
                color: #007BFF;
            }

            p {
                font-size: 16px;
                line-height: 1.6;
                margin-bottom: 20px;
            }

            .author {
                font-style: italic;
                text-align: right;
                color: #555;
            }

            .section-title {
                font-size: 18px;
                font-weight: bold;
                margin-top: 20px;
            }
        </style>
    </head>
    <%@include file="menu.jsp" %>
    <body>
        <div class="container">
            <h1>Bem-vindo ao Projeto Web</h1>
            <p>
                Este projeto está sendo desenvolvido para resolver a <strong>Tarefa 4: Praticando Comunicação Cliente-Servidor</strong>, da disciplina de Programação para Internet, ministrada pela Univates. O criador deste projeto é <strong>Elias Manica</strong>.
            </p>
            
            <h2 class="section-title">Objetivo do Projeto</h2>
            <p>
                O objetivo deste projeto é criar um sistema web que permita o <strong>cadastro dos dados pessoais</strong> de um indivíduo. O sistema será composto por uma tela de <strong>Login</strong>, exigindo um usuário e senha. Após a autenticação, o usuário será redirecionado para um menu de opções, que incluirá o item “Cadastro Pessoal”.
            </p>
            <p>
                Ao selecionar a opção "Cadastro Pessoal", o usuário será direcionado para a página de cadastro, onde poderá realizar as operações de um <strong>CRUD</strong> (Create - Read - Update - Delete). Isso significa que o sistema permitirá o cadastro, edição, consulta e exclusão de registros de pessoas.
            </p>

            <p class="author">Desenvolvido por Elias Manica</p>
        </div>
    </body>
</html>
