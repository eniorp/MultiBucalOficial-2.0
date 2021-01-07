<%@ Page Title="About Us" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true"
    CodeFile="Retorno.aspx.cs" Inherits="About" %>

<asp:Content ID="HeaderContent" runat="server" ContentPlaceHolderID="HeadContent">

</asp:Content>

<asp:Content ID="BodyContent" runat="server" ContentPlaceHolderID="MainContent">

<br />        
<br />
    <p>
        <h4>Carregar erros do Sib</h4></p>
    <p>
         
        <asp:FileUpload ID="FileUpload1" runat="server" Width="270px" />
        <asp:Button ID="Button1" runat="server" Width="100px" Text="Carregar Erros" 
            onclick="Button1_Click1" />
        
    
        
    </p>
    <p>
         
        <asp:LinkButton ID="lnkDownloadErros" runat="server" Visible="false" onclick="LinkButton2_Click">Abrir Arquivo de erros</asp:LinkButton>
        
    
        
    <h4>Carregar CCO das inclusões</h4></p>
    <p>
         
        &nbsp;</p>
    <p>
         
        <asp:FileUpload ID="FileUpload2" runat="server" Width="270px" />
        <asp:Button ID="Button2" runat="server" Width="100px" Text="Carregar CCO" onclick="Button2_Click" 
            />
        
    
        
    </p>
    <p>
         
        &nbsp;</p>
    <p>
         
        <asp:Label ID="lblMensagem" runat="server" Text=""></asp:Label>
        
    
        
    </p>

</asp:Content>
