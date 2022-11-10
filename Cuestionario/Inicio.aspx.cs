using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Cuestionario
{
    public partial class Inicio : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        //Captura de datos 
        protected void Bsiguiente_Click(object sender, EventArgs e)
        {
            Persona.Cedula = Tcedula.Text;
            Persona.Nombre = Tnombre.Text;
            if (RadioButton1.Checked)
            {
                Persona.Genero = "M";
            }else 
                Persona.Genero = "F";


            Response.Redirect("r1.aspx");
        }
    }
}