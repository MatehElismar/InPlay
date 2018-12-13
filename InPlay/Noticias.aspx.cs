using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace InPlay
{
    public partial class Noticias : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string conex = System.Configuration.ConfigurationManager.ConnectionStrings["conexion"].ConnectionString;
            SqlConnection conexion = new SqlConnection(conex);
            conexion.Open();
            SqlCommand comando = new SqlCommand("select * from noticias", conexion);

            SqlDataReader registro = comando.ExecuteReader();
            while (registro.Read()==true)
            {

              
                Label1.Text = Label1.Text + "<div class ='container' style='color:white'> <img style='width: 300px;' src=\"" + registro["foto"] + "\"><br>" +
                    "<h2>"+ registro["titulo"]+"</h2>"+"</br>"+ "<p>"+registro["detalle"]+"</p>"+ "<h5>" + registro["autor"] + "</h5>" + "<hr/> " + " </div>";
            }
           
                Label2.Text = "No Existe esta Noticia";
                conexion.Close();
            
        }
    }
}