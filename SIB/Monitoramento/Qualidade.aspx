<%@ Page Title="" Language="C#" MasterPageFile="~/Monitoramento/MasterPage.master" AutoEventWireup="true" CodeFile="Qualidade.aspx.cs" Inherits="Monitoramento_Qualidade" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
    <h4 class="text-center"> <u>Importação de arquivo de qualidade - Monitoramento ANS </u></h4>

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
                <asp:Button CssClass="btn btn-primary align-bottom" ID="Button2" runat="server" Visible="false" Text="Importar" OnClick="Button2_Click"  />
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
            <asp:SqlDataSource ID="sdsDtProcessamento" runat="server" ConnectionString="<%$ ConnectionStrings:ConnSIB %>" SelectCommand="select distinct CONVERT(char(10),dtregistro,103) dtProcessamento from errosQualidadeANS order by dtProcessamento desc"></asp:SqlDataSource>
                
            </div>
            </div>


            
        <div class="row">
            

            <asp:GridView CssClass="table table-striped " Font-Size="X-Small" ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="mesAno,nr_lote,orcamento,sequencial" DataSourceID="sdsErroQualidade">
                <Columns>
                    <asp:BoundField DataField="mesAno" HeaderText="Período" ReadOnly="True" SortExpression="mesAno" />
                    <asp:BoundField DataField="nr_lote" HeaderText="Lote" ReadOnly="True" SortExpression="nr_lote" />
                    <asp:BoundField DataField="orcamento" HeaderText="Orçamento" ReadOnly="True" SortExpression="orcamento" />
                    <asp:BoundField DataField="sequencial" HeaderText="Seq" ReadOnly="True" SortExpression="sequencial" />
                    <asp:BoundField DataField="cdErro" HeaderText="Erro" SortExpression="cdErro" />
                    <asp:BoundField DataField="ds_erro" HeaderText="Descrição Erro" SortExpression="ds_erro" />
                    <asp:BoundField DataField="dsCampo" HeaderText="Campo Erro" SortExpression="dsCampo" />
                    <asp:BoundField DataField="dtRegistro" HeaderText="Dt Registro" SortExpression="dtRegistro" />
                    <asp:BoundField DataField="dsObservacao" HeaderText="Observação" SortExpression="dsObservacao" />
                    
                    
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="sdsErroQualidade" runat="server" ConnectionString="<%$ ConnectionStrings:ConnSIB %>" SelectCommand="set dateformat dmy select eq.*, ea.ds_erro, cm.dsCampo from errosQualidadeAns eq 
left join  erroAns ea on eq.cdErro = ea.cd_erro
left join  camposMonit cm on  cm.cdCampo = eq.campoErro
where eq.dtRegistro between @dtini and @dtFim + ' 23:59:59'
order by convert(date,eq.dtRegistro) desc, eq.mesano">
                <SelectParameters>
                    <asp:ControlParameter ControlID="DropDownList1" DefaultValue="01/01/1980" Name="dtini" PropertyName="SelectedValue" />
                    <asp:ControlParameter ControlID="DropDownList1" DefaultValue="01/01/1980" Name="dtFim" PropertyName="SelectedValue" />
                </SelectParameters>
            </asp:SqlDataSource>

        </div>

  </div>
        
        
        

    

</asp:Content>

