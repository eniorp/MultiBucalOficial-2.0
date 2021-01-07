<%@ Page Title="" Language="C#" MasterPageFile="~/SiteMonit.master" AutoEventWireup="true" CodeFile="ExclusaoMonitoramenotANS.aspx.cs" Inherits="Monitoramento_Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
    <h1> CANCELAMENTO DE LOTE MONITORAMENTO</h1>
    <hr />
    <p style="color:red" >ATENÇÃO!!!!!! Certifique-se de que o lote a ser excluído ainda não foi enviado à ANS. Esse processo de exclusão é ireverssível e não há como restaurar a integridade entre o sistema e o controle de monitoramento ANS</p>
    <hr />
    <br />
    <asp:MultiView ID="MultiView1" ActiveViewIndex="0" runat="server">
        <asp:View ID="View1" runat="server">
        <fieldset runat="server"  id="fieldSetRegerar" >
            <legend>Informe o período e número do lote para cancelamento</legend>
            <p>
                        Período <asp:TextBox ID="txtMesAno"  runat="server"></asp:TextBox> 
            &nbsp;</p>
            <p>
                    Nr lote&nbsp;&nbsp;<asp:TextBox ID="txtNrLote" runat="server"></asp:TextBox>
                </p>
            <p>
            <asp:Button ID="Button2" runat="server" Text="Excluir Lote"  Width="223px" OnClick="Button2_Click" />
                </p>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtMesAno" ErrorMessage="Informe o período"></asp:RequiredFieldValidator>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtNrLote" ErrorMessage="Informe o número do lote"></asp:RequiredFieldValidator>
            <asp:ValidationSummary ID="ValidationSummary1" runat="server" />
        </fieldset>
            <asp:Label ID="lblmsg" ForeColor="Red" runat="server" Text=""></asp:Label>
        </asp:View>
        <asp:View ID="View2" runat="server">
            <h1>CONFIRMAÇÃO DE EXCLUSÃO DE LOTE DE MONITORAMENTO </h1>
            <p>
            <asp:Label ID="Label1" Font-Bold="true" ForeColor="Red" runat="server" Text="Label"></asp:Label>
                </p>
            <p>
            <asp:Button ID="Button1" runat="server" Text="Exclusão definitiva de lote Monitoramento" OnClick="Button1_Click1" />

                </p>
            <p>
                <asp:Label ID="Label2" Font-Bold="true" ForeColor="Red" runat="server" Text=""></asp:Label>
            </p>
        </asp:View>
        </asp:MultiView>

    
</asp:Content>

