using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace InPlay
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            Response.Redirect("Home.aspx");
            
        }

        protected void LinkButton2_Click(object sender, EventArgs e)
        {
            if ((txtAdmin.Text == "admin") && (txtContra.Text == "admin"))
            {
                Response.Redirect("Home.aspx");
                txtAdmin.Text = "";
                txtContra.Text = "";
            }
            else
            {
                ScriptManager.RegisterClientScriptBlock(this, this.GetType(), 
                "alertMessage", "alert('Error En Usuario o Contraseña, Intente Nuevamente')", true);
                txtAdmin.Text = "";
                txtContra.Text = "";
            }
        }
    }
}