<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default3.aspx.cs" Inherits="Default3" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            font-size: xx-large;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div style="background-color: #CCFFFF">
    
        <span class="auto-style1">Exemplo de AutoPostBack</span><br class="auto-style1" />
        <br class="auto-style1" />
        <span class="auto-style1">Dia do Mês
        <br />
        </span>
        <br />
        <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged" style="font-size: x-large" Width="419px">
        </asp:DropDownList>
        <br />
        <br />
        <br />
        <br />
        <br class="auto-style1" />
        <span class="auto-style1">O dia escolhido foi&nbsp; </span>
        <asp:Label ID="lblDia" runat="server" CssClass="auto-style1"></asp:Label>
        <br class="auto-style1" />
    
    </div>
    </form>
</body>
</html>
