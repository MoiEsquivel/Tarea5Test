<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Menu.aspx.cs" Inherits="Cuestionario.Menu" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 104%;
        }
        .auto-style7 {
            margin-left: 13px;
        }
        .auto-style8 {
            height: 178px;
            text-align: center;
            width: 589px;
        }
        .auto-style9 {
            height: 178px;
            text-align: center;
            width: 699px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Image ID="Image1" runat="server" Height="269px" ImageUrl="~/Image/inicio.jpg" Width="1500px" />
        </div>
        <table class="auto-style1">
            <tr>
                <td class="auto-style8">
                    <asp:Button ID="BIniciar" runat="server" Height="80px" OnClick="BIniciar_Click" Text="INICIAR PRUEBA" Width="200px" />
                </td>
                <td class="auto-style9">
                    <asp:Button ID="Breportes" runat="server" Height="80px" OnClick="Breportes_Click" Text="REPORTES" Width="200px" />
                    <asp:GridView ID="GridView1" runat="server" CssClass="auto-style7" Height="181px" Width="732px" HorizontalAlign="Center">
                    </asp:GridView>
                </td>
            </tr>
        </table>
    </form>
</body>
</html>
