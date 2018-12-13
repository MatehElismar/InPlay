using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.Sql;
using System.Data.SqlClient;

namespace InPlay
{
    public partial class Administrador : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button5_Click(object sender, EventArgs e)
        {
            string conex = System.Configuration.ConfigurationManager.ConnectionStrings["conexion"].ConnectionString;
            SqlConnection conexion = new SqlConnection(conex);
            conexion.Open();
            SqlCommand comando = new SqlCommand("select * from noticias" +
                " where titulo ='" + TextBox5.Text + "'", conexion);
            
            SqlDataReader registro = comando.ExecuteReader();
            if (registro.Read())
            {
                TextBox6.Text = registro["detalle"].ToString();
                TextBox7.Text = registro["autor"].ToString();
            
                Label3.Text = Label3.Text + "<img src=\"" + registro["foto"] + "\"><br> ";
            }
            else
            {
                Label4.Text = "No Existe esta Noticia";
                conexion.Close();
            }
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            FileUpload2.SaveAs(Server.MapPath(".") + "/" + FileUpload2.FileName);
            string conex = System.Configuration.ConfigurationManager.ConnectionStrings["conexion"].ConnectionString;
            SqlConnection conexion = new SqlConnection(conex);
            conexion.Open();

            SqlCommand comando = new SqlCommand("update noticias set " + 
                " detalle='" + this.TextBox6.Text +
                "',autor='" + this.TextBox7.Text +
                "',foto='" + FileUpload2.FileName +
                "' where titulo ='" + this.TextBox5.Text + "'", conexion);

            int cantidad = comando.ExecuteNonQuery();

            if (cantidad == 1)
            {
                Label3.Text = "Datos Modificados";
                TextBox5.Text = "";
                TextBox6.Text = "";
                TextBox7.Text = "";
            }
            else
            {
                Label4.Text = "No Existe esta Noticia";
                conexion.Close();
            }

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            FileUpload1.SaveAs(Server.MapPath(".") + "/" + FileUpload1.FileName);
            string conex = System.Configuration.ConfigurationManager.ConnectionStrings["conexion"].ConnectionString;
            SqlConnection conexion = new SqlConnection(conex);
            conexion.Open();
            SqlCommand comando = new SqlCommand("insert into noticias (titulo,detalle,autor,foto) values('" +
                TextBox1.Text +
                "','"+ TextBox2.Text +
                "','"+ TextBox3.Text +
                "','"+  FileUpload1.FileName +"')", conexion);
            comando.ExecuteNonQuery();
            
            Label5.Text = "Se guardo la noticia";
            conexion.Close();

            TextBox1.Text = "";
            TextBox2.Text = "";
            TextBox3.Text = "";
            
        }
    }
}