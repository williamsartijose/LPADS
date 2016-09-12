using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Filme : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Locadora.Camadas.BLL.Filme bllFilme = new Locadora.Camadas.BLL.Filme();
        GridView1.DataSource = bllFilme.Select();
        GridView1.DataBind();     
    
    }

    protected void Button1_Click(object sender, EventArgs e)
    {

    }

    protected void btnInserir_Click(object sender, EventArgs e)
    {
        Locadora.Camadas.MODEL.Filme filme = new Locadora.Camadas.MODEL.Filme();
        Locadora.Camadas.BLL.Filme bllFilme = new Locadora.Camadas.BLL.Filme(); 

        filme.titulo = txtDesc.Text;
        filme.genero = txtGen.Text;
        filme.quantidade = Convert.ToInt32(txtQtde.Text);
        filme.valor = Convert.ToSingle(txtValor.Text);

        bllFilme.Insert(filme);
        GridView1.DataSource = bllFilme.Select();
        GridView1.DataBind();  
    }
}