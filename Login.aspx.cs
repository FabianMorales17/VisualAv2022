using System;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;

namespace LoginVB
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        string patron = "VB2022";
        protected void Btningresar_Click (object sender,EventArgs e)
        {
            string conectar = ConfigurationManager.ConnectionStrings["conexion"].ConnectionString;
            SqlConnection sqlConectar = new SqlConnection(conectar);
            SqlCommand cmd = new SqlCommand("sp_validarus2", sqlConectar)
            {
                CommandType = CommandType.StoredProcedure
            };
            cmd.Connection.Open();
            cmd.Parameters.Add("@usuario", SqlDbType.VarChar, 50).Value = tbUsuario.Text;
            cmd.Parameters.Add("@clave", SqlDbType.VarChar, 50).Value = tbtPassword.Text;
            cmd.Parameters.Add("@patron", SqlDbType.VarChar, 50).Value = patron;
            SqlDataReader dr = cmd.ExecuteReader();
            if (dr.Read())
            {
                //Agregar Una Sesión Usuario
                Response.Redirect("Index.aspx");
            }

            LblError.Text = "Error de Usuario o Contraseña";

            cmd.Connection.Close();
        }

    }
}