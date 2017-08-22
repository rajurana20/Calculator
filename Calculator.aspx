<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Calculator.aspx.cs" Inherits="Calculator.Calculator" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>

            <asp:Label ID="lblScreen" runat="server" text-align="center" BackColor="#999999" BorderColor="#0000CC" BorderStyle="Double" BorderWidth="5px" Font-Bold="True" Font-Names="Algerian" Font-Overline="False" Font-Size="X-Large" ForeColor="Aqua" Height="63px" Text="0" Width="922px" style="text-align: center"></asp:Label>
            <br />
            <br />
            &nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="btn1" runat="server" BackColor="Aqua" Font-Size="XX-Large" Height="45px" OnClick="btn1_Click" OnClientClick="SetNum" Text="1" Width="72px" />
&nbsp;
            <asp:Button ID="btn2" runat="server" BackColor="Aqua" Font-Size="XX-Large" Height="45px" OnClick="btn2_Click" OnClientClick="SetNum" Text="2" Width="72px" />
&nbsp;&nbsp;
            <asp:Button ID="btn3" runat="server" BackColor="Aqua" Font-Size="XX-Large" Height="45px" OnClick="btn3_Click" OnClientClick="SetNum" Text="3" Width="72px" />
&nbsp;&nbsp;
            <asp:Button ID="btn4" runat="server" BackColor="Aqua" Font-Size="XX-Large" Height="45px" OnClick="btn4_Click" OnClientClick="SetNum" Text="4" Width="72px" />
&nbsp;&nbsp;&nbsp;
            <asp:Button ID="btnPlus" runat="server" BackColor="Aqua" Font-Size="XX-Large" Height="45px" OnClick="btn13_Click" OnClientClick="SetOperator" Text="+" Width="72px" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <br />
&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="btn5" runat="server" BackColor="Aqua" Font-Size="XX-Large" Height="45px" OnClick="btn5_Click" OnClientClick="SetNum" Text="5" Width="72px" />
&nbsp;
            <asp:Button ID="btne" runat="server" BackColor="Aqua" Font-Size="XX-Large" Height="45px" OnClick="btne_Click" OnClientClick="SetNum" Text="6" Width="72px" />
&nbsp;&nbsp;
            <asp:Button ID="btn6" runat="server" BackColor="Aqua" Font-Size="XX-Large" Height="45px" OnClick="btn6_Click" OnClientClick="SetNum" Text="7" Width="72px" />
&nbsp;&nbsp;
            <asp:Button ID="btn8" runat="server" BackColor="Aqua" Font-Size="XX-Large" Height="45px" OnClick="btn8_Click" OnClientClick="SetNum" Text="8" Width="72px" />
&nbsp;&nbsp;&nbsp;
            <asp:Button ID="btnMinus" runat="server" BackColor="Aqua" Font-Size="XX-Large" Height="45px" OnClick="btnMinus_Click" OnClientClick="SetOperator" Text="-" Width="72px" />
            <br />
&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="btnt" runat="server" BackColor="Aqua" Font-Size="XX-Large" Height="45px" OnClick="btnt_Click" OnClientClick="SetNum" Text="9" Width="72px" />
&nbsp;
            <asp:Button ID="btn10" runat="server" BackColor="Aqua" Font-Size="XX-Large" Height="45px" OnClick="btn10_Click" OnClientClick="SetNum" Text="0" Width="72px" />
&nbsp;&nbsp;
            <asp:Button ID="btn11" runat="server" BackColor="Aqua" Font-Size="XX-Large" Height="45px" OnClientClick="SetNum" Text="." Width="72px" OnClick="btn11_Click1" />
&nbsp;&nbsp;
            <asp:Button ID="btn15" runat="server" BackColor="Aqua" Font-Size="XX-Large" Height="45px" OnClick="btn15_Click" OnClientClick="SetOperator" Text="*" Width="72px" />
&nbsp;&nbsp;&nbsp;
            <asp:Button ID="btn16" runat="server" BackColor="Aqua" Font-Size="XX-Large" Height="45px" OnClick="btn16_Click" OnClientClick="SetOperator" Text="/" Width="72px" />
            <br />
            <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="btnClear" runat="server" BackColor="Aqua" Font-Size="XX-Large" Height="45px" OnClick="btn17_Click" OnClientClick="SetNum" Text="CLR" Width="72px" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="btnEqual" runat="server" BackColor="Aqua" Font-Size="XX-Large" Height="45px" OnClick="btnEqual_Click" OnClientClick="SetNum" Text="=" Width="72px" />
            <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <br />
&nbsp;&nbsp;&nbsp;&nbsp;
            <br />
            <br />
            <br />
&nbsp;&nbsp;&nbsp;
            <br />
&nbsp;&nbsp;&nbsp;
            <br />

        </div>
    </form>
</body>
</html>
