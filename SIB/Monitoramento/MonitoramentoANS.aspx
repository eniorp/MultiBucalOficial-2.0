<%@ Page Title="Retorno Monitoramento" Language="C#" MasterPageFile="~/SiteMonit.master" AutoEventWireup="true"
    CodeFile="MonitoramentoANS.aspx.cs" Inherits="MonitoramentoANS" %>

<asp:Content ID="HeaderContent" runat="server" ContentPlaceHolderID="HeadContent">
</asp:Content>
<asp:Content ID="BodyContent" runat="server" ContentPlaceHolderID="MainContent">

    <div>
        <h2>Gerar arquivo de monitoramento ANS</h2>
        <fieldset>
            <legend>Informe o período para gerar o lote</legend>
            Período <asp:TextBox ID="txtMesAnoVlfs" Text="01/2015" runat="server"></asp:TextBox> 
            &nbsp;<asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Gerar xml Monitoramento" />
        </fieldset>
        
        

        <fieldset runat="server"  id="fieldSetRegerar" >
            <legend>Informe o número do lote para regerar-lo</legend>
                    Nr lote&nbsp;&nbsp;<asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>

            <asp:Button ID="Button2" runat="server" Text="Regerar lote" OnClick="Button2_Click" Width="223px" />
        </fieldset>

<!--    
        <h3>EXCLUSÃO DE LOTE</h3> 

        Nr lote&nbsp;&nbsp;
        <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
    
        <br /><br />
        <asp:Button ID="Button3" runat="server" Text="gerar xml de exclusão de lote" Width="223px" OnClick="Button3_Click" />
    -->
    </div>
        <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
        <br />
        

</asp:Content>