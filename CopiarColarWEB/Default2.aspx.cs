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
        //Session["nome"] = TextBox1.Text;
        //Cache["nome"] = TextBox1.Text; 
        //ViewState["nome"] = TextBox1.Text;  //nao funciona pois são paginas diferentes4
        //Response.Cookies["nome"].Value = TextB ox1.Text;
        //Response.Redirect("Default3.aspx");
        Response.Redirect("Default3.aspx?nome=" + TextBox1.Text);
         
    }
}