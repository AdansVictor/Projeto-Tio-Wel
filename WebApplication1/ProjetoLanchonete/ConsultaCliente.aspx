<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ConsultaCliente.aspx.cs" Inherits="WebApplication1.ProjetoLanchonete.ConsultaCliente" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>

            <h1>Consulta de Clientes</h1>
            <br />
            <table>
            <thead>
                <tr>
                    <th>Nome Completo</th>
                    <th>CPF</th>
                    <th>Endereço</th>
                    <th>Telefone</th>
                    <th>Data de nascimento</th>
                    <th>Data de Cadastro</th>
                </tr>
            </thead>
            
                <tbody id="resultProd" runat="server"></tbody>
            </table>
        </div>
    </form>
</body>
</html>
