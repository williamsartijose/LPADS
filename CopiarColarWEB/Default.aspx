<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

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
    <div>
    
        <span class="auto-style2">Exemplo Copiar Colar</span><br class="auto-style2" />
        <br class="auto-style2" />
        <span class="auto-style2"><strong>Valor</strong> 1: </span>
        <asp:TextBox ID="TextBox1" runat="server" CssClass="auto-style2"></asp:TextBox>
        <br class="auto-style2" />
        <span class="auto-style2"><strong>Valor</strong> 2:&nbsp; </span>
        <asp:TextBox ID="TextBox2" runat="server" CssClass="auto-style2"></asp:TextBox>
        <br class="auto-style2" />
        <br class="auto-style2" />
        <asp:Button ID="btnCopiar" runat="server" CssClass="auto-style2" OnClick="btnCopiar_Click" Text="Copiar" />
        <span class="auto-style2">&nbsp;&nbsp; </span>
        <asp:Button ID="btnColar" runat="server" CssClass="auto-style2" OnClick="btnColar_Click" Text="Colar" />
        <br class="auto-style2" />
        <br class="auto-style1" />
    
    </div>
    </form>
</body>
</html>
