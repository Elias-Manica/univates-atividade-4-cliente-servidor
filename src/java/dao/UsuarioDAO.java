/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dao;
import apoio.ConexaoBD;
import entidade.Pessoa;
import java.sql.Statement;
import java.sql.ResultSet;

/**
 *
 * @author Elias
 */
public class UsuarioDAO {
    public boolean autenticar(String nome, String senha) {
        boolean autenticado = false;

        try {
            // Cria a conexão com o banco de dados
            Statement st = ConexaoBD.getInstance().getConnection().createStatement();

            // Monta a consulta SQL
            String sql = "SELECT * FROM usuario WHERE nome = '" + nome + "' AND senha = '" + senha + "'";
            ResultSet rs = st.executeQuery(sql);

            // Se encontrar um resultado, autentica o usuário
            if (rs.next()) {
                autenticado = true;
            }

            // Fecha a conexão
            rs.close();
            st.close();

        } catch (Exception e) {
            System.out.println("Erro ao autenticar usuário: " + e.getMessage());
        }

        return autenticado;
    }
}
