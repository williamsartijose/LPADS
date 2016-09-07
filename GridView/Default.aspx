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
            font-size: large;
            margin-bottom: 0px;
        }
        .auto-style3 {
            font-size: x-large;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <span class="auto-style1">Exemplo DataGridView </span>
        <br />
        <br />
        <br />
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" CellPadding="4" CssClass="auto-style2" DataKeyNames="ProductID" DataSourceID="SqlDataSource1" ForeColor="#333333" Height="246px" HorizontalAlign="Center" Width="974px" OnRowCommand="GridView1_RowCommand" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" PageSize="5">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:BoundField DataField="ProductID" HeaderText="ID" InsertVisible="False" ReadOnly="True" SortExpression="ProductID" >
                <ItemStyle ForeColor="Red" HorizontalAlign="Right" Width="75px" />
                </asp:BoundField>
                <asp:BoundField DataField="ProductName" HeaderText="Descrição" SortExpression="ProductName" ShowHeader="False" >
                <HeaderStyle HorizontalAlign="Left" />
                </asp:BoundField>
                <asp:BoundField DataField="UnitPrice" HeaderText="Preço" SortExpression="UnitPrice" DataFormatString="{0:C2}" >
                <HeaderStyle HorizontalAlign="Right" />
                <ItemStyle HorizontalAlign="Right" Width="100px" />
                </asp:BoundField>
                <asp:BoundField DataField="UnitsInStock" HeaderText="Quantidade" SortExpression="UnitsInStock" >
                <HeaderStyle HorizontalAlign="Right" />
                <ItemStyle HorizontalAlign="Right" Width="100px" />
                </asp:BoundField>
                <asp:CommandField ButtonType="Button" DeleteImageUrl="~/imagens/remover.jpg" EditImageUrl="~/imagens/editar.jpg" InsertImageUrl="~/imagens/inserir.jpg" InsertText="" NewImageUrl="~/imagens/inserir.jpg" NewText="" SelectImageUrl="~/imagens/selecionar.jpg" SelectText="Selecionar" ShowDeleteButton="True" ShowEditButton="True" ShowSelectButton="True" />
            </Columns>
            <EditRowStyle BackColor="#2461BF" />
            <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
            <PagerSettings Mode="NextPreviousFirstLast" />
            <PagerStyle BackColor="#FF9933" BorderColor="Red" BorderStyle="Solid" BorderWidth="2px" Font-Bold="True" ForeColor="#FF3300" HorizontalAlign="Center" VerticalAlign="Middle" Width="100px" />
            <RowStyle BackColor="#EFF3FB" />
            <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
            <SortedAscendingCellStyle BackColor="#F5F7FB" />
            <SortedAscendingHeaderStyle BackColor="#99FF66" />
            <SortedDescendingCellStyle BackColor="#3399FF" />
            <SortedDescendingHeaderStyle BackColor="#FF9933" />
        </asp:GridView>
        <br class="auto-style3" />
        <span class="auto-style3">Produto Selecionado:&nbsp; </span>
        <asp:Label ID="Label1" runat="server" CssClass="auto-style3" Text="Label"></asp:Label>
        <br />
        <br />
        <br />
        <span class="auto-style3">Id: </span>
        <asp:Label ID="Label2" runat="server" CssClass="auto-style3"></asp:Label>
        <br class="auto-style3" />
        <span class="auto-style3">Descrição:</span><asp:Label ID="Label3" runat="server" CssClass="auto-style3"></asp:Label>
        <br class="auto-style3" />
        <span class="auto-style3">Quantidade: </span>
        <asp:Label ID="Label4" runat="server" CssClass="auto-style3"></asp:Label>
        <br class="auto-style3" />
        <span class="auto-style3">Preço: </span>
        <asp:Label ID="Label5" runat="server" CssClass="auto-style3"></asp:Label>
        <br class="auto-style3" />
        <br />
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:NorthwindConnectionString %>" SelectCommand="SELECT [ProductID], [ProductName], [UnitPrice], [UnitsInStock] FROM [Products]" DeleteCommand="DELETE FROM [Products] WHERE [ProductID] = @ProductID" InsertCommand="INSERT INTO [Products] ([ProductName], [UnitPrice], [UnitsInStock]) VALUES (@ProductName, @UnitPrice, @UnitsInStock)" UpdateCommand="UPDATE [Products] SET [ProductName] = @ProductName, [UnitPrice] = @UnitPrice, [UnitsInStock] = @UnitsInStock WHERE [ProductID] = @ProductID">
            <DeleteParameters>
                <asp:Parameter Name="ProductID" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="ProductName" Type="String" />
                <asp:Parameter Name="UnitPrice" Type="Decimal" />
                <asp:Parameter Name="UnitsInStock" Type="Int16" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="ProductName" Type="String" />
                <asp:Parameter Name="UnitPrice" Type="Decimal" />
                <asp:Parameter Name="UnitsInStock" Type="Int16" />
                <asp:Parameter Name="ProductID" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
        <br />
        <br />
    
    </div>
    </form>
</body>
</html>
