using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Default2 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        lblFruta.Text = DropDownList1.Text; 
    }

    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        lblFruta.Text = DropDownList1.SelectedItem.Text;
    }

    protected void DropDownList1_SelectedIndexChanged1(object sender, EventArgs e)
    {
        lblFruta.Text = DropDownList1.SelectedItem.Text; 
    }
}