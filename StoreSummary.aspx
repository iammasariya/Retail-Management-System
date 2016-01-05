<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="StoreSummary.aspx.cs" Inherits="RMS3.StoreSummary" %>
<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="asp" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
    <style type="text/css">
        .style1
        {
            font-size: medium;
            font-weight: 700;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Panel ID="Panel1" runat="server" BackColor="White" CssClass="Dashboard" 
            Width="1172px" Height="1800px">
            <asp:Image ID="Image2" runat="server" 
    ImageUrl="~/Images/DashboardNew.jpg" />


           


            <br />
            <br />
            <br />
            <asp:Panel ID="Panel2" runat="server" 
                style="position:absolute; top: 52px; left: 0px; height: 371px; width: 1168px;" 
                BackColor="White">
                <br />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="Label1" runat="server" 
                    style="font-size: medium; font-weight: 700" Text="Search Product ID"></asp:Label>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="Label2" runat="server" 
                    style="font-weight: 700; font-size: medium" Text="Select Category"></asp:Label>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="Label3" runat="server" 
                    style="font-weight: 700; font-size: medium" Text="Select Subcategory"></asp:Label>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

                 <asp:Label ID="Label4" runat="server" 
                    style="font-size: medium; font-weight: 700; text-align: center" Text="Brands"></asp:Label>
                <br />
                <br />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="TextBox1" runat="server" Height="26px" Width="143px"></asp:TextBox>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:DropDownList ID="CategoryList" runat="server" AutoPostBack="True" 
                    Height="30px" onselectedindexchanged="CategoryList_SelectedIndexChanged" 
                    Width="187px">
                </asp:DropDownList>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:DropDownList ID="SubcategoryList" runat="server" 
                    AutoPostBack="True" Height="20px" 
                    onselectedindexchanged="SubcategoryList_SelectedIndexChanged" Width="192px">
                </asp:DropDownList>
                <asp:DropDownList ID="BrandList" runat="server" Height="32px" 
                    style="position:absolute;margin-left: 0px; top: 57px; left: 987px;" 
                    Width="147px" AutoPostBack="True" 
                    onselectedindexchanged="BrandList_SelectedIndexChanged">
                </asp:DropDownList>
                <br />
                <br />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="ProductSearch" runat="server" Text="Search" 
                    onclick="ProductSearch_Click" />
                <br />
                <br />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <br />
                <asp:Label ID="Specification2" runat="server" 
                    style="font-weight: 700; font-size: x-small; position:absolute; top: 122px; left: 610px; height: 24px; width: 121px;" 
                    Text="Specification2"></asp:Label>
                <asp:Label ID="Specification3" runat="server" 
                    style="font-weight: 700; font-size: x-small; position:absolute; top: 121px; left: 825px; height: 24px; width: 121px;" 
                    Text="Specification3"></asp:Label>
                <asp:Label ID="Specification4" runat="server" 
                    style="font-weight: 700; font-size: x-small; position:absolute; top: 122px; left: 1021px; height: 24px; width: 121px;" 
                    Text="Specification4"></asp:Label>
                <asp:Label ID="Specification5" runat="server" 
                    style="font-weight: 700; font-size: x-small; position:absolute; top: 248px; left: 382px; height: 24px; width: 121px;" 
                    Text="Specification5"></asp:Label>
                <asp:Label ID="Specification6" runat="server" 
                    style="font-weight: 700; font-size: x-small; position:absolute; top: 248px; left: 611px; height: 24px; width: 121px;" 
                    Text="Specification6"></asp:Label>
                <asp:Label ID="Specification1" runat="server" 
                    style="font-weight: 700; font-size: x-small; position:absolute; top: 123px; left: 384px; height: 24px; width: 121px;" 
                    Text="Specification1"></asp:Label>
                <asp:Label ID="Specification7" runat="server" 
                    style="font-weight: 700; font-size: x-small; position:absolute; top: 248px; left: 835px; height: 24px; width: 121px;" 
                    Text="Specification7"></asp:Label>
                &nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="Label5" runat="server" CssClass="style1" 
                    Text="Search Product Name"></asp:Label>
                <br />
                <br />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                <br />
                <br />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="Button5" runat="server" onclick="Button5_Click" Text="Search" />
                <br />
&nbsp;
                <br />
                <asp:Panel ID="Panel11" runat="server" ScrollBars="Vertical" 
                    style="position:absolute; top: 153px; left: 367px; height: 86px; width: 142px;">
                    <asp:RadioButtonList ID="SpecificationRList1" runat="server" 
                        AutoPostBack="True" 
                        onselectedindexchanged="SpecificationRList1_SelectedIndexChanged">
                    </asp:RadioButtonList>
                </asp:Panel>
                <asp:Panel ID="Panel14" runat="server" ScrollBars="Vertical" 
                    style="position:absolute; top: 279px; left: 597px; height: 81px; width: 142px;">
                    <asp:RadioButtonList ID="SpecificationRList6" runat="server" 
                        AutoPostBack="True" 
                        onselectedindexchanged="SpecificationRList6_SelectedIndexChanged">
                    </asp:RadioButtonList>
                </asp:Panel>
                <asp:Panel ID="Panel15" runat="server" ScrollBars="Vertical" 
                    style="position:absolute; top: 152px; left: 597px; height: 86px; width: 142px;">
                    <asp:RadioButtonList ID="SpecificationRList2" runat="server" 
                        AutoPostBack="True" 
                        onselectedindexchanged="SpecificationRList2_SelectedIndexChanged">
                    </asp:RadioButtonList>
                </asp:Panel>
                <br />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="Archive_Summary" runat="server" onclick="Archive_Summary_Click" 
                    Text="Archive Summary" />
                <br />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br />&nbsp;<br />&nbsp;
                <asp:Panel ID="Panel16" runat="server" ScrollBars="Vertical" 
                    style="position:absolute; top: 281px; left: 818px; height: 78px; width: 142px;">
                    <asp:RadioButtonList ID="SpecificationRList7" runat="server" 
                        AutoPostBack="True" 
                        onselectedindexchanged="SpecificationRList7_SelectedIndexChanged">
                    </asp:RadioButtonList>
                </asp:Panel>
                <asp:Panel ID="Panel17" runat="server" ScrollBars="Vertical" 
                    style="position:absolute; top: 151px; left: 815px; height: 86px; width: 142px;">
                    <asp:RadioButtonList ID="SpecificationRList3" runat="server" 
                        AutoPostBack="True" 
                        onselectedindexchanged="SpecificationRList3_SelectedIndexChanged">
                    </asp:RadioButtonList>
                </asp:Panel>
                <br />
                &nbsp;
                <asp:Panel ID="Panel12" runat="server" 
                    
                    style="position:absolute; top: 280px; left: 370px; height: 82px; width: 142px;" 
                    ScrollBars="Vertical">
                    <asp:RadioButtonList ID="SpecificationRList5" runat="server" 
                        AutoPostBack="True" 
                        onselectedindexchanged="SpecificationRList5_SelectedIndexChanged">
                    </asp:RadioButtonList>
                </asp:Panel>
                <asp:Panel ID="Panel13" runat="server" 
                    style="position:absolute; top: 154px; left: 1012px; height: 86px; width: 142px;" 
                    ScrollBars="Vertical">
                    <asp:RadioButtonList ID="SpecificationRList4" runat="server" 
                        AutoPostBack="True" 
                        onselectedindexchanged="SpecificationRList4_SelectedIndexChanged">
                    </asp:RadioButtonList>
                </asp:Panel>
                <br />
                
                <br />&nbsp;<asp:Button ID="Button4" runat="server" Text="Clear Specification" 
                    style="position:absolute; top: 278px; left: 1008px; height: 36px; width: 131px;" 
                    onclick="Button4_Click"/>
            </asp:Panel>

        <asp:Panel ID="Panel3" runat="server" 
                style="position:absolute; top: 425px; left: 5px; height: 964px; width: 1159px;" 
                ScrollBars="Auto">
            <asp:GridView ID="ProductsGrid" runat="server" Height="957px" Width="1155px" 
                CellPadding="4" ForeColor="#333333" GridLines="None">
                <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                <Columns>
                <asp:TemplateField HeaderText="Sr.No">
     <itemtemplate>
          <%#Container.DataItemIndex + 1 %>                                                    
     </itemtemplate>
     
</asp:TemplateField>
                </Columns>
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
            <br />
            <br />
            <br />
            <br />
            <br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        </asp:Panel>


           


    </asp:Panel>
</asp:Content>
