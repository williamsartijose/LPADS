using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Locadora.Camadas.DAL
{
    public class Filme
    {
        private string strCon = Conexao.getConexao();

        public List<MODEL.Filme> Select()
        {
            List<MODEL.Filme> lstFilme = new List<MODEL.Filme>();
            SqlConnection conexao = new SqlConnection(strCon);
            string sql = "Select * from Filmes";
            SqlCommand cmd = new SqlCommand(sql, conexao);
            conexao.Open();
            try
            {
                SqlDataReader reader = cmd.ExecuteReader(CommandBehavior.CloseConnection);
                while (reader.Read())
                {
                    MODEL.Filme filme = new MODEL.Filme();
                    filme.id = Convert.ToInt32(reader[0].ToString());
                    filme.titulo = reader["titulo"].ToString();
                    filme.genero = reader["genero"].ToString();
                    filme.quantidade = Convert.ToInt32(reader["quantidade"].ToString());
                    filme.valor = Convert.ToSingle(reader["valor"].ToString()); 
                    lstFilme.Add(filme);
                }
            }
            catch
            {
                Console.WriteLine("Deu erro na Seleção de Filmes...");
            }
            finally
            {
                conexao.Close();
            }

            return lstFilme;
        }

        public MODEL.Filme SelectById(int id)
        {
            MODEL.Filme filme = new MODEL.Filme();
            SqlConnection conexao = new SqlConnection(strCon);
            string sql = "Select * from Filmes where id=@id";
            SqlCommand cmd = new SqlCommand(sql, conexao);
            cmd.Parameters.AddWithValue("@id", id);
            conexao.Open();
            try
            {
                SqlDataReader reader = cmd.ExecuteReader(CommandBehavior.CloseConnection);
                if (reader.Read())
                {
                    filme.id = Convert.ToInt32(reader[0].ToString());
                    filme.titulo = reader["titulo"].ToString();
                    filme.genero = reader["genero"].ToString();
                    filme.quantidade = Convert.ToInt32(reader["quantidade"].ToString());
                    filme.valor = Convert.ToSingle(reader["valor"].ToString());
                }
            }
            catch
            {
                Console.WriteLine("Deu erro na Seleção de Filmes...");
            }
            finally
            {
                conexao.Close();
            }
            return filme;
        }

        public void Insert(MODEL.Filme filme)
        {
            SqlConnection conexao = new SqlConnection(strCon);
            string sql = "Insert into Filmes values (@titulo, @genero, @quantidade, @valor);";
            SqlCommand cmd = new SqlCommand(sql, conexao);
            cmd.Parameters.AddWithValue("@titulo", filme.titulo);
            cmd.Parameters.AddWithValue("@genero", filme.genero);
            cmd.Parameters.AddWithValue("@quantidade",filme.quantidade);
            cmd.Parameters.AddWithValue("@valor", filme.valor);
            conexao.Open();
            try
            {
                cmd.ExecuteNonQuery();
            }
            catch
            {
                Console.WriteLine("Deu erro na inserção de Filmes...");
            }
            finally
            {
                conexao.Close();
            }
        }

        public void Update(MODEL.Filme filme)
        {
            SqlConnection conexao = new SqlConnection(strCon);
            string sql = "Update Filmes set titulo=@titulo, ";
            sql += " genero=@genero, quantidade=@quantidade, ";
            sql += " valor=@valor where id=@id;";
            SqlCommand cmd = new SqlCommand(sql, conexao);
            cmd.Parameters.AddWithValue("@id", filme.id);
            cmd.Parameters.AddWithValue("@titulo", filme.titulo);
            cmd.Parameters.AddWithValue("@genero", filme.genero);
            cmd.Parameters.AddWithValue("@quantidade", filme.quantidade);
            cmd.Parameters.AddWithValue("@valor", filme.valor);
            conexao.Open();
            try
            {
                cmd.ExecuteNonQuery();
            }
            catch
            {
                Console.WriteLine("Erro na atualização de Filmes");
            }
            finally
            {
                conexao.Close();
            }
        }

        public void Delete(MODEL.Filme filme)
        {
            SqlConnection conexao = new SqlConnection(strCon);
            string sql = "Delete from Filmes where id=@id;";
            SqlCommand cmd = new SqlCommand(sql, conexao);
            cmd.Parameters.AddWithValue("@id", filme.id);
            conexao.Open();
            try
            {
                cmd.ExecuteNonQuery();
            }
            catch
            {
                Console.WriteLine("Erro na Remoção de Filmes");
            }
            finally
            {
                conexao.Close();
            }

        }
    }
}
