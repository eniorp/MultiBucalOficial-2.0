<%@ Page Language="C#" AutoEventWireup="true" CodeFile="GraficoVendas.aspx.cs" Inherits="graficos_GraficoVendas" %>

<%@ Register assembly="System.Web.DataVisualization, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35" namespace="System.Web.UI.DataVisualization.Charting" tagprefix="asp" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Chart ID="Chart1" runat="server" DataSourceID="sdsVendas" Width="776px">
                <series>
                    <asp:Series IsValueShownAsLabel="True" Legend="Legend1" Name="Series1" XValueMember="anostr" YValueMembers="qtde">
                    </asp:Series>
                </series>
                <chartareas>
                    <asp:ChartArea Name="ChartArea1">
                        <AxisY Title="Representantes">
                        </AxisY>
                        <AxisX Title="Meses">
                        </AxisX>
                    </asp:ChartArea>
                </chartareas>
                <Legends>
                    <asp:Legend Name="Legend1">
                    </asp:Legend>
                </Legends>
                <Titles>
                    <asp:Title Name="Titulo do grafico">
                    </asp:Title>
                </Titles>
            </asp:Chart>
            <asp:SqlDataSource ID="sdsVendas" runat="server" ConnectionString="<%$ ConnectionStrings:ConnSIB %>" SelectCommand="set dateformat dmy select 
replicate('0',2 - LEN(month(u.dt_venda))) + cast(MONTH(u.dt_venda) as varchar(2)) + '/' +
cast(year(u.dt_venda) as varchar(4)) anostr, 
YEAR(u.dt_venda) ano,
MONTH(u.dt_venda) mes, YEAR(u.dt_venda) ano, v.representante, r.nome nmRepresentante, count(*) qtde 
from usuario u , vendedor v,representante r  where
r.codigo = v.representante and v.codigo = u.vendedor and u.dt_venda between '01/01/2017' and '31/03/2017 23:59'
group by v.representante, r.nome, MONTH(u.dt_venda) , YEAR(u.dt_venda) 
order by ano,mes,v.representante
--tb usuario
--select * from tb representante"></asp:SqlDataSource>
        </div>
    </form>
</body>
</html>
