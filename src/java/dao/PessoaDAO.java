/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dao;
import apoio.ConexaoBD;
import entidade.Pessoa;
import java.sql.Statement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.time.LocalDate;
import java.time.Period;
import java.time.format.DateTimeFormatter;


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

    public String validarDados(Pessoa pessoa) {
        if (pessoa.getNome() == null || pessoa.getNome().trim().isEmpty()) {
            return "O campo nome é obrigatório.";
        }
        if (pessoa.getEmail() == null || pessoa.getEmail().trim().isEmpty()) {
            return "O campo email é obrigatório.";
        }
        if (pessoa.getTelefone() == null || pessoa.getTelefone().length() > 15) {
            return "O campo telefone deve ter no máximo 15 caracteres.";
        }
        if (pessoa.getDataNascimento() == null || pessoa.getDataNascimento().trim().isEmpty()) {
            return "O campo data de nascimento é obrigatório.";
        }
         // Verificação de idade mínima (13 anos)
        try {
            DateTimeFormatter formatter = DateTimeFormatter.ofPattern("yyyy-MM-dd");
            LocalDate dataNascimento = LocalDate.parse(pessoa.getDataNascimento(), formatter);
            LocalDate dataAtual = LocalDate.now();

            // Calcula a idade da pessoa
            int idade = Period.between(dataNascimento, dataAtual).getYears();

            if (idade < 13) {
                return "É necessário ter pelo menos 13 anos para se cadastrar.";
            }
        } catch (Exception e) {
            return "Data de nascimento inválida. Utilize o formato yyyy-MM-dd.";
        }

        return null; // Sem erros
    }
    
    public ArrayList<Pessoa> consultar() {
        ArrayList<Pessoa> pessoas = new ArrayList<>();

        try {
            Statement st = ConexaoBD.getInstance().getConnection().createStatement();

            String sql = "SELECT * FROM pessoa";
            System.out.println("SQL: " + sql);

            ResultSet resultado = st.executeQuery(sql);

            while (resultado.next()) {
                Pessoa p = new Pessoa();
                p.setId(resultado.getInt("id"));
                p.setNome(resultado.getString("nome"));
                p.setEmail(resultado.getString("email"));
                p.setTelefone(resultado.getString("telefone"));
                p.setDataNascimento(resultado.getString("data_nascimento"));
                pessoas.add(p);
            }

        } catch (Exception e) {
            System.out.println("Erro ao consultar Pessoa: " + e);
        }

        return pessoas;
    }

    public Pessoa consultar(int codigo) {
        Pessoa pessoa = new Pessoa();

        try {
            Statement st = ConexaoBD.getInstance().getConnection().createStatement();

            String sql = "SELECT * FROM pessoa WHERE id = " + codigo;
            System.out.println("SQL: " + sql);

            ResultSet resultado = st.executeQuery(sql);

            if (resultado.next()) {
                pessoa.setId(resultado.getInt("id"));
                pessoa.setNome(resultado.getString("nome"));
                pessoa.setEmail(resultado.getString("email"));
                pessoa.setTelefone(resultado.getString("telefone"));
                pessoa.setDataNascimento(resultado.getString("data_nascimento"));
            }

        } catch (Exception e) {
            System.out.println("Erro ao consultar UMA Pessoa: " + e);
        }

        return pessoa;
    }

    public boolean excluir(int codigo) {
        try {
            Statement st = ConexaoBD.getInstance().getConnection().createStatement();

            String sql = "DELETE FROM pessoa WHERE id = " + codigo;
            System.out.println("SQL: " + sql);

            st.executeUpdate(sql);
            return true;

        } catch (Exception e) {
            System.out.println("Erro ao excluir Pessoa: " + e);
            return false;
        }
    }

    public boolean atualizar(Pessoa p) {
        try {
            Statement st = ConexaoBD.getInstance().getConnection().createStatement();

            String sql = "UPDATE pessoa SET " +
                    "nome = '" + p.getNome() + "', " +
                    "email = '" + p.getEmail() + "', " +
                    "telefone = '" + p.getTelefone() + "', " +
                    "data_nascimento = '" + p.getDataNascimento() + "' " +
                    "WHERE id = " + p.getId();

            System.out.println("SQL: " + sql);

            st.executeUpdate(sql);
            return true;

        } catch (Exception e) {
            System.out.println("Erro ao atualizar Pessoa: " + e);
            return false;
        }
    }

}
