<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="r3.aspx.cs" Inherits="Cuestionario.r3" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style3 {
            text-align: center;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="auto-style3">
            <div>
            <asp:Image ID="Image1" runat="server" Height="500px" ImageUrl="~/Image/p3.png" Width="700px" />
            <br />
            <br />
            &nbsp;&nbsp;&nbsp; RESPUESTA :&nbsp;&nbsp;&nbsp;
                <asp:DropDownList ID="DropDownList1" runat="server">
                    <asp:ListItem>A</asp:ListItem>
                    <asp:ListItem>B</asp:ListItem>
                    <asp:ListItem>C</asp:ListItem>
                    <asp:ListItem Selected="True">D</asp:ListItem>
                    <asp:ListItem>E</asp:ListItem>
                    <asp:ListItem>F</asp:ListItem>
                </asp:DropDownList>
                <br />
            <br />
            &nbsp;&nbsp;&nbsp;&nbsp;
            </div>
            <asp:GridView ID="GridView1" runat="server" Height="70px" HorizontalAlign="Center" Width="686px">
            </asp:GridView>
            <br />
            <strong>
            <asp:Label ID="Label1" runat="server"></asp:Label>
            </strong>
            <br />
            <br />
            <asp:Button ID="Bsalvar" runat="server" Height="70px" OnClick="Button1_Click" Text="SALVAR" Width="200px" />
            <asp:Button ID="Bnew_prueba" runat="server" Height="70px" OnClick="Button2_Click" Text="NUEVA PRUEBA" Width="200px" />
            <div>
            <br />
            </div>
            <div>
            <br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <br />
                <br />
                <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <br />
            <br />
            <br />
            </div>
        </div>
    </form>
</body>
</html>
