<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Planning.aspx.cs" Inherits="RMS3.Planning" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
    <style type="text/css">
        .style1
        {
            font-weight: 700;
            font-size: medium;
        }
        .style2
        {}
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<asp:Panel ID="Panel1" runat="server" BackColor="White" CssClass="Dashboard" 
            Width="1172px">
            <asp:Image ID="Image2" runat="server" 
    ImageUrl="~/Images/DashboardNew.jpg" />
            <asp:Panel ID="Panel2" runat="server" 
                style="position:absolute; top: 62px; left: 4px; height: 400px; width: 1161px;">
                <asp:Label ID="Label1" runat="server" CssClass="style1" Text="Statistics"></asp:Label>
                <br />
                <br />
                <asp:Label ID="Label2" runat="server" Text="Category" style="position:absolute"  ></asp:Label>
                <br />
                <br />
                <asp:Label ID="Label3" runat="server" Text="Subcategory" 
                    style="position:absolute; top: 36px; left: 113px;"></asp:Label>
                <asp:DropDownList ID="DropDownList1" runat="server" style="position:absolute">
                </asp:DropDownList>

                <asp:DropDownList ID="DropDownList2" runat="server" 
                    style="position:absolute; top: 65px; left: 116px;">
                </asp:DropDownList>
                <br />
                <br />
                <br />
                <br />
                <br />
                <asp:RadioButtonList ID="RadioButtonList1" runat="server" 
                    style="position:absolute" 
                    onselectedindexchanged="RadioButtonList1_SelectedIndexChanged">
                    <asp:ListItem>Quarterly</asp:ListItem>
                    <asp:ListItem>Monthly</asp:ListItem>
                </asp:RadioButtonList>
                <asp:Panel ID="Panel3" runat="server" 
                    style="position:absolute; top: 40px; left: 384px; height: 261px; width: 405px;" 
                    ScrollBars="Vertical">
                    <asp:GridView ID="GridView1" runat="server" CssClass="style2" Height="258px" 
                        Width="399px">
                    </asp:GridView>
                </asp:Panel>

                <asp:Panel ID="Panel4" runat="server" 
                    style="position:absolute; top: 39px; left: 798px; height: 261px; width: 339px;" 
                    ScrollBars="Vertical">
                    </asp:Panel>
            </asp:Panel>
    </asp:Panel>
</asp:Content>
