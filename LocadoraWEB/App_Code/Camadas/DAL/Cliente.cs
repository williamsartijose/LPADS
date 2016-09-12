using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data; 
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Locadora.Camadas.DAL
{
    public class Cliente
    {
        private string strCon = Conexao.getConexao(); 

        public List<MODEL.Cliente> Select()
        {
            List<MODEL.Cliente> lstCliente = new List<MODEL.Cliente>();
            SqlConnection conexao = new SqlConnection(strCon);
            string sql = "Select * from Clientes";
            SqlCommand cmd = new SqlCommand(sql, conexao);
            conexao.Open();
            try
            {
                SqlDataReader reader = cmd.ExecuteReader(CommandBehavior.CloseConnection);
                while (reader.Read())
                {
                    MODEL.Cliente cliente = new MODEL.Cliente();
                    cliente.id = Convert.ToInt32(reader[0].ToString());
                    cliente.nome = reader["nome"].ToString();
                    cliente.endereco = reader["endereco"].ToString();
                    cliente.cidade = reader["cidade"].ToString();
                    cliente.estado = reader["estado"].ToString();
                    cliente.aniversario = Convert.ToDateTime(reader["aniversario"].ToString());
                    lstCliente.Add(cliente);
                }
            }
            catch
            {
                Console.WriteLine("Deu erro na Seleção de Clientes...");
            }
            finally
            {
                conexao.Close();     
            }
            
            return lstCliente; 
        }


        public List<MODEL.Cliente> SelectById(int id)
        {
            List<MODEL.Cliente> lstCliente = new List<MODEL.Cliente>();
            SqlConnection conexao = new SqlConnection(strCon);
            string sql = "Select * from Clientes where id=@id;";
            SqlCommand cmd = new SqlCommand(sql, conexao);
            cmd.Parameters.AddWithValue("@id", id); 
            conexao.Open();
            try
            {
                SqlDataReader reader = cmd.ExecuteReader(CommandBehavior.CloseConnection);
                while (reader.Read())
                {
                    MODEL.Cliente cliente = new MODEL.Cliente();
                    cliente.id = Convert.ToInt32(reader[0].ToString());
                    cliente.nome = reader["nome"].ToString();
                    cliente.endereco = reader["endereco"].ToString();
                    cliente.cidade = reader["cidade"].ToString();
                    cliente.estado = reader["estado"].ToString();
                    cliente.aniversario = Convert.ToDateTime(reader["aniversario"].ToString());
                    lstCliente.Add(cliente);
                }
            }
            catch
            {
                Console.WriteLine("Deu erro na Seleção de Clientes por ID...");
            }
            finally
            {
                conexao.Close();
            }

            return lstCliente;
        }


        public List<MODEL.Cliente> SelectByNome(string nome)
        {
            List<MODEL.Cliente> lstCliente = new List<MODEL.Cliente>();
            SqlConnection conexao = new SqlConnection(strCon);
            string sql = "Select * from Clientes where (nome like @nome);";
            SqlCommand cmd = new SqlCommand(sql, conexao);
            cmd.Parameters.AddWithValue("@nome", nome.Trim() + "%");
            conexao.Open();
            try
            {
                SqlDataReader reader = cmd.ExecuteReader(CommandBehavior.CloseConnection);
                while (reader.Read())
                {
                    MODEL.Cliente cliente = new MODEL.Cliente();
                    cliente.id = Convert.ToInt32(reader[0].ToString());
                    cliente.nome = reader["nome"].ToString();
                    cliente.endereco = reader["endereco"].ToString();
                    cliente.cidade = reader["cidade"].ToString();
                    cliente.estado = reader["estado"].ToString();
                    cliente.aniversario = Convert.ToDateTime(reader["aniversario"].ToString());
                    lstCliente.Add(cliente);
                }
            }
            catch
            {
                Console.WriteLine("Deu erro na Seleção de Clientes por Nome...");
            }
            finally
            {
                conexao.Close();
            }

            return lstCliente;
        }

        public void Insert (MODEL.Cliente cliente)
        {
            SqlConnection conexao = new SqlConnection(strCon);
            string sql = "Insert into Clientes values (@nome, @endereco, @cidade, @estado, @aniversario);";
            SqlCommand cmd = new SqlCommand(sql, conexao);
            cmd.Parameters.AddWithValue("@nome", cliente.nome);
            cmd.Parameters.AddWithValue("@endereco", cliente.endereco);
            cmd.Parameters.AddWithValue("@cidade", cliente.cidade);
            cmd.Parameters.AddWithValue("@estado", cliente.estado);
            cmd.Parameters.AddWithValue("@aniversario", cliente.aniversario);
            conexao.Open();
            try
            {
                cmd.ExecuteNonQuery(); 
            }
            catch
            {
                Console.WriteLine("Deu erro na inserção de Clientes...");
            }
            finally
            {
                conexao.Close();
            }
        }

        public void Update(MODEL.Cliente cliente)
        {
            SqlConnection conexao = new SqlConnection(strCon);
            string sql = "Update Clientes set nome=@nome, ";
            sql += " endereco=@endereco, cidade=@cidade, ";
            sql += " estado=@estado, aniversario=@aniversario ";
            sql += " where id=@id;";
            SqlCommand cmd = new SqlCommand(sql, conexao);
            cmd.Parameters.AddWithValue("@id", cliente.id); 
            cmd.Parameters.AddWithValue("@nome", cliente.nome);
            cmd.Parameters.AddWithValue("@endereco", cliente.endereco);
            cmd.Parameters.AddWithValue("@cidade", cliente.cidade);
            cmd.Parameters.AddWithValue("@estado", cliente.estado);
            cmd.Parameters.AddWithValue("@aniversario", cliente.aniversario);
            conexao.Open(); 
            try
            {
                cmd.ExecuteNonQuery(); 
            }
            catch
            {
                Console.WriteLine("Erro na atualização de Clientes");
            }
            finally
            {
                conexao.Close();
            }
        }

        public void Delete(MODEL.Cliente cliente) {
            SqlConnection conexao = new SqlConnection(strCon);
            string sql = "Delete from Clientes where id=@id;";
            SqlCommand cmd = new SqlCommand(sql, conexao);
            cmd.Parameters.AddWithValue("@id", cliente.id);     
            conexao.Open();
            try
            {
                cmd.ExecuteNonQuery();
            }
            catch
            {
                Console.WriteLine("Erro na Remoção de Clientes");
            }
            finally
            {
                conexao.Close();
            }

        }

    }
}




