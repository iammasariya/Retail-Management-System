<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Discounts.aspx.cs" Inherits="RMS3.Discounts" %>
<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="ajx" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
    <style type="text/css">
        .style1
        {}
        .style2
        {
            font-size: x-small;
        }
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
        {
            font-weight: 700;
            font-size: large;
        }
        .style8
        {
            font-size: large;
            font-weight: 700;
        }
        .style9
        {
            font-weight: 700;
            font-size: large;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Panel ID="Panel1" runat="server" BackColor="White" CssClass="Dashboard" 
            Width="1172px" Height="2200px">
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
                    style="position:absolute;margin-left: 0px; top: 55px; left: 857px;" 
                    Width="147px" AutoPostBack="True" 
                    onselectedindexchanged="BrandList_SelectedIndexChanged">
                </asp:DropDownList>
                <br />
                <br />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="ProductSearch" runat="server" Text="Search" 
                    onclick="ProductSearch_Click" />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="Specification1" runat="server" CssClass="style4" 
                    Text="Specification 1" style="position:absolute; top: 123px; left: 371px;"></asp:Label>
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
                <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                <br />
                <br />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="Button9" runat="server" onclick="Button9_Click" Text="Search" />
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
                
                <br />&nbsp;<asp:Button ID="Button4" runat="server" Text="Clear Selection" 
                    style="position:absolute; top: 278px; left: 1008px; height: 36px; width: 131px;" 
                    onclick="Button4_Click"/>
            </asp:Panel>


           


            <asp:Panel ID="Panel5" runat="server" 
                
                style="position:absolute; top: 427px; left: 10px; height: 317px; width: 653px;" 
                >
                
                <asp:Panel ID="Panel8" runat="server" 
                    
                    style="position:absolute; top: 7px; left: 2px; height: 308px; width: 633px;" 
                    BackColor="White" ScrollBars="Vertical">
                    <asp:CheckBoxList ID="ProductsList" runat="server" 
                        >
                    </asp:CheckBoxList>
                </asp:Panel>
                
                <asp:Panel ID="Panel9" runat="server" 
                    style="position:absolute; top: 620px; left: 18px; height: 697px; width: 568px;" 
                    BackColor="White" ScrollBars="Vertical">
                    <asp:GridView ID="DiscountedProductsGrid" runat="server" CssClass="style5" 
                        Height="690px" Width="560px">
                    </asp:GridView>
                </asp:Panel>
                
                <asp:Panel ID="Panel3" runat="server" 
                    style="position:absolute; top: 618px; left: 594px; height: 697px; width: 565px;" 
                    BackColor="White" ScrollBars="Vertical">
                    <asp:GridView ID="DiscountsGrid" runat="server" CssClass="style6" 
                        Height="691px" Width="554px">
                    </asp:GridView>
                </asp:Panel>
            </asp:Panel>

            <asp:Panel ID="Panel6" runat="server" 
                
                style="position:absolute; top: 744px; left: 14px; height: 252px; width: 676px;" 
                BackColor="White">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="Label20" runat="server" CssClass="style7" 
                    Text="New/Edit Discounts"></asp:Label>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="SelectAll" runat="server" CssClass="style1" Height="26px" 
                    Text="Select All" style="position:absolute; top: 69px; left: 1px; font-size: x-small;" 
                    Width="164px" onclick="SelectAll_Click" />
                <br />
                <br />
                &nbsp;&nbsp;
                <asp:Button ID="DeselectAll" runat="server" CssClass="style2" Height="26px" 
                    Text="Deselect All" Width="164px" onclick="DeselectAll_Click" 
                    style="position:absolute; top: 115px; left: 0px;"/>
                     <asp:Button ID="SetDiscount" runat="server" CssClass="style2" Height="26px" 
                    Text="Set Discount on Selected Items" Width="164px" 
                    style="position:absolute; top: 164px; left: 3px; font-size: x-small;" 
                    onclick="SetDiscount_Click" />
                <asp:Label ID="Label5" runat="server" Text="Discount Name" 
                    style="position:absolute; top: 49px; left: 303px;"></asp:Label>

                <br />

                     <asp:Button ID="EditDiscount" runat="server" Text="Edit Discount Scheme" 
                    
                    style="position:absolute; top: 198px; left: 388px; font-size: xx-small; height: 39px; width: 109px;" onclick="EditDiscount_Click" 
                    />

                     <br />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <br />
                &nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="Label17" runat="server" 
                    style="position:absolute; top: 14px; left: 312px;" Text="Discount ID"></asp:Label>
                <asp:Label ID="Label6" runat="server" 
                    style="position:absolute; top: 87px; left: 298px;" Text="Discount Percentage"></asp:Label>
                <asp:Label ID="Label7" runat="server" 
                    style="position:absolute; top: 129px; left: 292px;" 
                    Text="Valid From(DD-MM-YYYY)"></asp:Label>
                <asp:Label ID="Label18" runat="server" 
                    style="position:absolute; top: 164px; left: 297px;" Text="Valid To(DD-MM-YYYY)"></asp:Label>
                <br />
                <br />
                <br />
                <br />
                <br />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="TextBox2" runat="server" 
                    style="position:absolute; top: 85px; left: 459px;"></asp:TextBox>
                    <asp:TextBox ID="TextBox4" runat="server" 
                    style="position:absolute; top: 13px; left: 458px;"></asp:TextBox>
                    <asp:TextBox ID="TextBox5" runat="server"
                    style="position:absolute; top: 124px; left: 459px;"></asp:TextBox>
                    <asp:TextBox ID="TextBox6" runat="server" 
                    style="position:absolute; top: 46px; left: 458px;"></asp:TextBox>
                    <asp:TextBox ID="TextBox7" runat="server" 
                    style="position:absolute; top: 161px; left: 459px;"></asp:TextBox>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="NewDiscount" runat="server" 
                    style="position:absolute; top: 201px; left: 254px; font-size: xx-small; height: 36px; width: 108px;" 
                    Text="New Discount Scheme" onclick="NewDiscount_Click" />

                     <asp:Button ID="SaveDiscount" runat="server" Text="Save Discount Scheme" 
                    
                    style="position:absolute; top: 199px; left: 521px; height: 35px; width: 119px; font-size: xx-small;" onclick="SaveDiscount_Click" 
                    />
                </asp:Panel>
                <asp:Panel ID="Panel22" runat="server" 
                style="position:absolute; top: 746px; left: 697px; height: 245px; width: 462px;">
                    <asp:Label ID="Label19" runat="server" CssClass="style8" Text="Delete Discount"></asp:Label>
                    <br />
                    <br />
                    <asp:Label ID="Label21" runat="server" Text="Enter Discount ID" 
                        style="position:absolute; top: 51px; left: 7px;"></asp:Label>
                    <asp:Label ID="Label8" runat="server" Text="Enter Discount Name" 
                        style="position:absolute; top: 110px; left: 3px;"></asp:Label>
                    <asp:Label ID="Label9" runat="server" Text="OR" 
                        style="position:absolute; top: 79px; left: 30px; height: 20px; width: 30px;"></asp:Label>
                    <asp:Label ID="Label10" runat="server" Text="Enter Product ID to be deleted" 
                        style="position:absolute; top: 40px; left: 278px;"></asp:Label>
                    <asp:TextBox ID="TextBox9" runat="server" 
                        style="position:absolute; top: 110px; left: 130px; height: 20px; width: 110px;"></asp:TextBox>
                          <asp:TextBox ID="TextBox10" runat="server" 
                        style="position:absolute; top: 49px; left: 118px; height: 21px; width: 117px;"></asp:TextBox>
                             <asp:TextBox ID="TextBox11" runat="server" 
                        style="position:absolute; top: 68px; left: 307px;" 
                        ontextchanged="TextBox11_TextChanged"></asp:TextBox>
                    <asp:Button ID="SearchDiscount" runat="server" Text="Search" 
                        
                        style="position:absolute; top: 145px; left: 13px; height: 39px; width: 89px; font-size: xx-small;" 
                        onclick="SearchDiscount_Click"/>
                    <asp:Button ID="Remove" runat="server" Text="Remove Product from Scheme" 
                        style="position:absolute; top: 111px; left: 287px; font-size: xx-small; height: 64px; width: 161px;"/>
                    <asp:Button ID="Invalidate" runat="server" Text="Invalidate Discount" 
                        
                        style="position:absolute; top: 146px; left: 114px; font-size: xx-small; height: 39px; width: 100px;" 
                        onclick="Invalidate_Click"/>

            </asp:Panel>
           


            <asp:Panel ID="Panel23" runat="server" 
                
                style="position:absolute; top: 426px; left: 673px; height: 308px; width: 483px;" 
                ScrollBars="Auto">
                <asp:Label ID="Label22" runat="server" CssClass="style9" 
                    Text="Also Add Discounts On"></asp:Label>
                <br />
                <br />
                <asp:BulletedList ID="BulletedList1" runat="server" />
                
            </asp:Panel>
           


    </asp:Panel>
</asp:Content>
