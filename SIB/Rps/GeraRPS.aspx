<%@ Page Title="Gerar RPS para ANS" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true"
    CodeFile="GeraRPS.aspx.cs" Inherits="_Default" %>
    

<asp:Content ID="HeaderContent" runat="server" ContentPlaceHolderID="HeadContent">

<script src="JavaScript/mascara.js" type="text/javascript"></script> 

</asp:Content>
<asp:Content ID="BodyContent" runat="server" ContentPlaceHolderID="MainContent">

    <h2>
        &nbsp;<asp:Label ID="lblEmpresa" runat="server" Text=""></asp:Label>
    </h2>
    <p></p><p></p>
    <p>
        Informe a data base e clique no link abaixo para gerar o SIB </p>
    <p>
        
        Data base :.
        

        <asp:TextBox  onkeyup="formataData(this,event);"  ID="txtDtBase" runat="server"></asp:TextBox>
        
    </p>
    <p>
    Oficializa Geração?
    <asp:DropDownList ToolTip="Se Não, gera o arquivo apenas para testes não registrando o envio dos registros, se Sim, gera o arquivo e oficializa a geração, registrando o envio do arquivo SIB" ID="cboOficializa" runat="server">
      <asp:ListItem></asp:ListItem>
      <asp:ListItem>Sim</asp:ListItem>
      <asp:ListItem>Não</asp:ListItem>
        </asp:DropDownList>


    </p>

    
    <p>
    <asp:LinkButton ID="LinkButton1" ForeColor = "Blue" runat="server" onclick="LinkButton1_Click">Gerar SIB</asp:LinkButton>
    </p>
    <p>
    <asp:LinkButton ID="LinkButton2" Visible="false" runat="server" 
            onclick="LinkButton2_Click">Baixar arquivo</asp:LinkButton>
    </p>
    <p>
    <asp:LinkButton ID="LinkButton4" runat="server" onclick="LinkButton4_Click">.</asp:LinkButton>
    </p>
    <p>
    <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
    </p>
</asp:Content>
