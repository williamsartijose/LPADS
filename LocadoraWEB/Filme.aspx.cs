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
        //Cache["OP"] = "X";
        if (!IsPostBack)
        {
            Locadora.Camadas.BLL.Filme bllFilme = new Locadora.Camadas.BLL.Filme();
            GridView1.DataSource = bllFilme.Select();
            GridView1.DataBind();

            Cache["OP"] = "X";
            habilitaCampos(false);
            
        }   
    
    }

    protected void habilitaCampos(bool status)
    {
        if (Cache["OP"].ToString()!="E")
        {
            txtId.Text = "";
            txtDesc.Text = "";
            txtGenero.Text = "";
            txtQtde.Text = "";
            txtValor.Text = ""; 
        }

        txtId.Enabled = false;
        txtDesc.Enabled = status;
        txtGenero.Enabled = status;
        txtQtde.Enabled = status;
        txtValor.Enabled = status;

        btnInserir.Enabled = !status;
        btnEditar.Enabled = !status;
        btnRemover.Enabled = !status;
        btnGravar.Enabled = status;
        btnCancelar.Enabled = status; 




    }


    protected void btnInserir_Click(object sender, EventArgs e)
    {
        Cache["OP"] = "I";
        habilitaCampos(true);
        txtId.Text = "-1";
        txtDesc.Focus(); 
    }

    protected void btnGravar_Click(object sender, EventArgs e)
    {
        Locadora.Camadas.MODEL.Filme filme = new Locadora.Camadas.MODEL.Filme();
        Locadora.Camadas.BLL.Filme bllFilme = new Locadora.Camadas.BLL.Filme();

        filme.id = Convert.ToInt32(txtId.Text);
        filme.titulo = txtDesc.Text;
        filme.genero = txtGenero.Text;
        filme.quantidade = Convert.ToInt32(txtQtde.Text);
        filme.valor = Convert.ToSingle(txtValor.Text);
       
        if (Cache["OP"].ToString() == "I") 
            bllFilme.Insert(filme);
        else if (Cache["OP"].ToString() == "E")
            bllFilme.Update(filme);

        GridView1.DataSource = bllFilme.Select();
        GridView1.DataBind();

        if (Cache["OP"].ToString()=="I")
            GridView1.SetPageIndex(GridView1.PageCount);

        Cache["OP"] = "X";
        habilitaCampos(false); 
    }

    protected void btnEditar_Click(object sender, EventArgs e)
    {
        if (Convert.ToInt32(txtId.Text) > 0)
        {
            Cache["OP"] = "E";
            habilitaCampos(true);
            txtDesc.Focus();
        }
    }

    protected void btnRemover_Click(object sender, EventArgs e)
    {
        if (Convert.ToInt32(txtId.Text) > 0)
        {
            Locadora.Camadas.MODEL.Filme filme = new Locadora.Camadas.MODEL.Filme();
            Locadora.Camadas.BLL.Filme bllFilme = new Locadora.Camadas.BLL.Filme();
            filme.id = Convert.ToInt32(txtId.Text);
            bllFilme.Delete(filme);
            GridView1.DataSource = bllFilme.Select();
            GridView1.DataBind();

            Cache["OP"] = "X";
            habilitaCampos(false); 
        }
    }

    protected void btnCancelar_Click(object sender, EventArgs e)
    {
        Cache["OP"] = "X";
        habilitaCampos(false);

    }

    protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        Locadora.Camadas.BLL.Filme bllFilme = new Locadora.Camadas.BLL.Filme();
        GridView1.DataSource = bllFilme.Select(); 
        GridView1.PageIndex = e.NewPageIndex;
        GridView1.DataBind();
      
    }

    protected void GridView1_PageIndexChanged(object sender, EventArgs e)
    {

    }

    protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        if (e.CommandName == "Select")
        {
            GridViewRow linha = GridView1.Rows[Convert.ToInt32(e.CommandArgument)];
            txtId.Text = linha.Cells[0].Text;
            txtDesc.Text = linha.Cells[1].Text;
            txtGenero.Text = linha.Cells[2].Text;
            txtQtde.Text = linha.Cells[3].Text;
            txtValor.Text = linha.Cells[4].Text;
        }
    }
}