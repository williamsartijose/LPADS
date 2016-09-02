<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ListarProdutos.aspx.cs"  Inherits="ListarProdutos"  MaintainScrollPositionOnPostback="true"%>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            font-size: xx-large;
        }
        .auto-style2 {
            font-size: large;
        }
        .auto-style3 {
            height: 444px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div class="auto-style3">
    
        <span class="auto-style1">Exemplo DataList<br />
        <br />
        </span>
        <asp:DataList ID="DataList1" runat="server" BackColor="LightGoldenrodYellow" BorderColor="Tan" BorderWidth="1px" CellPadding="2" DataKeyField="ProductID" DataSourceID="SqlDataSource1" ForeColor="Black" HorizontalAlign="Center" OnItemCommand="DataList1_ItemCommand" RepeatColumns="3" RepeatDirection="Horizontal" Width="962px">
            <AlternatingItemStyle BackColor="PaleGoldenrod" />
            <FooterStyle BackColor="Tan" />
            <HeaderStyle BackColor="Tan" Font-Bold="True" />
            <ItemTemplate>
                <strong><span class="auto-style2">ID</span></strong><span class="auto-style2">: </span>
                <asp:Label ID="ProductIDLabel" runat="server" CssClass="auto-style2" Text='<%# Eval("ProductID") %>' />
                <br class="auto-style2" />
                <strong><span class="auto-style2">Descrição:</span></strong>
                <asp:Label ID="ProductNameLabel" runat="server" CssClass="auto-style2" Text='<%# Eval("ProductName") %>' />
                <br />
                <strong><span class="auto-style2">Quantidade:</span></strong>
                <asp:Label ID="UnitsInStockLabel" runat="server" CssClass="auto-style2" Text='<%# Eval("UnitsInStock", "{0:N}") %>' />
                <br class="auto-style2" />
                <strong><span class="auto-style2">Valor:</span></strong>
                <asp:Label ID="UnitPriceLabel" runat="server" CssClass="auto-style2" Text='<%# Eval("UnitPrice", "{0:C}") %>' />
                <br />
                <span class="auto-style2"><strong>Total: </strong></span>
                <asp:Label ID="lblTotal" runat="server" CssClass="auto-style2" Text='<%# Total(Eval("UnitsInStock"),Eval("UnitPrice")) %>'></asp:Label>
                <br />
                <asp:Button ID="Button1" runat="server" CssClass="auto-style2" Text="Selecionar" />
<br />
            </ItemTemplate>
            <SelectedItemStyle BackColor="DarkSlateBlue" ForeColor="GhostWhite" />
        </asp:DataList>
        <br />
        <br />
        <span class="auto-style1">O produto selecionado foi </span>
        <asp:Label ID="Label1" runat="server" CssClass="auto-style1"></asp:Label>
        <br />
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:NorthwindConnectionString %>" SelectCommand="SELECT [ProductID], [ProductName], [UnitPrice], [UnitsInStock] FROM [Products]"></asp:SqlDataSource>
    
    </div>
    </form>
</body>
</html>
