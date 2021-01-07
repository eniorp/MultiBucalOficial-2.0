<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Button" />
    
        <br />
        <br />
        <asp:Button ID="Button2" runat="server" Text="Lilsta certificados do windows" OnClick="Button2_Click" />
    
    </div>
        <asp:ListBox ID="ListBox1" runat="server" Height="202px" Width="615px"></asp:ListBox>
        <p>
            <asp:Button ID="Button3" runat="server" Text="Esse tá mais adiantando---Testa Classe AssinaXML" OnClick="Button3_Click" />
        </p>
        <p>
            <asp:TextBox ID="TextBox1" runat="server" Width="285px"></asp:TextBox>
        </p>
        <asp:Button ID="Button4" runat="server" OnClick="Button4_Click" Text="Button" Width="366px" />
    </form>
</body>
</html>
