<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="r2.aspx.cs" Inherits="Cuestionario.r2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            text-align: center;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="auto-style1">
            <asp:Image ID="Image1" runat="server" Height="500px" ImageUrl="~/Image/p2.png" Width="700px" />
            <br />
            <br />
&nbsp;&nbsp; RESPUESTA:&nbsp;&nbsp;&nbsp;
            <asp:DropDownList ID="DropDownList1" runat="server">
                <asp:ListItem>A</asp:ListItem>
                <asp:ListItem>B</asp:ListItem>
                <asp:ListItem>C</asp:ListItem>
                <asp:ListItem>D</asp:ListItem>
                <asp:ListItem>E</asp:ListItem>
                <asp:ListItem Selected="True">F</asp:ListItem>
            </asp:DropDownList>
            <br />
            <br />
&nbsp;<br />
&nbsp;&nbsp;&nbsp;
            <asp:Button ID="Bcontinuar" runat="server" Height="70px" OnClick="Bcontinuar_Click" Text="SIGUIENTE" Width="200px" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <br />
            <br />
            <br />
            <br />
&nbsp;&nbsp;&nbsp;
            <br />
        </div>
    </form>
</body>
</html>
