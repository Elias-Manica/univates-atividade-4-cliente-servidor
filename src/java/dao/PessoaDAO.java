/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dao;
import apoio.ConexaoBD;
import entidade.Pessoa;
import java.sql.Statement;


/**
 *
 * @author Elias
 */
public class PessoaDAO {
    public boolean salvar(Pessoa p) {
        try {
            Statement st = ConexaoBD.getInstance().getConnection().createStatement();

            String sql = ""
                    + "INSERT INTO pessoa (nome, email, telefone, data_nascimento) VALUES ("
                    + "'" + p.getNome() + "', "
                    + "'" + p.getEmail() + "', "
                    + "'" + p.getTelefone() + "', "
                    + "'" + p.getDataNascimento() + "'"
                    + ")";

            System.out.println("SQL: " + sql);

            st.executeUpdate(sql);

            return true;

        } catch (Exception e) {
            System.out.println("Erro ao salvar Pessoa: " + e);
            return false;
        }
    }

}
