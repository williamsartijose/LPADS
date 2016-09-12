<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Cliente.aspx.cs" Inherits="Cliente" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            font-size: xx-large;
        }
        .auto-style2 {
            font-size: medium;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <span class="auto-style1"><em><strong>Manutenção de Clientes</strong></em></span><em><strong><br class="auto-style1" />
        </strong></em>
        <br />
        <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" DataObjectTypeName="Locadora.Camadas.MODEL.Cliente" DeleteMethod="Delete" InsertMethod="Insert" SelectMethod="Select" TypeName="Locadora.Camadas.BLL.Cliente" UpdateMethod="Update"></asp:ObjectDataSource>
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" CellPadding="4" DataSourceID="ObjectDataSource1" ForeColor="#333333" GridLines="None" CssClass="auto-style2" DataKeyNames="id">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:BoundField DataField="id" HeaderText="id" SortExpression="id" />
                <asp:BoundField DataField="nome" HeaderText="nome" SortExpression="nome" />
                <asp:BoundField DataField="endereco" HeaderText="endereco" SortExpression="endereco" />
                <asp:BoundField DataField="cidade" HeaderText="cidade" SortExpression="cidade" />
                <asp:BoundField DataField="estado" HeaderText="UF" SortExpression="estado" />
                <asp:BoundField DataField="aniversario" HeaderText="aniversario" SortExpression="aniversario" DataFormatString="{0:D}" FooterText="Aniversário" />
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowSelectButton="True" />
            </Columns>
            <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
            <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
            <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
            <SortedAscendingCellStyle BackColor="#FDF5AC" />
            <SortedAscendingHeaderStyle BackColor="#4D0000" />
            <SortedDescendingCellStyle BackColor="#FCF6C0" />
            <SortedDescendingHeaderStyle BackColor="#820000" />
        </asp:GridView>
        <br />
        <asp:DetailsView ID="DetailsView1" runat="server" AllowPaging="True" AutoGenerateRows="False" CellPadding="4" DataKeyNames="id" DataSourceID="ObjectDataSource1" ForeColor="#333333" GridLines="None" Height="50px" Width="653px">
            <AlternatingRowStyle BackColor="White" />
            <CommandRowStyle BackColor="#FFFFC0" Font-Bold="True" />
            <FieldHeaderStyle BackColor="#FFFF99" Font-Bold="True" />
            <Fields>
                <asp:BoundField DataField="id" HeaderText="id" SortExpression="id" />
                <asp:BoundField DataField="nome" HeaderText="nome" SortExpression="nome" />
                <asp:BoundField DataField="endereco" HeaderText="endereco" SortExpression="endereco" />
                <asp:BoundField DataField="cidade" HeaderText="cidade" SortExpression="cidade" />
                <asp:BoundField DataField="estado" HeaderText="estado" SortExpression="estado" />
                <asp:BoundField DataField="aniversario" HeaderText="aniversario" SortExpression="aniversario" />
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowInsertButton="True" />
            </Fields>
            <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
            <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
        </asp:DetailsView>
        <br />
        <br />
        <br />
        <br />
        <br />
    
    </div>
    </form>
</body>
</html>
