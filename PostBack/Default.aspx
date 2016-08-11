<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        #Button2 {
            height: 29px;
        }
        .auto-style1 {
            font-size: xx-large;
        }
    </style>
</head>
<body style="background-color: #FFFFCC">
    <form id="form1" runat="server">
    <div style="font-size: larger; background-color: #FFFFCC">
    
        <span class="auto-style1">Exemplo PostBack<br />
        <br />
        Informe o nome de um animal<br />
        </span>
        <asp:TextBox ID="TextBox1" runat="server" style="font-size: x-large" Width="476px"></asp:TextBox>
        <br />
        <br />
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click1" style="font-size: x-large" Text="Inserir" />
        <br />
        <br />
        <asp:DropDownList ID="DropDownList1" runat="server" style="font-size: x-large" Width="402px">
        </asp:DropDownList>
        <br class="auto-style1" />
    
    </div>
    </form>
</body>
</html>
