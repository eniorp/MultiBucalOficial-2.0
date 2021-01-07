<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="conferencia.aspx.cs" Inherits="conferencia" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
    <br /><br />
    <p>
       <h2> PROCESSAMENTO DO ARQUIVO DE CONFERÊNCIA DO SIB
       </h2>
    </p>
    Selecione o arquivo :<asp:FileUpload ID="FileUpload1" runat="server" Width="321px" />
    <p>
      <asp:LinkButton ForeColor="Blue" ID="LinkButton1" runat="server" onclick="LinkButton1_Click">Processar Arquivo de conferência</asp:LinkButton>
        
    </p>
    <p>
      <asp:Label ID="LabelConf" runat="server"></asp:Label>
    </p>
</asp:Content>

