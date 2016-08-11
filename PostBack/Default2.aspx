<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default2.aspx.cs" Inherits="Default2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            font-size: xx-large;
        }
        .auto-style2 {
            font-size: x-large;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div style="background-color: #99FFCC">
    
        <span class="auto-style1">Exemplo PostBack Recuperar Valor da Lista<br />
        <br />
        Nomes de Frutas:<br />
        </span>
        <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" CssClass="auto-style2" Height="35px" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged1" Width="308px">
            <asp:ListItem Value="Laranja"></asp:ListItem>
            <asp:ListItem Value="Manga"></asp:ListItem>
            <asp:ListItem>Pera</asp:ListItem>
            <asp:ListItem>Caqui</asp:ListItem>
            <asp:ListItem>Kiwi</asp:ListItem>
        </asp:DropDownList>
        <br class="auto-style2" />
        <br class="auto-style2" />
        <br class="auto-style2" />
        <br class="auto-style2" />
        <asp:Button ID="Button1" runat="server" CssClass="auto-style2" OnClick="Button1_Click" Text="Escolher" />
        <br class="auto-style2" />
        <strong>
        <br class="auto-style1" />
        </strong><span class="auto-style1"><strong>A fruta escolhida foi </strong></span><strong>
        <asp:Label ID="lblFruta" runat="server" CssClass="auto-style1"></asp:Label>
        </strong>
        <br class="auto-style1" />
        <br class="auto-style1" />
    
    </div>
    </form>
</body>
</html>
