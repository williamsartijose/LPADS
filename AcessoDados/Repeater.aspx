<%@ Page Language="C#" AutoEventWireup="true" MaintainScrollPositionOnPostback="true" CodeFile="Repeater.aspx.cs" Inherits="Repeater" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            font-size: xx-large;
            color: #6600FF;
        }
        .cabecalho{
            font-size: x-large;
            color:black;
        }
        .linhaAzul{
           font-size: x-large;
           color:blue;
        }
        .linhaVermelha{
            font-size: x-large;
            color:red;
        }
        .auto-style2 {
            font-size: x-large;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <strong><span class="auto-style1">Exemplo&nbsp; Repeater<br />
        <br />
        <br />
    
        <asp:Repeater ID="Repeater1" runat="server" DataSourceID="SqlDataSource1" OnItemCommand="Repeater1_ItemCommand">
        <HeaderTemplate >
            <span class="cabecalho">
               ID - Descrição do Produto - Estoque - Preço <br />
            </span>
        </HeaderTemplate>        
         <SeparatorTemplate>
             <hr />
         </SeparatorTemplate>
        <ItemTemplate>
            <span class="linhaAzul">
                <%#Eval("ProductId") %> -
                <%#Eval("ProductName")%> -
                <%#Eval("UnitsInStock")%> -
                <%#Valor(Eval("UnitPrice")) %> -
                <%#Total(Eval("UnitsInStock"), Eval("UnitPrice"))%> - 
                <asp:Button ID="Button1" runat="server" Text="Selecionar" CommandName="Selecionar" CommandArgument='<%#Eval("ProductId")%>' />
                 <br />
            </span>
        </ItemTemplate>
   
        <AlternatingItemTemplate>
            <span class="linhaVermelha">
                <%#Eval("ProductId") %> -
                <%#Eval("ProductName")%> -
                <%#Eval("UnitsInStock")%> -
                <%#Valor(Eval("UnitPrice")) %> -
                <%#Total(Eval("UnitsInStock"), Eval("UnitPrice"))%>
                 <asp:Button ID="Button1" runat="server" Text="Selecionar" CommandName="Selecionar" CommandArgument='<%#Eval("ProductId")%>' />            
                    <br />
            </span>
        </AlternatingItemTemplate>
                
        
        </asp:Repeater>
        </span></strong>
        <br />
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:NorthwindConnectionString %>" SelectCommand="SELECT [ProductID], [ProductName], [UnitPrice], [UnitsInStock] FROM [Products]"></asp:SqlDataSource>
    
        <br class="auto-style2" />
        <span class="auto-style2">O Código Selecionado foi </span>
        <asp:Label ID="Label1" runat="server" CssClass="auto-style2"></asp:Label>
    
    </div>
    </form>
</body>
</html>
