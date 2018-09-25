<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CadastraProduto.aspx.cs" Inherits="WebApplication1.ProjetoLanchonete.CadastraProduto" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div class ="campos" id ="campos" runat="server">
                    <div class ="form" id ="form" runat="server">
            <p>Formulário</p>
        </div>
            <p>Qual o produto a ser cadastrado???:<asp:TextBox runat="server" id="prodCad"/></p>
            <p>Qual categoria o produto pertence?:<asp:TextBox runat="server" id="txtProd"/></p>
            <p>Qual o valor unitário do produto?:<asp:TextBox runat="server" id="txtVal"/></p>
            <p>Qual a quantidade do produto a ser registrado??:<asp:TextBox runat="server" id="txtQtd"/></p>
            <asp:Button ID="btnGravar" runat="server" Text="Cadastrar Produto" OnClick="btnGravar_Click" />
            <asp:TextBox runat="server" id="resultado" Width="232px"/>
        </div>
    </form>
</body>
</html>
