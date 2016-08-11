using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Default3 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (! IsPostBack)
        {
            for (int i = 1; i <= 31; i++)
                DropDownList1.Items.Add("Dia " + i.ToString());
        }
       
    }

    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        lblDia.Text = DropDownList1.SelectedItem.Text; 
    }
}