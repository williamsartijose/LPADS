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
        //Label1.Text = Session["nome"].ToString(); 
        //Label1.Text = Cache["nome"].ToString(); 
        // Label1.Text = ViewState["nome"].ToString();
        // Label1.Text = Request.Cookies["nome"].Value.ToString(); 
        Label1.Text = Request.QueryString["nome"].ToString(); 
        
    }
}