<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Inicio.aspx.cs" Inherits="Cuestionario.Inicio" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            text-align: center;
        }
        .auto-style2 {
            font-size: xx-large;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="auto-style1">
            
            <strong><span class="auto-style2">Cedula:&nbsp; </span>
            <asp:TextBox ID="Tcedula" runat="server" CssClass="auto-style2"></asp:TextBox>
            <br class="auto-style2" />
            <br class="auto-style2" />
            <span class="auto-style2">Nombre: </span>
            <asp:TextBox ID="Tnombre" runat="server" CssClass="auto-style2"></asp:TextBox>
            <br class="auto-style2" />
            <br class="auto-style2" />
            <span class="auto-style2">Genero: </span>
            <asp:RadioButton ID="RadioButton1" runat="server" CssClass="auto-style2" GroupName="abc" Text="Masculino" />
            <span class="auto-style2">&nbsp;&nbsp;&nbsp; </span>
            <asp:RadioButton ID="RadioButton2" runat="server" CssClass="auto-style2" GroupName="abc" Text="Femenino" />
            </strong>
            <br />
            <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="Bsiguiente" runat="server" Height="70px" OnClick="Bsiguiente_Click" Text="Siguiente" Width="200px" />
            
        </div>
    </form>
</body>
</html>
