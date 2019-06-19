<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="Blood_bank.Register" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 1317px;
            height: 862px;
            margin: auto;
        }

        .auto-style2 {
            height: 66px;
            width: 1308px;
        }

        .auto-style3 {
            margin-left: 54px;
            margin-top: 1px;
        }

        .auto-style4 {
            margin-left: 1065px;
            margin-top: 0px;
        }

        .auto-style5 {
            height: 654px;
            margin-top: 48px;
            width: 1311px;
        }

        .auto-style6 {
            width: 689px;
            height: 648px;
            margin-left: 270px;
        }

        .auto-style7 {
            width: 83%;
            height: 424px;
            margin-top: 211px;
            margin-left: 67px;
        }

        .auto-style8 {
            width: 205px;
        }

        .auto-style9 {
            width: 205px;
            height: 23px;
        }

        .auto-style10 {
            height: 23px;
        }

        .auto-style12 {
            width: 208px;
            height: 34px;
            margin-left: 248px;
        }

        .auto-style13 {
            width: 237px;
        }

        .auto-style14 {
            height: 23px;
            width: 237px;
        }

        .auto-style15 {
            margin-left: 308px;
        }

        .auto-style16 {
            margin-top: 17px;
        }

        .auto-style17 {
            margin-top: 23px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="auto-style1">
            <div class="auto-style2">
                <asp:Image ID="Image1" runat="server" CssClass="auto-style3" Height="42px" ImageUrl="C:\Users\Jubaer Ibnul Atik\source\repos\Blood_Bank_Management_System\Blood_bank\Images\1528893550-blood.jfif" Width="127px" />
                <asp:Button ID="btnLogin" runat="server" CssClass="auto-style4" Text="Login" />
                <div class="auto-style5" style="background-image: BLOOD-DONATION-POSTER-SISQ.jpg">
                    <div class="auto-style6">
                        <h2 class="auto-style12">&nbsp;
                            Registration Form
                            <asp:Image ID="ImageRegistration" runat="server" CssClass="auto-style16" Height="150px" Width="203px" ImageUrl="C:\Users\Jubaer Ibnul Atik\source\repos\Blood_Bank_Management_System\Blood_bank\Images\person.jpg" />
                            <asp:FileUpload ID="FileUploadImage" runat="server" CssClass="auto-style17" />
                            <asp:Label ID="ImageMsgID" runat="server"></asp:Label>
                        </h2>
                        <p class="auto-style12">
                            &nbsp;
                        </p>
                        <table class="auto-style7" style="border-style: groove">
                            <tr>
                                <td class="auto-style8">
                                    <asp:Label ID="lblFullName" runat="server" Text="Full Name"></asp:Label>
                                </td>
                                <td class="auto-style13">
                                    <asp:TextBox ID="txtFullName" runat="server"></asp:TextBox>
                                </td>
                                <td>
                                    <asp:RequiredFieldValidator ID="RequiredFullName" runat="server" ControlToValidate="txtFullName" ErrorMessage="Required"></asp:RequiredFieldValidator>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style8">
                                    <asp:Label ID="lblPassword" runat="server" Text="Password"></asp:Label>
                                </td>
                                <td class="auto-style13">
                                    <asp:TextBox ID="txtPassword" runat="server" TextMode="Password" MaxLength="7"></asp:TextBox>
                                </td>
                                <td>
                                    <asp:RequiredFieldValidator ID="RequiredPassword" runat="server" ControlToValidate="txtPassword" ErrorMessage="Required"></asp:RequiredFieldValidator>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style8">
                                    <asp:Label ID="lblConfirmPassword" runat="server" Text="Confirm Password"></asp:Label>
                                </td>
                                <td class="auto-style13">
                                    <asp:TextBox ID="txtConfirmPassword" runat="server" TextMode="Password"></asp:TextBox>
                                </td>
                                <td>
                                    <asp:RequiredFieldValidator ID="RequiredConfirmPassword" runat="server" ControlToValidate="txtConfirmPassword" ErrorMessage="Required"></asp:RequiredFieldValidator>
                                    <asp:CompareValidator ID="cmpValidConfirmPassword" runat="server" ControlToCompare="txtPassword" ControlToValidate="txtConfirmPassword" ErrorMessage="Does not match with Password"></asp:CompareValidator>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style8">
                                    <asp:Label ID="lblEmail" runat="server" Text="Email"></asp:Label>
                                </td>
                                <td class="auto-style13">
                                    <asp:TextBox ID="txtEmail" runat="server" TextMode="Email"></asp:TextBox>
                                </td>
                                <td>
                                    <asp:RequiredFieldValidator ID="RequiredEmail" runat="server" ControlToValidate="txtEmail" ErrorMessage="Required"></asp:RequiredFieldValidator>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style8">
                                    <asp:Label ID="lblMobileNo" runat="server" Text="Mobile No"></asp:Label>
                                </td>
                                <td class="auto-style13">
                                    <asp:TextBox ID="txtMobileNo" runat="server" TextMode="Number"></asp:TextBox>
                                </td>
                                <td>
                                    <asp:RequiredFieldValidator ID="RequiredMobileNo" runat="server" ControlToValidate="txtMobileNo" ErrorMessage="Required"></asp:RequiredFieldValidator>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style8">
                                    <asp:Label ID="lblAge" runat="server" Text="Age"></asp:Label>
                                </td>
                                <td class="auto-style13">
                                    <asp:TextBox ID="txtAge" runat="server" MaxLength="2" TextMode="Number"></asp:TextBox>
                                </td>
                                <td>
                                    <asp:RequiredFieldValidator ID="RequiredAge" runat="server" ControlToValidate="txtAge" ErrorMessage="Required"></asp:RequiredFieldValidator>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style8">
                                    <asp:Label ID="lblGender" runat="server" Text="Gender"></asp:Label>
                                </td>
                                <td class="auto-style13">
                                    <asp:RadioButton ID="RbtnMale" runat="server" Checked="True" GroupName="Gender" OnCheckedChanged="RadioButton1_CheckedChanged" Text="Male" />
                                    <asp:RadioButton ID="RbtnFemale" runat="server" GroupName="Gender" Text="Female" />
                                </td>
                                <td>&nbsp;</td>
                            </tr>
                            <tr>
                                <td class="auto-style8">
                                    <asp:Label ID="lblBloodGroup" runat="server" Text="Blood Group"></asp:Label>
                                </td>
                                <td class="auto-style13">
                                    <asp:DropDownList ID="ddlBloodType" runat="server" Height="16px" Width="128px">
                                    </asp:DropDownList>
                                </td>
                                <td>
                                    <asp:RequiredFieldValidator ID="RequiredBloodGrp" runat="server" ControlToValidate="ddlBloodType" ErrorMessage="Required"></asp:RequiredFieldValidator>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style8">
                                    <asp:Label ID="lblUserType" runat="server" Text="User Type"></asp:Label>
                                </td>
                                <td class="auto-style13">
                                    <asp:DropDownList ID="ddlUserType" runat="server" Height="22px" Width="130px">
                                        <asp:ListItem Selected="True">blood Donor</asp:ListItem>
                                        <asp:ListItem>Blood Receiver</asp:ListItem>
                                    </asp:DropDownList>
                                </td>
                                <td>
                                    <asp:RequiredFieldValidator ID="RequiredDdlUserType" runat="server" ControlToValidate="ddlUserType" ErrorMessage="Required"></asp:RequiredFieldValidator>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style8">
                                    <asp:Label ID="lblHeight" runat="server" Text="Height(in cm)"></asp:Label>
                                </td>
                                <td class="auto-style13">
                                    <asp:TextBox ID="txtHeight" runat="server" TextMode="Number"></asp:TextBox>
                                </td>
                                <td>
                                    <asp:RequiredFieldValidator ID="RequiredHeight" runat="server" ControlToValidate="txtHeight" ErrorMessage="Required"></asp:RequiredFieldValidator>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style8">
                                    <asp:Label ID="lblWeight" runat="server" Text="Weight(in kg)"></asp:Label>
                                </td>
                                <td class="auto-style13">
                                    <asp:TextBox ID="txtWeight" runat="server" TextMode="Number"></asp:TextBox>
                                </td>
                                <td>
                                    <asp:RequiredFieldValidator ID="RequiredWeight" runat="server" ControlToValidate="txtWeight" ErrorMessage="Required"></asp:RequiredFieldValidator>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style8">
                                    <asp:Label ID="lblDistrict" runat="server" Text="District"></asp:Label>
                                </td>
                                <td class="auto-style13">
                                    <asp:DropDownList ID="ddlDistrict" runat="server" Height="18px" Width="130px" AutoPostBack="True" OnSelectedIndexChanged="ddlDistrict_SelectedIndexChanged1">
                                    </asp:DropDownList>
                                </td>
                                <td>
                                    <asp:RequiredFieldValidator ID="RequiredDistrict" runat="server" ControlToValidate="ddlDistrict" ErrorMessage="RequiredFieldValidator">Required</asp:RequiredFieldValidator>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style8">
                                    <asp:Label ID="lblCity" runat="server" Text="City"></asp:Label>
                                </td>
                                <td class="auto-style13">
                                    <asp:DropDownList ID="ddlCity" runat="server" Height="16px" Width="129px">
                                    </asp:DropDownList>
                                </td>
                                <td>
                                    <asp:RequiredFieldValidator ID="RequiredCity" runat="server" ControlToValidate="ddlCity" ErrorMessage="RequiredFieldValidator">Required</asp:RequiredFieldValidator>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style9">
                                    <asp:Label ID="lblAddress" runat="server" Text="Address"></asp:Label>
                                </td>
                                <td class="auto-style14">
                                    <asp:TextBox ID="txtAddress" runat="server" TextMode="MultiLine"></asp:TextBox>
                                </td>
                                <td class="auto-style10">
                                    <asp:RequiredFieldValidator ID="RequiredAddress" runat="server" ControlToValidate="txtAddress" ErrorMessage="Required"></asp:RequiredFieldValidator>
                                </td>
                            </tr>
                        </table>
                        <br />
                        <asp:Button ID="btnRegister" runat="server" CssClass="auto-style15" Text="Register" OnClick="btnRegister_Click" Height="26px" Width="70px" />
                        <br />
                        <asp:Label ID="lblRegister" runat="server"></asp:Label>
                    </div>
                </div>
            </div>
        </div>
    </form>
</body>
</html>
