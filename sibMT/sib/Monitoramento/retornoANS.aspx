
<%@ Page Title="Retorno Monitoramento" Language="C#" MasterPageFile="~/SiteMonit.master" AutoEventWireup="true"
    CodeFile="retornoANS.aspx.cs" Inherits="retornoANS" %>

<asp:Content ID="HeaderContent" runat="server" ContentPlaceHolderID="HeadContent">
</asp:Content>
<asp:Content ID="BodyContent" runat="server" ContentPlaceHolderID="MainContent">



    <div>
    
        <br />
    
    </div>
        <h2> Processamento de rotorno Monitoramento ANS</h2>
    <br />
    <fieldset>
        <legend>Selecione o arquivo</legend>
    

        Selecione o arquivo:
        <asp:FileUpload ID="FileUpload1" runat="server" />
        
        
        <asp:Button ID="Button1" runat="server" Text="Processar retorno" Width="154px" OnClick="Button1_Click" />
    </fieldset>    
</asp:Content>