<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="Blood_bank.Home" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            height: 601px;
            width: 1317px;
            margin: auto;
        }

        .auto-style2 {
            height: 54px;
            width: 1314px;
        }

        .auto-style3 {
            margin-left: 54px;
            margin-top: 1px;
        }

        .auto-style4 {
            margin-left: 972px;
            margin-top: 0px;
        }

        .auto-style5 {
            margin-left: 36px;
        }

        .auto-style6 {
            height: 490px;
            margin-top: 59px;
            width: 984px;
            float: left;
            margin-left: 17px;
        }

        .auto-style9 {
            height: 358px;
            width: 293px;
            margin-left: 22px;
            margin-top: 139px;
            float: left;
        }

        .auto-style10 {
            width: 100%;
            height: 142px;
            margin-top: 23px;
        }

        .auto-style11 {
            width: 96px;
        }

        .auto-style12 {
            width: 145px;
        }

        .auto-style13 {
            margin-top: 0px;
        }
        .auto-style15 {
            height: 96px;
            margin-left: 42px;
            margin-top: 26px;
        }
        .auto-style16 {
            margin-left: 132px;
        }
        .auto-style17 {
            margin-top: 31px;
        }
        .auto-style18 {
            margin-left: 202px;
            margin-top: 0px;
        }
        .auto-style19 {
            margin-left: 157px;
            margin-top: 0px;
        }
    </style>
</head>
<body style="height: 731px; width: 1322px;">
    <form id="form1" runat="server">
        <div class="auto-style1" style="margin: auto">
            <div class="auto-style2">
                <asp:Image ID="Image1" runat="server" CssClass="auto-style3" Height="42px" ImageUrl="C:\Users\Jubaer Ibnul Atik\source\repos\Blood_Bank_Management_System\Blood_bank\Images\1528893550-blood.jfif" Width="127px" />
                <asp:Button ID="btnLogin" runat="server" CssClass="auto-style4" Text="Login" />
                <asp:Button ID="btnRegister" runat="server" CssClass="auto-style5" Text="Register" />
            </div>
            <div class="auto-style6">
                <asp:ScriptManager ID="ScriptManager1" runat="server">
                </asp:ScriptManager>
                <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                    <ContentTemplate>
                        <asp:Timer ID="Timer1" runat="server" Interval="2000" OnTick="Timer1_Tick"></asp:Timer>
                        <asp:Image ID="ImageSlide" runat="server" />
                    </ContentTemplate>
                </asp:UpdatePanel>
            </div>
            <div class="auto-style9">
                <table class="auto-style10" border="0">
                    <tr>
                        <td class="auto-style11">
                            <asp:Label ID="lblUsername" runat="server" Text="Username"></asp:Label>
                        </td>
                        <td class="auto-style12">
                            <asp:TextBox ID="txtUsername" runat="server"></asp:TextBox>
                        </td>
                        <td>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtUsername" ErrorMessage="*"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style11">
                            <asp:Label ID="lblPassword" runat="server" Text="Password"></asp:Label>
                        </td>
                        <td class="auto-style12">
                            <asp:TextBox ID="txtPassword" runat="server" MaxLength="7" TextMode="Password"></asp:TextBox>
                        </td>
                        <td>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtPassword" ErrorMessage="*"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style11">&nbsp;</td>
                        <td class="auto-style12">
                            <asp:Button ID="Button1" runat="server" Text="Submit" Width="98px" />
                        </td>
                        <td>&nbsp;</td>
                    </tr>
                    <asp:Label ID="Label1" runat="server" CssClass="auto-style13" Text="Login"></asp:Label>
                </table>
            </div>            
        </div>
        <div class="auto-style15">
            <asp:Button ID="btnSearchBloodDonor" runat="server" CssClass="auto-style17" Height="60px" Text="Search Blood Donor" Width="148px" />
            <asp:Button ID="btnRequestForBloodDonation" runat="server" CssClass="auto-style16" Height="59px" Text="Request For Blood Donation" Width="192px" />
            <asp:Button ID="btnBloodBankStock" runat="server" CssClass="auto-style19" Height="58px" Text="Blood Bank Stock" Width="145px" />
            <asp:Button ID="btnRequestForBlood" runat="server" CssClass="auto-style18" Height="56px" Text="Request For Blood" Width="180px" />
        </div>
    </form>
</body>
</html>
