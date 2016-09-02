using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class ListarProdutos : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected string Total(object qtde, object val)
    {
        float quantidade = Convert.ToSingle(qtde);
        float valor = Convert.ToSingle(val);
        float total = quantidade * valor;
        return string.Format("{0:C2}", total); 
    }

    protected void DataList1_ItemCommand(object source, DataListCommandEventArgs e)
    {
        Label1.Text = DataList1.DataKeys[e.Item.ItemIndex].ToString();
        Response.Redirect("DetalheProduto.aspx?ProdID=" + DataList1.DataKeys[e.Item.ItemIndex].ToString());
    }
}