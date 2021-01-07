<%@ Page Language="C#" AutoEventWireup="true" CodeFile="graficos.aspx.cs" Inherits="Default2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <br />
            <asp:Chart ID="Chart3" runat="server" DataSourceID="sdsGrafico2" Width="588px">
                <Series>
                    <asp:Series Name="Enio" XValueMember="mes" YValueMembers="Enio" Legend="Legend1">
                    </asp:Series>
                    <asp:Series ChartArea="ChartArea1" Name="Zanja" XValueMember="mes" YValueMembers="Zanja" Legend="Legend1">
                    </asp:Series>
                    <asp:Series ChartArea="ChartArea1" Name="Miga" XValueMember="mes" YValueMembers="Miguel" Legend="Legend1">
                    </asp:Series>
                    <asp:Series ChartArea="ChartArea1" Name="Theo" XValueMember="mes" YValueMembers="Theo" Legend="Legend1">
                    </asp:Series>
                </Series>
                <ChartAreas>
                    <asp:ChartArea Name="ChartArea1">
                    </asp:ChartArea>
                </ChartAreas>
                <Legends>
                    <asp:Legend Name="Legend1">
                    </asp:Legend>
                </Legends>
            </asp:Chart>
            <asp:SqlDataSource ID="sdsGrafico2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnSIB %>" SelectCommand="select * from ##graficos2"></asp:SqlDataSource>
            <br />
            <br />
        </div>
    </form>
</body>
</html>
