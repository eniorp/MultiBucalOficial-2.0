<%@ Page Language="C#" AutoEventWireup="true"  CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
       <h1 style="color:Red" >Ribeirão Multiodonto - Geração do SIP</h1>
       <fieldset>
         <legend>Parâmetros</legend>
            Ano :
           <asp:TextBox ID="txtAno" runat="server"></asp:TextBox>
           Trimestre :
        <asp:DropDownList ID="cboTrimestre" runat="server">
           <asp:ListItem>1 Trimestre</asp:ListItem>
           <asp:ListItem>2 Trimestre</asp:ListItem>
           <asp:ListItem>3 Trimestre</asp:ListItem>
           <asp:ListItem>4 Trimestre</asp:ListItem>
        </asp:DropDownList>
        </fieldset>
        <br />
        <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="clique aqui para gerar o SIP" />
    
    </div>
    </form>
</body>
</html>
