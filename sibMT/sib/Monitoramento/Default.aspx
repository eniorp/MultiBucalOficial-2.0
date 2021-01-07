<%@ Page Title="Radar TISS - Unimed Ribeirão Preto" Language="C#" MasterPageFile="~/SiteMonit.master" AutoEventWireup="true"
    CodeFile="Default.aspx.cs" Inherits="_Default" %>

<asp:Content ID="HeaderContent" runat="server" ContentPlaceHolderID="HeadContent">
</asp:Content>
<asp:Content ID="BodyContent" runat="server" ContentPlaceHolderID="MainContent">

    <h2>
        GERAÇÃO DE ARQUIVO XML NO PADRÃO RADAR TISS<asp:ScriptManager 
            ID="ScriptManager1" runat="server">
        </asp:ScriptManager>
       
       

        
    </h2>
    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
      <Triggers> 
        <asp:PostBackTrigger ControlID="Button1" />
        <asp:PostBackTrigger ControlID="LinkButton1" />
      </Triggers>
      
        <ContentTemplate>

        <fieldset>
          <legend>Dados Convênio</legend>
        <br />
       <table>

         <tr>
            <td align="right">Registro na ANS: </td>
            <td><asp:TextBox ID="TextBoxRegistro" Text="351202" runat="server" Width="285px"></asp:TextBox></td>
         </tr>
         <tr>
            <td align="right">Sequencial do Arquivo: </td>
            <td><asp:TextBox ID="TextBoxSequencial" Text="1" runat="server" Width="285px"></asp:TextBox></td>
         </tr>
         </table>
         </fieldset>


        <fieldset>
          <legend>Questão 5 Certificado Digital</legend>
        <br />
       <table>
         <tr>
            <td align="right">Possui Certificado Digital : </td>
            <td>
                    <asp:DropDownList ID="cboPossuiCertifado" runat="server" Width="196px">
                    <asp:ListItem Value="S">Sim</asp:ListItem>
                    <asp:ListItem Value="N">Não</asp:ListItem>
                </asp:DropDownList>
            </td>
         </tr>

       <tr>
         <td align="right"">
           Identificação e domínio do certificado: 
         </td>
         <td>
            <asp:TextBox ID="txtDominioeCertif" Text="CERTISIGN, https://xtiss.ufenesp.com.br" runat="server" Width="285px"></asp:TextBox>
         </td>
       </tr>
       <tr>
         <td align="right"">Quantidade de Prestadores: </td>
         <td><asp:TextBox ID="txtQtPrestadores" Text="0" runat="server" Width="285px"></asp:TextBox></td>
       </tr>

       </table>
       

        </fieldset>

         </fieldset>


        <fieldset>
          <legend>Dados do responsável pelo preenchimento</legend>
        <br />
       <table>
         <tr>
            <td align="right">Responsável: </td>
            <td><asp:TextBox ID="TextBoxNmResponsavel" Text="Fabiano Costa Rezende" runat="server" Width="285px"></asp:TextBox></td>
         </tr>

       <tr>
         <td align="right"">
           Cargo: 
         </td>
         <td>
            <asp:TextBox ID="TextBoxCargo" Text="Coordenador de Informatica" runat="server" Width="285px"></asp:TextBox>
         </td>
       </tr>
       <tr>
         <td align="right"">Telefone: </td>
         <td><asp:TextBox ID="TextBoxFone" Text="(16)3605-2244" runat="server" Width="285px"></asp:TextBox></td>
       </tr>
       <tr>
            <td align="right"">
               email: 
            </td>
            <td>
               <asp:TextBox ID="TextBoxemail" Text="fabiano.rezende@unimedribeirao.com.br" runat="server" Width="285px"></asp:TextBox>
            </td>
       </tr>

       </table>
       

        </fieldset>
         
       <p>
            <asp:CheckBox ID="CheckBox1" Text="Considerar atributos do cabeçalho xml para cálculo do hash" runat="server" />

            </p>

            <p>
               Tipo de Envio : <asp:DropDownList ID="cboTipo" runat="server" Width="196px">
                    <asp:ListItem Value="ENVIO_PESQUISA_RADAR">Enviar Pesquisa</asp:ListItem>
                    <asp:ListItem Value="SUBSTITUI_PESQUISA_RADAR">Substituir Pesquisa</asp:ListItem>
                </asp:DropDownList>

                <asp:Button ID="Button3" runat="server" OnClick="Button3_Click" Text="Button" />

            </p>
            
    <p>
      <asp:FileUpload ID="FileUpload1" runat="server" />
        <asp:Button 
            ID="Button1" runat="server" onclick="Button1_Click" Text="Gerar xml Radar Tiss" />
        
        <asp:Button ID="Button2" runat="server" onclick="Button2_Click" Text="Button" Visible="false" />
        
    </p>

            <asp:LinkButton ID="LinkButton1" runat="server" onclick="LinkButton1_Click">Download radar Tiss</asp:LinkButton>
    <p>
        <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
    </p>

        </ContentTemplate>
    </asp:UpdatePanel>

</asp:Content>
