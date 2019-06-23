<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Search_Blood_Donor.aspx.cs" Inherits="Blood_bank.Search_Blood_Donor" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            height: 448px;
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
            margin-left: 1048px;
            margin-top: 0px;
        }

        .auto-style5 {
            height: 328px;
            margin-top: 72px;
        }

        .auto-style7 {
            margin-left: 140px;
        }

        .auto-style8 {
            margin-left: 161px;
        }

        .auto-style9 {
            margin-left: 119px;
        }

        .auto-style11 {
            margin-left: 318px;
        }
    </style>
</head>
<body style="width: 1316px; height: 452px">
    <form id="form1" runat="server">
        <div class="auto-style1">
            <div class="auto-style2">
                <asp:Image ID="Image1" runat="server" CssClass="auto-style3" Height="42px" ImageUrl="C:\Users\Jubaer Ibnul Atik\source\repos\Blood_Bank_Management_System\Blood_bank\Images\1528893550-blood.jfif" Width="127px" />
                <asp:Button ID="btnLogin" runat="server" CssClass="auto-style4" Text="Log Out" />
                <div class="auto-style5">
                    <asp:Label ID="lblDistrict" runat="server" Text="Select District:"></asp:Label>
                    <asp:DropDownList ID="ddlSelectDistrict" runat="server" AutoPostBack="True" CssClass="auto-style7" OnSelectedIndexChanged="ddlSelectDistrict_SelectedIndexChanged">
                    </asp:DropDownList>
                    <br />
                    <br />
                    <asp:Label ID="lblCity" runat="server" Text="Select City:"></asp:Label>
                    <asp:DropDownList ID="ddlSelectCity" runat="server" AutoPostBack="True" CssClass="auto-style8" OnSelectedIndexChanged="ddlSelectCity_SelectedIndexChanged" Style="height: 22px">
                    </asp:DropDownList>
                    <br />
                    <br />
                    <asp:Label ID="lblBloodType" runat="server" Text="Select Blood Type"></asp:Label>
                    <asp:DropDownList ID="ddlSelectBloodType" runat="server" CssClass="auto-style9" AutoPostBack="True">
                    </asp:DropDownList>
                    <br />
                    <br />
                    <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
                    <br />
                    <br />
                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataSourceID="SqlDataSource1" ForeColor="Black" GridLines="Vertical" CssClass="auto-style11" Width="674px">
                        <AlternatingRowStyle BackColor="White" />
                        <FooterStyle BackColor="#CCCC99" />
                        <HeaderStyle BackColor="#6B696B" Font-Bold="True" ForeColor="White" />
                        <PagerStyle BackColor="#F7F7DE" ForeColor="Black" HorizontalAlign="Right" />
                        <RowStyle BackColor="#F7F7DE" />
                        <SelectedRowStyle BackColor="#CE5D5A" Font-Bold="True" ForeColor="White" />
                        <SortedAscendingCellStyle BackColor="#FBFBF2" />
                        <SortedAscendingHeaderStyle BackColor="#848384" />
                        <SortedDescendingCellStyle BackColor="#EAEAD3" />
                        <SortedDescendingHeaderStyle BackColor="#575357" />
                        <Columns>
                            <asp:BoundField DataField="FullName" HeaderText="FullName" SortExpression="FullName" />
                            <asp:BoundField DataField="MobileNo" HeaderText="MobileNo" SortExpression="MobileNo" />
                            <asp:BoundField DataField="Age" HeaderText="Age" SortExpression="Age" />
                            <asp:BoundField DataField="Gender" HeaderText="Gender" SortExpression="Gender" />
                            <asp:BoundField DataField="Address" HeaderText="Address" SortExpression="Address" />
                        </Columns>
                    </asp:GridView>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="Data Source=DESKTOP-92MIPSK;Initial Catalog=Blood_Bank;Integrated Security=True" ProviderName="System.Data.SqlClient" SelectCommand="SELECT [FullName], [MobileNo], [Age], [Gender], [Address] FROM [Registration_Table] WHERE (([BloodGroup] = @BloodGroup) AND ([UserType] = @UserType) AND ([District] = @District) AND ([City] = @City))">
                        <SelectParameters>
                            <asp:ControlParameter ControlID="ddlSelectBloodType" Name="BloodGroup" PropertyName="SelectedValue" Type="String" />
                            <asp:Parameter DefaultValue="Blood Donor" Name="UserType" Type="String" />
                            <asp:ControlParameter ControlID="ddlSelectDistrict" Name="District" PropertyName="SelectedValue" Type="String" />
                            <asp:ControlParameter ControlID="ddlSelectCity" Name="City" PropertyName="SelectedValue" Type="String" />
                        </SelectParameters>
                    </asp:SqlDataSource>
                    <br />
                    <asp:Label ID="Label2" runat="server"></asp:Label>
                </div>
            </div>
        </div>
    </form>
</body>
</html>
