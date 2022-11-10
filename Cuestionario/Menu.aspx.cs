using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Cuestionario
{
    public partial class Menu : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
          
        }

        //Inicio de prueba
        protected void BIniciar_Click(object sender, EventArgs e)
        {
            Response.Redirect("inicio.aspx");
        }

        //Solicitud de reportes
        protected void Breportes_Click(object sender, EventArgs e)
        {
            LlenarGrid();
        }

        //Metodo para llenar los reportes
        protected void LlenarGrid()
        {
            string constr = ConfigurationManager.ConnectionStrings["CuestionarioConnectionString"].ConnectionString;
            using (SqlConnection con = new SqlConnection(constr))
            {
                using (SqlCommand cmd = new SqlCommand("select r.Id,Persona.Nombre, r.CedulaR, r.R1,r.R2,r.R3" +
                    " from Respuestas r inner join Persona on r.CedulaR= Persona.Cedula"))
                {
                    using (SqlDataAdapter sda = new SqlDataAdapter())
                    {
                        cmd.Connection = con;
                        sda.SelectCommand = cmd;
                        using (DataTable dt = new DataTable())
                        {
                            sda.Fill(dt);
                            GridView1.DataSource = dt;
                            GridView1.DataBind();
                        }
                    }
                }
            }
        }

        
    }
}