<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="InventoryManager.aspx.cs" Inherits="RMS3.InventoryManager" %>
<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="asp" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
    <style type="text/css">
        .style1
        {}
        .style2
        {}
        .style3
        {
            font-weight: 700;
            font-size: medium;
        }
        .style4
        {
            font-weight: 700;
            font-size: x-small;
        }
        .style5
        {}
        .style6
        {}
        .style7
        {}
        .style8
        {
            font-weight: 700;
        }
        .style9
        {}
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Panel ID="Panel1" runat="server" BackColor="White" CssClass="Dashboard" 
            Width="1172px">
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
                    
                    style="position:absolute; font-size: medium; font-weight: 700; text-align: center; top: 14px; left: 985px;" 
                    Text="Brands" ></asp:Label>
                <br />
                <br />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="TextBox1" runat="server" Height="26px" Width="143px" 
                    ValidationGroup="ProductIDSearch"></asp:TextBox>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:RequiredFieldValidator 
                    ID="RequiredFieldValidator1" runat="server" 
                    ControlToValidate="TextBox1" ErrorMessage="Enter ID" Display="Dynamic" 
                    ValidationGroup="ProductIDSearch"></asp:RequiredFieldValidator>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
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
                    onclick="ProductSearch_Click" ValidationGroup="ProductIDSearch" />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="Specification1" runat="server" CssClass="style4" 
                    Text="Specification 1" style="position:absolute; top: 114px; left: 373px;"></asp:Label>
                     <asp:Label ID="Specification7" runat="server" CssClass="style4" 
                    Text="Specification 1" style="position:absolute; top: 252px; left: 824px;"></asp:Label>
                <br />
                <br />
                &nbsp;&nbsp;&nbsp;
                <asp:Label ID="Label16" runat="server" CssClass="style3" 
                    Text="Search Product Name"></asp:Label>
                <br />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
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
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="TextBox3" runat="server" ValidationGroup="ProductNameSearch"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                    ControlToValidate="TextBox3" ErrorMessage="Enter Name" Display="Dynamic" 
                    ValidationGroup="ProductNameSearch"></asp:RequiredFieldValidator>
                <br />
                <br />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="Button9" runat="server" onclick="Button9_Click" Text="Search" 
                    ValidationGroup="ProductNameSearch" />
                <br />
&nbsp;&nbsp;<br /><asp:Panel ID="Panel11" runat="server" ScrollBars="Vertical" 
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
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <br />
                <br />
                &nbsp;<br />&nbsp;
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
                
                <br />&nbsp;<asp:Button ID="Button4" runat="server" Text="Clear Specifications" 
                    style="position:absolute; top: 278px; left: 1008px; height: 36px; width: 131px;" 
                    onclick="Button4_Click"/>
            </asp:Panel>


           


            <asp:Panel ID="Panel5" runat="server" 
                
                style="position:absolute; top: 427px; left: 10px; height: 566px; width: 974px;" 
                >
                
                <asp:Panel ID="Panel7" runat="server" 
                    
                    style="position:absolute; top: 885px; left: 990px; height: 401px; width: 173px;" 
                    BackColor="White">
                    <asp:Button ID="Button1" runat="server" Height="50px" onclick="Button1_Click" 
                        Text="New Order" Width="161px" CssClass="style9" />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="Button2" runat="server" Height="48px" 
                        style="margin-right: 12px" Text="Discard Current Order" Width="160px" 
                        onclick="Button2_Click" />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="Button3" runat="server" Height="52px" Text="Confirm Order" 
                        Width="160px" onclick="Button3_Click" CssClass="style5" />
                    <br />
                    <br />
                    &nbsp;<asp:Button ID="Button6" runat="server" Height="55px" Text="Print Invoice" 
                        Width="158px" CssClass="style6" />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="Button7" runat="server" Height="55px" style="margin-right: 6px" 
                        Text="Download PDF" Width="160px" />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="Button8" runat="server" Height="61px" Text="E-mail Invoice" 
                        Width="160px" CssClass="style7" />
                </asp:Panel>
                
                <asp:Panel ID="Panel8" runat="server" 
                    
                    style="position:absolute; top: 7px; left: 2px; height: 551px; width: 924px;" 
                    BackColor="White" ScrollBars="Vertical">
                    <asp:CheckBoxList ID="ProductsList" runat="server" 
                        >
                    </asp:CheckBoxList>
                </asp:Panel>
                
                <asp:Panel ID="Panel9" runat="server" 
                    style="position:absolute; top: 573px; left: 2px; height: 302px; width: 972px;" 
                    BackColor="White" ScrollBars="Vertical">
                    <asp:GridView ID="GridView2" runat="server" BackColor="White" 
                        BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3" 
                        Height="295px" Width="925px">
                        <FooterStyle BackColor="White" ForeColor="#000066" />
                        <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" />
                        <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
                        <RowStyle ForeColor="#000066" />
                        <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
                        <SortedAscendingCellStyle BackColor="#F1F1F1" />
                        <SortedAscendingHeaderStyle BackColor="#007DBB" />
                        <SortedDescendingCellStyle BackColor="#CAC9C9" />
                        <SortedDescendingHeaderStyle BackColor="#00547E" />
                    </asp:GridView>
                </asp:Panel>
                <asp:Panel ID="Panel45" runat="server" 
                    
                    style="position:absolute; top: 878px; left: 5px; height: 268px; width: 964px;">
                    <asp:Label ID="Label17" runat="server" CssClass="style8" Text="Edit Order"></asp:Label>
                    <br />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                        ControlToValidate="TextBox4" Display="Dynamic" ErrorMessage="Enter Order ID" 
                        ValidationGroup="OrderID"></asp:RequiredFieldValidator>
                    <asp:TextBox ID="TextBox4" runat="server" 
                        style="position:absolute; top: 52px; left: 110px;" 
                        ValidationGroup="OrderID"></asp:TextBox>
                        <asp:TextBox ID="TextBox5" runat="server" 
                        style="position:absolute; top: 54px; left: 634px;"></asp:TextBox>
                        <asp:TextBox ID="TextBox6" runat="server" 
                        style="position:absolute; top: 90px; left: 632px;"></asp:TextBox>
                    <asp:Button ID="Button10" runat="server" Text="View" 
                        
                        
                        style="position:absolute; top: 110px; left: 58px; height: 38px; width: 99px;" 
                        onclick="Button10_Click" ValidationGroup="OrderID" />
                        <asp:Button ID="Button5" runat="server" Text="Delete Product" 
                        
                        
                        
                        style="position:absolute; top: 199px; left: 548px; height: 28px; width: 125px;" 
                        onclick="Button5_Click" />
                        <asp:Button ID="Button11" runat="server" Text="Edit Quantity" 
                        
                        
                        
                        style="position:absolute; top: 197px; left: 692px; height: 28px; width: 119px;" 
                        onclick="Button11_Click" />
                        <asp:Button ID="Button12" runat="server" Text="Check Product" 
                        
                        
                        
                        style="position:absolute; top: 127px; left: 627px; height: 28px; width: 119px;" 
                        onclick="Button12_Click" />
                    <br />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" 
                        ControlToValidate="TextBox4" ErrorMessage="Enter Proper Format(e.g OR1)" 
                        ValidationExpression="OR\d+" ValidationGroup="OrderID"></asp:RegularExpressionValidator>
                    <br />
                    <asp:Label ID="Label18" runat="server" Text="Enter Order ID" 
                        style="position:absolute; top: 56px; left: 13px;"></asp:Label>
                        <asp:Label ID="Label5" runat="server" Text="Enter Product ID" 
                        style="position:absolute; top: 57px; left: 520px;"></asp:Label>
                        <asp:Label ID="Label6" runat="server" Text="Quantity" 
                        style="position:absolute; top: 92px; left: 537px;"></asp:Label>
                    </asp:Panel>>
                
            </asp:Panel>

            <asp:Panel ID="Panel6" runat="server" 
                
                style="position:absolute; top: 428px; left: 979px; height: 252px; width: 185px;" 
                BackColor="White">
                <asp:Label ID="Label7" runat="server" 
                    style="font-weight: 700; font-size: small; position:absolute; top: 85px; left: 32px; height: 37px; width: 115px;" 
                    Text="Enter Quantity of Selected Goods"></asp:Label>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="SelectAll" runat="server" CssClass="style1" Height="26px" 
                    Text="Select All" style="position:absolute; top: 2px; left: 10px;" 
                    Width="164px" onclick="SelectAll_Click" />
                <br />
                <br />
                &nbsp;&nbsp;
                <asp:Button ID="DeselectAll" runat="server" CssClass="style2" Height="26px" 
                    Text="Deselect All" Width="164px" onclick="DeselectAll_Click" />
                <br />
                <br />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <br />
                &nbsp;&nbsp;&nbsp;&nbsp;
                <br />
                <br />
                <br />
                <br />
                <br />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                    ControlToValidate="TextBox2" Display="Dynamic" 
                    ErrorMessage="Enter Numbers Only" ValidationExpression="^\d+$" 
                    ValidationGroup="Quantity"></asp:RegularExpressionValidator>
                <asp:TextBox ID="TextBox2" runat="server" 
                    style="position:absolute; top: 139px; left: 23px;" 
                    ValidationGroup="Quantity">1</asp:TextBox>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="InventoryAdd" runat="server" Text="Add To Inventory" 
                    style="position:absolute; top: 187px; left: 15px;" 
                    onclick="InventoryAdd_Click" ValidationGroup="Quantity" />
                </asp:Panel>
           


            <asp:Panel ID="Panel10" runat="server" 
                style="position:absolute; top: 992px; left: 991px; height: 294px; width: 176px;" 
                BackColor="White">
                <br />
                <br />
                <asp:Label ID="Label8" runat="server" style="font-weight: 700" Text="Order No"></asp:Label>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="Label12" runat="server" style="font-weight: 700" Text="Label"></asp:Label>
                <br />
                <br />
                <asp:Label ID="Label9" runat="server" style="font-weight: 700" Text="Quantity"></asp:Label>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="Label13" runat="server" style="font-weight: 700" Text="Label"></asp:Label>
                <br />
                <br />
                <asp:Label ID="Label10" runat="server" style="font-weight: 700" Text="Amount"></asp:Label>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="Label14" runat="server" style="font-weight: 700" Text="Label"></asp:Label>
                <br />
                <br />
                <asp:Label ID="Label11" runat="server" style="font-weight: 700" 
                    Text="Order Date"></asp:Label>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="Label15" runat="server" style="font-weight: 700" Text="Label"></asp:Label>
                <br />
                <br />
            </asp:Panel>
           


    </asp:Panel>
</asp:Content>
