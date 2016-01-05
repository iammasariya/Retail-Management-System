<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Combos.aspx.cs" Inherits="RMS3.Combos" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
    <style type="text/css">
        .style1
        {
            font-size: medium;
            font-weight: 700;
        }
        .style2
        {}
        .style3
        {}
        .style4
        {}
        .style5
        {
            font-weight: 700;
        }
        .style6
        {}
        .style7
        {
            font-weight: 700;
            font-size: medium;
        }
        .style8
        {}
        .style9
        {
            font-weight: 700;
            font-size: medium;
        }
        .style10
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
            <asp:Label ID="Label1" runat="server" CssClass="style1" Text="Combo Packs"></asp:Label>
            <br />
            <br />
            <br />
            <asp:Panel ID="Panel2" runat="server" CssClass="style2" Height="734px" 
                Width="444px">
                <asp:Panel ID="Panel3" runat="server" CssClass="style3" 
                    style="position:absolute; top: 115px; left: 0px; width: 440px; height: 159px;" 
                    BackColor="White">
                    <asp:Label ID="Label2" runat="server" CssClass="style5" Text="Combo ID" style="position:absolute"></asp:Label>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="Label3" runat="server" CssClass="style5" Text="Stock"
                        style="position:absolute; top: 51px; left: 249px; font-size: x-small;"></asp:Label>
                    <asp:Label ID="Label4" runat="server" CssClass="style5" Text="Combo Price"
                        style="position:absolute; top: 15px; left: 235px; font-size: x-small;"></asp:Label>
                    <asp:Label ID="Label5" runat="server" CssClass="style5" Text="Valid From(DD-MM-YYYY)"
                        style="position:absolute; top: 94px; left: 203px; font-size: x-small;"></asp:Label>
                    <asp:Label ID="Label6" runat="server" CssClass="style5" Text="Valid To(DD-MM-YYYY)"
                        style="position:absolute; top: 124px; left: 213px; font-size: x-small;"></asp:Label>
                    <asp:Label ID="Label7" runat="server" CssClass="style5" Text="No.Of Products"
                        style="position:absolute; top: 97px; left: 6px;"></asp:Label>
                    <asp:Label ID="Label8" runat="server" CssClass="style5" Text="Net Price"
                        style="position:absolute; top: 129px; left: 11px;"></asp:Label>
                    <asp:Label ID="Label9" runat="server" CssClass="style5"
                        style="position:absolute; top: 97px; left: 104px; height: 16px;"></asp:Label>
                    <asp:Label ID="Label10" runat="server" CssClass="style5"
                        style="position:absolute; top: 129px; left: 81px;"></asp:Label>
                    <asp:Button ID="Button1" runat="server" Text="New" 
                        
                        style="position:absolute; top: 51px; left: 5px; height: 26px; width: 46px;" 
                        onclick="Button1_Click"/>
                    <asp:Button ID="Button2" runat="server" Text="View" 
                        
                        style="position:absolute; top: 51px; left: 65px; width: 48px;" 
                        onclick="Button2_Click"/>
                    <asp:TextBox ID="TextBox1" runat="server" CssClass="style6" Height="23px" 
                        style="position:absolute; top: 18px; left: 3px; width: 76px;"></asp:TextBox>
                        <br />
                        <asp:TextBox ID="TextBox2" runat="server" CssClass="style6" Height="23px" 
                        style="position:absolute; top: 11px; left: 324px; width: 76px;"></asp:TextBox>
                        <asp:TextBox ID="TextBox3" runat="server" CssClass="style6" Height="23px" 
                        style="position:absolute; top: 51px; left: 324px; width: 76px;"></asp:TextBox>
                        <asp:TextBox ID="TextBox4" runat="server" CssClass="style6" Height="23px" 
                        style="position:absolute; top: 86px; left: 325px; width: 76px;"></asp:TextBox>
                        <asp:TextBox ID="TextBox5" runat="server" CssClass="style6" Height="23px" 
                        style="position:absolute; top: 122px; left: 324px; width: 76px;"></asp:TextBox>
                    &nbsp;&nbsp;&nbsp;&nbsp;
                </asp:Panel>
                    <asp:Panel ID="Panel4" runat="server" CssClass="style3" 
                    style="position:absolute; top: 752px; left: 4px; width: 440px; height: 120px;" 
                    BackColor="White">
                    
                        <asp:Button ID="Button3" runat="server" 
                            style="position:absolute; top: 51px; left: 169px;" Text="Search" 
                            onclick="Button3_Click" />
                    
                        <asp:RadioButtonList ID="RadioButtonList1" runat="server" 
                            style="position:absolute; top: 30px; left: -2px;">
                            <asp:ListItem>By Product ID</asp:ListItem>
                            <asp:ListItem>By Product Name</asp:ListItem>
                        </asp:RadioButtonList>
                    
                        <asp:Label ID="Label11" runat="server" CssClass="style7" Text="Search" style="position:absolute"></asp:Label>
                        &nbsp;&nbsp;
                        <asp:Label ID="Label12" runat="server" CssClass="style7" Text="Enter Quantity" 
                            style="position:absolute; top: 1px; left: 313px;"></asp:Label>
                        <asp:TextBox ID="TextBox6" runat="server" 
                            
                            
                            
                            style="position:absolute; top: 28px; left: 310px; height: 24px; width: 103px;" 
                            ontextchanged="TextBox6_TextChanged">1</asp:TextBox>
                          <asp:Button ID="Button4" runat="server" Text="Add To Combo" 
                            
                            style="position:absolute; top: 65px; left: 318px; height: 17px; width: 85px; font-size: xx-small;" 
                            onclick="Button4_Click"/>
                            <asp:Button ID="Button5" runat="server" Text="Finish Combo" 
                            
                            
                            
                            style="position:absolute; top: 91px; left: 322px; height: 19px; width: 77px; font-size: xx-small;" onclick="Button5_Click" 
                            />
                    
                        <asp:TextBox ID="TextBox7" runat="server" 
                            style="position:absolute; top: 20px; left: 144px; height: 24px; width: 114px;"></asp:TextBox>
                    
                </asp:Panel>
                <asp:Panel ID="Panel7" runat="server" CssClass="style4" 
                    style="position:absolute; top: 293px; left: 4px; width: 440px; height: 448px;" 
                    BackColor="White" ScrollBars="Auto">
                    <asp:CheckBoxList ID="ComboProductsList" runat="server">
                    </asp:CheckBoxList>
                </asp:Panel>
            </asp:Panel>
    </asp:Panel>
      <asp:Panel ID="Panel5" runat="server" CssClass="style2" 
                Width="444px" style="position:absolute; top: 286px; left: 549px; height: 755px;" 
        BackColor="White" ScrollBars="Auto">
          <asp:GridView ID="GridView1" runat="server" CssClass="style8" Height="747px" 
              Width="440px">
          </asp:GridView>
                </asp:Panel>

                <asp:Panel ID="Panel6" runat="server" CssClass="style2" 
        style="position:absolute; top: 290px; left: 997px; height: 269px; width: 272px;" 
        BackColor="White" ScrollBars="Auto">
                    <asp:Label ID="Label14" runat="server" CssClass="style9" 
                        Text="Add Following Products To Combo"></asp:Label>
                    <asp:BulletedList ID="BulletedList1" runat="server">
                    </asp:BulletedList>
                </asp:Panel>

                <asp:Panel ID="Panel8" runat="server" CssClass="style2" 
        style="position:absolute; top: 1076px; left: 111px; height: 269px; width: 941px;" 
        BackColor="White" ScrollBars="Auto">
                    <asp:GridView ID="CombosGrid" runat="server" CssClass="style10" Height="258px" 
                        Width="890px">
                    </asp:GridView>
                </asp:Panel>

</asp:Content>
