<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Reports.aspx.cs" Inherits="RMS3.Reports" %>

<%@ Register src="NewUserControl.ascx" tagname="NewUserControl" tagprefix="uc2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
    <style type="text/css">
        .style3
        {
            width: 134px;
        }
        .style4
        {
            width: 223px;
        }
        .style7
        {
            width: 134px;
            height: 34px;
        }
        .style8
        {
            width: 223px;
            height: 34px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Panel ID="Panel1" runat="server" BackColor="White" CssClass="Dashboard" 
            Width="1172px" Height="1700px">
            <asp:Image ID="Image2" runat="server" 
    ImageUrl="~/Images/DashboardNew.jpg" />
    
             
            
                     <div class="Sidebar">
            </div>


                     <br />
            <br />
            <br />
            <div class="ReportsScreen" style="width: 790px; height: 116px">
                <table style="border-width: medium; border-style: groove; width: 100%; height: 112px; font-family: 'Myriad Pro'; font-size: medium; font-weight: bold;">
                    <tr>
                        <td class="style3" style="border-style: groove">
                            &nbsp;</td>
                        <td class="style3" style="border-style: groove">
                            Today</td>
                        <td class="style3" style="border-style: groove">
                            This Week</td>
                        <td class="style3" style="border-style: groove">
                            This Month</td>
                        <td class="style4" style="border-style: groove">
                            This Quarter</td>
                    </tr>
                    <tr>
                        <td class="style7" style="border-style: groove">
                            Total Amount</td>
                        <td class="style7" style="border-style: groove">
                            <asp:Label ID="Label8" runat="server" Text="Label"></asp:Label>
                        </td>
                        <td class="style7" style="border-style: groove">
                            <asp:Label ID="Label9" runat="server" Text="Label"></asp:Label>
                        </td>
                        <td class="style7" style="border-style: groove">
                            <asp:Label ID="Label10" runat="server" Text="Label"></asp:Label>
                        </td>
                        <td class="style8" style="border-style: groove">
                            <asp:Label ID="Label11" runat="server" Text="Label"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="style7" style="border-style: groove">
                            Total Customers</td>
                        <td class="style7" style="border-style: groove">
                            <asp:Label ID="Label12" runat="server" Text="Label"></asp:Label>
                        </td>
                        <td class="style7" style="border-style: groove">
                            <asp:Label ID="Label13" runat="server" Text="Label"></asp:Label>
                        </td>
                        <td class="style7" style="border-style: groove">
                            <asp:Label ID="Label14" runat="server" Text="Label"></asp:Label>
                        </td>
                        <td class="style8" style="border-style: groove">
                            <asp:Label ID="Label15" runat="server" Text="Label"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="style7" style="border-style: groove">
                            Total Products Sold</td>
                        <td class="style7" style="border-style: groove">
                            <asp:Label ID="Label16" runat="server" Text="Label"></asp:Label>
                        </td>
                        <td class="style7" style="border-style: groove">
                            <asp:Label ID="Label17" runat="server" Text="Label"></asp:Label>
                        </td>
                        <td class="style7" style="border-style: groove">
                            <asp:Label ID="Label18" runat="server" Text="Label"></asp:Label>
                        </td>
                        <td class="style8" style="border-style: groove">
                            <asp:Label ID="Label19" runat="server" Text="Label"></asp:Label>
                        </td>
                    </tr>
                </table>
            </div>
            &nbsp;<br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <asp:Label ID="Label1" runat="server" Font-Bold="True" 
                style="font-size: medium" Text="Category"></asp:Label>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="Label2" runat="server" 
                style="font-size: medium; font-weight: 700" Text="Sub-Category"></asp:Label>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="Label6" runat="server" 
                style="font-size: medium; font-weight: 700" Text="Enter Specific Product ID"></asp:Label>
            <br />
            <asp:DropDownList ID="DropDownList2" runat="server" AutoPostBack="True" 
                Height="33px" onselectedindexchanged="DropDownList2_SelectedIndexChanged" 
                Width="242px">
                <asp:ListItem></asp:ListItem>
                <asp:ListItem>Beauty &amp; Personal Care</asp:ListItem>
                <asp:ListItem>Home &amp; Kitchen</asp:ListItem>
                <asp:ListItem>Clothing</asp:ListItem>
                <asp:ListItem>Phones &amp; Computers</asp:ListItem>
                <asp:ListItem>TV,Audio &amp; Video</asp:ListItem>
                <asp:ListItem>Food &amp; Beverages</asp:ListItem>
            </asp:DropDownList>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:DropDownList ID="DropDownList3" runat="server" AutoPostBack="True" 
                Height="33px" Width="267px" 
                onselectedindexchanged="DropDownList3_SelectedIndexChanged">
                <asp:ListItem></asp:ListItem>
                <asp:ListItem Enabled="False">Fragrances</asp:ListItem>
                <asp:ListItem Enabled="False">Hair Care</asp:ListItem>
                <asp:ListItem Enabled="False">Healthcare Devices</asp:ListItem>
                <asp:ListItem Enabled="False">Beauty Accessories</asp:ListItem>
                <asp:ListItem Enabled="False">Body &amp; Skin Care</asp:ListItem>
                <asp:ListItem Enabled="False">Airconditioners</asp:ListItem>
                <asp:ListItem Enabled="False">Vacuum Cleaners</asp:ListItem>
                <asp:ListItem Enabled="False">Mixer,Juicer,Grinder</asp:ListItem>
                <asp:ListItem Enabled="False">Washing Machines &amp; Dryers</asp:ListItem>
                <asp:ListItem Enabled="False">Refrigerators</asp:ListItem>
                <asp:ListItem Enabled="False">Microwave Ovens</asp:ListItem>
                <asp:ListItem Enabled="False">T-Shirts</asp:ListItem>
                <asp:ListItem Enabled="False">Shirts</asp:ListItem>
                <asp:ListItem Enabled="False">Seasonal Wear</asp:ListItem>
                <asp:ListItem Enabled="False">Jeans</asp:ListItem>
                <asp:ListItem Enabled="False">Innerwear</asp:ListItem>
                <asp:ListItem Enabled="False">Mobile</asp:ListItem>
                <asp:ListItem Enabled="False">Landline Phones</asp:ListItem>
                <asp:ListItem Enabled="False">Laptops</asp:ListItem>
                <asp:ListItem Enabled="False">Desktops</asp:ListItem>
                <asp:ListItem Enabled="False">Tablets</asp:ListItem>
                <asp:ListItem Enabled="False">TVs</asp:ListItem>
                <asp:ListItem Enabled="False">Home Theaters</asp:ListItem>
                <asp:ListItem Enabled="False">Video Players</asp:ListItem>
                <asp:ListItem Enabled="False">Audio Players</asp:ListItem>
                <asp:ListItem Enabled="False">Masalas</asp:ListItem>
                <asp:ListItem Enabled="False">Oils</asp:ListItem>
                <asp:ListItem Enabled="False">Grains</asp:ListItem>
                <asp:ListItem Enabled="False">Spices</asp:ListItem>
                <asp:ListItem Enabled="False">Packaged Foods</asp:ListItem>
                <asp:ListItem Enabled="False">Pulses</asp:ListItem>
                <asp:ListItem Enabled="False">Aerated Drinks</asp:ListItem>
                <asp:ListItem Enabled="False">Dairy Products</asp:ListItem>
            </asp:DropDownList>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            <br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br />
            <asp:Label ID="Label7" runat="server" 
                style="font-size: medium; font-weight: 700" Text="Product Name"></asp:Label>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="Label20" 
                runat="server" style="font-weight: 700; font-size: medium" Text="Company Name"></asp:Label>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <br />
            <asp:DropDownList ID="DropDownList4" runat="server" AutoPostBack="True" 
                Height="28px" Width="242px">
            </asp:DropDownList>
            <asp:Image ID="Image3" runat="server" CssClass="Rod" Height="200px" 
                ImageUrl="~/Images/HorizontalRod.png" Width="45px" />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="Button2" runat="server" onclick="Button2_Click" Text="Check" />
            <br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="Button1" runat="server" Text="Search" onclick="Button1_Click" />
            <br />
            <asp:Label ID="Label4" runat="server" 
                style="font-size: medium; font-weight: 700" Text="Specification"></asp:Label>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="Label5" runat="server" 
                style="font-size: medium; font-weight: 700" Text="Color"></asp:Label>
            <br />
            <asp:DropDownList ID="DropDownList5" runat="server" Height="29px" Width="245px">
            </asp:DropDownList>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:DropDownList ID="DropDownList6" runat="server" Height="30px" Width="243px">
            </asp:DropDownList>
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <div class="DetailedReports">
                <asp:Panel ID="Panel2" runat="server" Height="475px" ScrollBars="Auto" 
                    Width="543px">
                    <br />
                    <asp:GridView ID="GridView1" runat="server" AllowSorting="True" CellPadding="4" 
                        ForeColor="#333333" GridLines="None" ShowFooter="True">
                        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                        <EditRowStyle BackColor="#999999" />
                        <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                        <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                        <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                        <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                        <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                        <SortedAscendingCellStyle BackColor="#E9E7E2" />
                        <SortedAscendingHeaderStyle BackColor="#506C8C" />
                        <SortedDescendingCellStyle BackColor="#FFFDF8" />
                        <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
                    </asp:GridView>
                </asp:Panel>
            </div>
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <uc2:NewUserControl ID="NewUserControl1" runat="server" />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />


                     </asp:Panel>
</asp:Content>
