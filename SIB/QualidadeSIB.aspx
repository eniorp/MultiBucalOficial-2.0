<%@ Page Title="" Language="C#" MasterPageFile="~/Monitoramento/MasterPage.master" AutoEventWireup="true" CodeFile="QualidadeSIB.aspx.cs" Inherits="Monitoramento_Qualidade" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
    <h4 class="text-center"> <u>Importação de arquivo de qualidade - SIB </u></h4>

    <div class="container">

        <div runat="server" id="divModal" visible="false" class="row">
            <div class="col-12">
                <div class="modal">
                    <div class="modal-dialog" role="document">
                         <div class="modal-content" >
                             <div class="modal-header">
                                  <h5 class="modal-title" >Importação de Arquivo de qualidade</h5>
                                  <button type="button" class="close" data-dismiss="modal" aria-label="Fechar" >
                                      <span aria-hidden="true" >&times;</span>
                                  </button>
                             </div>
                             <div class="modal-body">
                                 <p runat="server" id="paragModal">Arquivo(s) importado(s) com sucesso! Gere novamente os arquivos do período para envio à ANS</p>
                             </div>
                             <div class="modal-footer">
                                 
                                 <button type="button" class="btn btn-danger" data-dismiss="modal">Fechar</button>
                             </div>
                         </div>
                    </div>
                </div>
                
            </div>
        </div>

        <div class="row my-5">
            <div class="col-9 ">
                        <label for="inputEmail1">Selecione o arquivo:</label>
                        <asp:FileUpload AllowMultiple="true"  placeholder="selecione o arquivo" CssClass="form-control btn " ID="FileUpload1" runat="server" />
            </div>
            <div class="col-1 ">
                <label for="Button1">&nbsp; </label>
                <asp:Button CssClass="btn btn-primary align-bottom" ID="Button1" runat="server" Text="Importar" OnClick="Button1_Click" />
                
            </div>        
        </div>
        <div runat="server" id="divAlert" visible="false" class="row m-2">
            <div class="col-9">
                <div class="alert alert-danger alert-dismissible fade show " role="alert">
                    <button type="button" class="close" data-dismiss="alert" aria-label="Fechar">
                        <span aria-hidden="true">&times;</span>
                    </button>
                    <p><asp:Label ID="Label1" runat="server" ></asp:Label></p>
                </div>
            </div>
        </div>
        <hr />
        <div class="row mb-3">
            <div class="col-4 text-right">
                Escolha a data de processamento
            </div>
            <div class="col-4">
            <asp:DropDownList ID="DropDownList1"  runat="server" DataSourceID="sdsDtProcessamento" DataTextField="dtProcessamento" DataValueField="dtProcessamento" AutoPostBack="True" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">
            </asp:DropDownList>
            <asp:SqlDataSource ID="sdsDtProcessamento" runat="server" ConnectionString="<%$ ConnectionStrings:ConnSIB %>" SelectCommand="select distinct CONVERT(char(10),dtProcessamento,103) dtProcessamento from qualidadeSib order by dtProcessamento desc"></asp:SqlDataSource>
                
            </div>
            </div>


            
        <div class="row">
            

            <asp:GridView CssClass="table table-striped " Font-Size="X-Small" ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="sdsErroQualidadeSIB">
                <Columns>
                    <asp:BoundField DataField="erro" HeaderText="Erro" ReadOnly="True" SortExpression="erro" />
                    <asp:BoundField DataField="dtProcessamento" HeaderText="Data" ReadOnly="True" SortExpression="dtProcessamento" />
                    <asp:BoundField DataField="nmArquivo" HeaderText="Arquivo" ReadOnly="True" SortExpression="nmArquivo" />
                    <asp:BoundField DataField="codigo_completo" HeaderText="Cód Usuário" ReadOnly="True" SortExpression="codigo_completo" />
                    <asp:BoundField DataField="nome" HeaderText="Nome" SortExpression="nome" />
                    <asp:BoundField DataField="data_nascimento" HeaderText="Nascimento" SortExpression="data_nascimento" />
                    <asp:BoundField DataField="codigo_ans" HeaderText="Cód ANS" SortExpression="codigo_ans" />
                    <asp:BoundField DataField="cpf" HeaderText="CPF" SortExpression="cpf" />
                    <asp:BoundField DataField="cco" HeaderText="cco" SortExpression="cco" />
                    <asp:BoundField DataField="plano" HeaderText="plano" SortExpression="plano" />
                    
                    
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="sdsErroQualidadeSIB" runat="server" ConnectionString="<%$ ConnectionStrings:ConnSIB %>" SelectCommand="set dateformat dmy 
            select q.erro, q.dtProcessamento, q.nmARquivo, u.Codigo_Completo, u.Nome, u.Data_Nascimento, u.cd_sus as codigo_ans, u.CPF, u.cco, p.codigo_Susep as plano  from  qualidadeSib q, Usuario u, Contratante c, plano p where p.codigo = c.plano and c.codigo = u.codigo and u.Codigo_Completo = q.cdUsuario and Data_Exclusao is null
            and q.dtProcessamento between @dtini and @dtFim + ' 23:59:59'
            order by convert(date,q.dtProcessamento) desc">
                <SelectParameters>
                    <asp:ControlParameter ControlID="DropDownList1" DefaultValue="01/01/1980" Name="dtini" PropertyName="SelectedValue" />
                    <asp:ControlParameter ControlID="DropDownList1" DefaultValue="01/01/1980" Name="dtFim" PropertyName="SelectedValue" />
                </SelectParameters>
            </asp:SqlDataSource>

        </div>

  </div>
        
        
        

    

</asp:Content>

