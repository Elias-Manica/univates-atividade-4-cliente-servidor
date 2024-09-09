<%-- 
    Document   : cadastro-tabela
    Created on : 8 de set. de 2024, 22:41:16
    Author     : Elias
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.ArrayList"%>
<%@page import="entidade.Pessoa"%>
<%@page import="dao.PessoaDAO"%>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Listagem de Pessoas</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
</head>
<%@include file="menu.jsp" %>
<body>
    <div class="container">
        <h3>Listagem das Pessoas</h3>

        <% ArrayList<Pessoa> pessoas = new PessoaDAO().consultar(); %>

        <table class="table table-bordered">
            <thead>
                <tr>
                    <th>Código</th>
                    <th>Nome</th>
                    <th>Email</th>
                    <th>Telefone</th>
                    <th>Data de Nascimento</th>
                    <th>Editar</th>
                    <th>Excluir</th>
                </tr>
            </thead>
            <tbody>
                <% for (Pessoa p : pessoas) { %>
                    <tr>
                        <td><%= p.getId() %></td>
                        <td><%= p.getNome() %></td>
                        <td><%= p.getEmail() %></td>
                        <td><%= p.getTelefone() %></td>
                        <td><%= p.getDataNascimento() %></td>
                        <td><a href="action?a=editarPessoa&id=<%= p.getId() %>" class="btn btn-success">Editar</a></td>
                        <td><a href="action?a=excluirPessoa&id=<%= p.getId() %>" class="btn btn-danger" onclick="return confirm('Tem certeza que deseja excluir?')">Excluir</a></td>
                    </tr>
                <% } %>
            </tbody>
        </table>
    </div>
</body>
</html>

