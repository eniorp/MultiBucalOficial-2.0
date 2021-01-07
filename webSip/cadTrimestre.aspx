<%@ Page Language="C#" AutoEventWireup="true" CodeFile="cadTrimestre.aspx.cs" Inherits="cadTrimestre" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <script src="javaScript/mascara.js" type="text/javascript"></script>
</head>
<body>
    <form id="form1" runat="server">
    <div>
      <h1>Cadastro de trimestre - SIP</h1>
        <asp:ScriptManager ID="ScriptManager1" runat="server">
        </asp:ScriptManager>
        <asp:UpdatePanel ID="UpdatePanel1" runat="server">
            <ContentTemplate>
            <fieldset>
              <legend>SIP - Inclusão de Trimestre</legend>
              <label class="labelDir" >Empresa :
              </label>
          <label>
        <asp:DropDownList ID="cboEmpresa" runat="server" AutoPostBack="True" 
                    onselectedindexchanged="cboEmpresa_SelectedIndexChanged">
           <asp:ListItem Value="1" >Multiodonto</asp:ListItem>
           <asp:ListItem Value="2">Seato</asp:ListItem>
        </asp:DropDownList>
        </label>

              <label class="labelDir" >Ano :
              </label>
              <label> 
                  <asp:TextBox ID="txtAno" runat="server"></asp:TextBox>
                 
              </label>
              
              <label class="labelDir" >Trimestre :
              </label>
          <label>
        <asp:DropDownList ID="cboTrimestre" runat="server">
           <asp:ListItem Value="1" >1 Trimestre</asp:ListItem>
           <asp:ListItem Value="2">2 Trimestre</asp:ListItem>
           <asp:ListItem Value="3">3 Trimestre</asp:ListItem>
           <asp:ListItem Value="4">4 Trimestre</asp:ListItem>
        </asp:DropDownList>
        </label>
              <label class="labelDir" >Estado :
              </label>
              <label>
                  <asp:TextBox ID="txtUF" ReadOnly="true" Text = "SP" runat="server"></asp:TextBox>
                 
              </label>
              <label class="labelDir" >Forma Contrat :
              </label>
          <label>
                <asp:DropDownList ID="cboFormacontrat" runat="server">
                    <asp:ListItem Text="Individual Familiar" Value = "individualFamiliar"></asp:ListItem>
                    <asp:ListItem Text="Coletivo Empresarial" Value = "coletivoEmpresarial"></asp:ListItem>
                    <asp:ListItem Text="Coletivo por adesão" Value = "coletivoAdesao"></asp:ListItem>
                    
                    

        </asp:DropDownList>
        </label>
              <label class="labelDir" >Item Assitencial :
              </label>
          <label>
                <asp:DropDownList ID="cboItemAssit" Width="310px" runat="server" DataSourceID="sdsItemSip" 
                    DataTextField="Descricao" DataValueField="codigo" AutoPostBack="True" 
                    onselectedindexchanged="cboItemAssit_SelectedIndexChanged"> </asp:DropDownList>
                <asp:SqlDataSource ID="sdsItemSip" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:ConnSip %>" 
                    SelectCommand="select id, codigo + ' - ' + descricao as descricao, codigo from sip a union select null, null, null  order by id"></asp:SqlDataSource>
        </label>
              <label class="labelDir" >Qtde Eventos :
              </label>
              <label>
                  <asp:TextBox ID="txtQtEventos" onkeyup="formataInteiro(this,event);"  runat="server"></asp:TextBox>
                 
              </label>
              <label class="labelDir" >Qt Benef Fora Per Carência :
              </label>
              <label>
                  <asp:TextBox ID="txtQtBenefCarencia" onkeyup="formataInteiro(this,event);" runat="server"></asp:TextBox>
                 
              </label>
              <label class="labelDir" >Total Desp Liq :
              </label>
              <label>
                  <asp:TextBox ID="txtTtDespLiq" onkeyup="formataValor(this,event);"  runat="server"></asp:TextBox>
                 
              </label>

              
              <label class="labelDir" ></label>
              <label>
                <asp:Button ID="btnGravar" runat="server" Text="Gravar" 
                    onclick="btnGravar_Click" />

                    </label>
                    <label>
                    <asp:HyperLink ID="HyperLink1" Font-Size="Small" NavigateUrl="~/envioSip.aspx" runat="server">Gerar xml</asp:HyperLink>
                    </label>
            </fieldset>
                
            <br />
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                    DataSourceID="SqlDataSource1" EnableModelValidation="True" 
                    BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" 
                    CellPadding="4" ForeColor="Black" GridLines="Vertical">
                    <AlternatingRowStyle BackColor="White" />
                    <Columns>
                        <asp:BoundField DataField="cd_empresa" HeaderText="Empresa" 
                            SortExpression="cd_empresa" />
                        <asp:BoundField DataField="ano" HeaderText="Ano" 
                            SortExpression="ano" />
                        <asp:BoundField DataField="trimestre" HeaderText="Tri" 
                            SortExpression="trimestre" />
                        <asp:BoundField DataField="uf" HeaderText="UF" 
                            SortExpression="uf" />
                        <asp:BoundField DataField="formacontratacao" HeaderText="Forma contratação" 
                            SortExpression="formacontratacao" >
                        <ItemStyle HorizontalAlign="Left" />
                        </asp:BoundField>
                        <asp:BoundField DataField="descricao" HeaderText="Descrição" 
                            SortExpression="descricao" >
                        <ItemStyle HorizontalAlign="Left" />
                        </asp:BoundField>
                        <asp:BoundField DataField="qt_evento" HeaderText="Qtde Evento" 
                            SortExpression="qt_evento" >
                        <ItemStyle HorizontalAlign="Right" />
                        </asp:BoundField>
                        <asp:BoundField DataField="qt_benef_fora_per_carencia" 
                            HeaderText="Qt Benef Fora Carência" 
                            SortExpression="qt_benef_fora_per_carencia" >
                        <ItemStyle HorizontalAlign="Right" />
                        </asp:BoundField>
                        <asp:BoundField DataField="tt_Despesa_liq" HeaderText="Total Despesa" 
                            SortExpression="tt_Despesa_liq" DataFormatString="{0:c}" >
                        <ItemStyle HorizontalAlign="Right" />
                        </asp:BoundField>
                        <asp:BoundField DataField="cd_sip" HeaderText="Cód SIP" 
                            SortExpression="cd_sip" />
                    </Columns>
                    <FooterStyle BackColor="#CCCC99" />
                    <HeaderStyle BackColor="#6B696B" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#F7F7DE" ForeColor="Black" HorizontalAlign="Right" />
                    <RowStyle BackColor="#F7F7DE" />
                    <SelectedRowStyle BackColor="#CE5D5A" Font-Bold="True" ForeColor="White" />
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:ConnSip %>" 
                    SelectCommand="select cd_empresa, ano,trimestre,uf,formacontratacao,cd_sip,s.descricao,qt_evento,qt_benef_fora_per_carencia,tt_Despesa_liq from sipXtrimestre st, sip s where s.codigo = st.cd_sip and (([ano] = @ano) AND ([cd_empresa] = @cd_empresa) AND ([trimestre] = @trimestre))  ORDER BY CD_EMPRESA, ANO, TRIMESTRE, FORMACONTRATACAO, S.ID">
                    <SelectParameters>
                        <asp:ControlParameter ControlID="txtAno" Name="ano" PropertyName="Text" 
                            Type="Int32" />
                        <asp:ControlParameter ControlID="cboEmpresa" Name="cd_empresa" 
                            PropertyName="SelectedValue" Type="Int32" />
                        <asp:ControlParameter ControlID="cboTrimestre" Name="trimestre" 
                            PropertyName="SelectedValue" Type="Byte" />
                    </SelectParameters>
                </asp:SqlDataSource>
            </ContentTemplate>
        </asp:UpdatePanel>
    
    </div>
    </form>
</body>
</html>
