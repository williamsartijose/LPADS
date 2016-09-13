<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Filme.aspx.cs" Inherits="Filme" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            font-size: xx-large;
        }
        .auto-style2 {
            width: 55%;
            font-size: x-large;
        }
        .auto-style4 {
            width: 255px;
        }
        .auto-style5 {
            width: 86px;
        }
        .auto-style6 {
            width: 434px;
            text-align: center;
        }
        .auto-style7 {
            width: 355px;
            text-align: center;
        }
        .auto-style8 {
            width: 231px;
            text-align: center;
        }
        .auto-style9 {
            width: 214px;
            text-align: center;
        }
        .auto-style13 {
            font-size: x-large;
        }
        .auto-style14 {
            width: 424px;
            text-align: center;
        }
        .auto-style15 {
            font-size: large;
        }
        .auto-style16 {
            font-size: x-large;
            margin-top: 0px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <span class="auto-style1"><strong><em>Manter Filmes</em></strong></span><strong><em><br class="auto-style1" />
        </em></strong>
        <br />
        <br />
        <asp:GridView ID="GridView1" runat="server" CellPadding="4" ForeColor="#333333" GridLines="None" Width="892px" AllowPaging="True" AutoGenerateColumns="False" CssClass="auto-style16" OnPageIndexChanged="GridView1_PageIndexChanged" OnPageIndexChanging="GridView1_PageIndexChanging" OnRowCommand="GridView1_RowCommand" PageSize="5">
            <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
            <Columns>
                <asp:BoundField DataField="id" HeaderText="ID" />
                <asp:BoundField DataField="titulo" HeaderText="Título" />
                <asp:BoundField DataField="genero" HeaderText="Gênero" />
                <asp:BoundField DataField="quantidade" HeaderText="Quantidade">
                <ItemStyle HorizontalAlign="Center" />
                </asp:BoundField>
                <asp:BoundField DataField="valor" DataFormatString="{0:C2}" HeaderText="Valor" />
                <asp:ButtonField ButtonType="Button" CommandName="Select" Text="Selecionar" />
            </Columns>
            <EditRowStyle BackColor="#999999" />
            <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
            <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
            <SortedAscendingCellStyle BackColor="#E9E7E2" />
            <SortedAscendingHeaderStyle BackColor="#506C8C" />
            <SortedDescendingCellStyle BackColor="#FFFDF8" />
            <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
        </asp:GridView>
        <br />
        <br />
        <table class="auto-style2">
            <tr>
                <td class="auto-style5" colspan="2">ID</td>
                <td class="auto-style4" colspan="3">
                    <asp:TextBox ID="txtId" runat="server" CssClass="auto-style13"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style5" colspan="2">Descrição: </td>
                <td class="auto-style4" colspan="3">
                    <asp:TextBox ID="txtDesc" runat="server" CssClass="auto-style13"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style5" colspan="2">GÊnero: </td>
                <td class="auto-style4" colspan="3">
                    <asp:TextBox ID="txtGenero" runat="server" CssClass="auto-style13"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style5" colspan="2">Quantidade: </td>
                <td class="auto-style4" colspan="3">
                    <asp:TextBox ID="txtQtde" runat="server" CssClass="auto-style13"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style5" colspan="2">Valor: </td>
                <td class="auto-style4" colspan="3">
                    <asp:TextBox ID="txtValor" runat="server" CssClass="auto-style13"></asp:TextBox>
                </td>
            </tr>
            <tr class="auto-style1">
                <td class="auto-style5" colspan="2">&nbsp;</td>
                <td class="auto-style4" colspan="3">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style9">
                    <asp:Button ID="btnInserir" runat="server" CssClass="auto-style15" OnClick="btnInserir_Click" Text="Inserir" />
                </td>
                <td class="auto-style8">
                    <asp:Button ID="btnEditar" runat="server" CssClass="auto-style15" Text="Editar" OnClick="btnEditar_Click" />
                </td>
                <td class="auto-style7">
                    <asp:Button ID="btnRemover" runat="server" CssClass="auto-style15" Text="Remover" OnClick="btnRemover_Click" />
                </td>
                <td class="auto-style6">
                    <asp:Button ID="btnGravar" runat="server" CssClass="auto-style15" OnClick="btnGravar_Click" Text="Gravar" />
                </td>
                <td class="auto-style14">
                    <asp:Button ID="btnCancelar" runat="server" CssClass="auto-style15" OnClick="btnCancelar_Click" style="height: 40px" Text="Cancelar" />
                </td>
            </tr>
        </table>
        <br />
        <br />
    
    </div>
    </form>
</body>
</html>
