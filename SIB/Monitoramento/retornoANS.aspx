
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
    <asp:Label ID="Label1" runat="server" ForeColor="Red" ></asp:Label>
    <br />
    <fieldset>
        <legend>Selecione o arquivo</legend>
    

        Selecione o arquivo:
        <asp:FileUpload ID="FileUpload1" runat="server" />
        
        
        <asp:Button ID="Button1" runat="server" Text="Processar retorno" Width="154px" OnClick="Button1_Click" />
    </fieldset>    
    <hr />
    <p>
        Pesquisar erros do Período/lote :
        <asp:TextBox ID="TextBox1" runat="server" Width="60px"></asp:TextBox>
        <asp:TextBox ID="TextBox2" runat="server" ToolTip="numero do lote" Width="46px"></asp:TextBox>
&nbsp;<asp:Button ID="Button2" runat="server" Text="Pesquisar" Width="70px" OnClick="Button2_Click" />
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:BoundField DataField="orcamento" HeaderText="orcamento" InsertVisible="False" ReadOnly="True" SortExpression="orcamento" />
                <asp:BoundField DataField="tipo" HeaderText="tipo" SortExpression="tipo" />
                <asp:BoundField DataField="cd_erro" HeaderText="cd_erro" SortExpression="cd_erro" />
                <asp:BoundField DataField="ds_erro" HeaderText="ds_erro" SortExpression="ds_erro" />
                <asp:BoundField DataField="cd_usuario" HeaderText="cd_usuario" SortExpression="cd_usuario" />
                <asp:BoundField DataField="usuario" HeaderText="usuario" SortExpression="usuario" />
                <asp:BoundField DataField="codigo" HeaderText="codigo" SortExpression="codigo" />
                <asp:BoundField DataField="dentista" HeaderText="dentista" SortExpression="dentista" />
            </Columns>
            <EditRowStyle BackColor="#2461BF" />
            <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#EFF3FB" />
            <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
            <SortedAscendingCellStyle BackColor="#F5F7FB" />
            <SortedAscendingHeaderStyle BackColor="#6D95E1" />
            <SortedDescendingCellStyle BackColor="#E9EBEF" />
            <SortedDescendingHeaderStyle BackColor="#4870BE" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnSIB %>" SelectCommand="select distinct o.numero orcamento , em.tipo, em.cd_erro, e.ds_erro, u.Codigo_Completo cd_usuario, u.nome usuario , d.codigo, d.nome dentista from erroMonitoramento em, erroANS e, orcamento o, usuario u , dentista d 
where mesano = 
@mesAno
            and nr_lote = @nr_lote
and e.cd_erro = em.cd_erro 
and o.numero = em.orcamento
and u.Codigo_Completo = o.Usuario
and d.codigo = o.dentista
">
            <SelectParameters>
                <asp:ControlParameter ControlID="TextBox1"  Name="mesAno" PropertyName="Text" />
                <asp:ControlParameter ControlID="TextBox2"  Name="nr_lote" PropertyName="Text" />
            </SelectParameters>
        </asp:SqlDataSource>
    </p>
</asp:Content>