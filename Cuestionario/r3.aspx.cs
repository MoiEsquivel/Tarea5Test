using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Drawing;
using System.Net.NetworkInformation;
using System.Reflection.Emit;

namespace Cuestionario
{
    public partial class r3 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {  
            Bnew_prueba.Visible = false;
        }

        

        protected void Button1_Click(object sender, EventArgs e)
        {
            Persona.R3 = DropDownList1.SelectedValue;
            Salvar();
            LlenarGrid();
            Validacion_r();
            Bsalvar.Visible = false;
            Bnew_prueba.Visible = true;
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Label1.Text = "";
            Response.Redirect("Menu.aspx");
        }

        protected void Salvar()
        {
           
            try
            {
                String s = System.Configuration.ConfigurationManager.ConnectionStrings["CuestionarioConnectionString"].ConnectionString;
                SqlConnection conexion = new SqlConnection(s);
                conexion.Open();
                SqlCommand comando = new SqlCommand(" INSERT INTO Persona (Cedula, Nombre, Genero) VALUES('" + Persona.Cedula + "', '" + Persona.Nombre + "', '" + Persona.Genero + "'  )", conexion);
                comando.ExecuteNonQuery();
                conexion.Close();

                
            }
            catch(Exception)
            {
               
            }

            try
            {
                String s = System.Configuration.ConfigurationManager.ConnectionStrings["CuestionarioConnectionString"].ConnectionString;
                SqlConnection conexion = new SqlConnection(s);
                conexion.Open();
                SqlCommand comando = new SqlCommand(" INSERT INTO Respuestas VALUES('" + Persona.Cedula + "' , '" + Persona.R1 + "', '" + Persona.R2 + "', '" + Persona.R3 + "'  )", conexion);
                comando.ExecuteNonQuery();
                conexion.Close();
            }
            catch (Exception)
            {

              
            }

            
        
        }

        protected void LlenarGrid()
        {
            string constr = ConfigurationManager.ConnectionStrings["CuestionarioConnectionString"].ConnectionString;
            using (SqlConnection con = new SqlConnection(constr))
            {
                using (SqlCommand cmd = new SqlCommand("select r.Id,Persona.Nombre, r.CedulaR, r.R1,r.R2,r.R3 " +
                    "from Respuestas r inner join Persona on r.CedulaR= Persona.Cedula " +
                    " where Cedula = " + Persona.Cedula ))
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

        protected void Validacion_r()
        {
            Label1.Text = "";
            String r1,r2,r3;
            int cont = 0;
            int cont2 = 3;
            r1 = Persona.R1;
            r2 = Persona.R2;
            r3 = Persona.R3;
            String c1 = "" ,c2 = "", c3 = "";

            if (r1 == "A" & r2 == "B" & r3 == "A")
            {
                Label1.Text = Label1.Text + "Excelente Obtuviste: 100 puntos \nRespuestas correctas: A , B , A"  ;
            }
            if (r1 != "A")
            {
                c1 = " R1 = " + r1;
                cont2--;
                cont++;
            }
            if (r2 != "B")
            {
                cont2--;
                c2 = ", R2 = " + r2;
                cont++;

            }
            if (r3 != "A")
            {
                cont2--;
                c3 = ", R3 = "+r3;
                cont++;
                
            }
            if(cont2 < 3)
            {
                
                Label1.Text = Label1.Text + "-Obtuviste Respuestas buenas: " + cont2 + " -Respuestas malas: " + cont
                    + " -Las respuestas malas son: " + c1  + c2  + c3
                    + " -Las respuestas correctas son: A , B , A"
                    + " Tus puntos son : " +((cont2 /= 3) * 100).ToString();
                //No logre que diera el resultado

            }
            


        }
    }
}