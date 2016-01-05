<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Inventory.aspx.cs" Inherits="RMS3.Inventory" %>

<%@ Register src="NewUserControl.ascx" tagname="NewUserControl" tagprefix="uc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Panel ID="Panel1" runat="server" BackColor="White" CssClass="Dashboard" 
            Width="1172px" Height="1400px">
            <asp:Image ID="Image1" runat="server" 
    ImageUrl="~/Images/DashboardNew.jpg" />

            <div class="Sidebar">
            </div>
    
    

    <table width="832px">
    <tr><td align=center><asp:Label ID="Label1" runat="server" Text="UPC"></asp:Label></td>
    <td align=center><asp:Label ID="Label2" runat="server" Text="CATEGORY"></asp:Label></td>
    <td align=center><asp:Label ID="Label3" runat="server" Text="SUB-CATEGORY"></asp:Label></td>
    <td align=center><asp:Label ID="Label5" runat="server" Text="BRAND"></asp:Label></td>
    <td align=center><asp:Label ID="Label6" runat="server" Text="PRODUCT"></asp:Label></td>
    </tr>
    <tr><td align=center style="height:44px;Width:155px">
        <asp:TextBox ID="TextBox4" 
            runat="server"  Width="140px" AutoPostBack="false"></asp:TextBox></td>
    <td align=center style="height:44px;Width:155px"><asp:DropDownList ID="cat" runat="server" 
                onselectedindexchanged="cat_SelectedIndexChanged" AutoPostBack="True">
                <asp:ListItem Selected="True">Beauty &amp; Personal Care</asp:ListItem>
            <asp:ListItem>Home &amp; Kitchen</asp:ListItem>
            <asp:ListItem>Clothing</asp:ListItem>
            <asp:ListItem>Phones &amp; Computers</asp:ListItem>
            <asp:ListItem>TV,Audio,Video</asp:ListItem>
            <asp:ListItem>Food &amp; Beverages</asp:ListItem>
            </asp:DropDownList></td>
    <td align=center style="height:44px;Width:155px"><asp:DropDownList ID="subcat1" 
                runat="server" AutoPostBack="True" 
            onselectedindexchanged="subcat1_SelectedIndexChanged">
            <asp:ListItem>Fragrances</asp:ListItem>
            <asp:ListItem>Hair Care</asp:ListItem>
            <asp:ListItem>Healthcare Devices</asp:ListItem>
            <asp:ListItem>Beauty Accessories</asp:ListItem>
            <asp:ListItem>Body &amp; Skin Care</asp:ListItem>
            <asp:ListItem Enabled="False">Airconditioners</asp:ListItem>
            <asp:ListItem Enabled="False">Vacuum Cleaners</asp:ListItem>
            <asp:ListItem Enabled="False">Mixer,Juicer,Grinder</asp:ListItem>
            <asp:ListItem Enabled="False">Washing Machines &amp; Dryers</asp:ListItem>
            <asp:ListItem Enabled="False">Refrigerators</asp:ListItem>
            <asp:ListItem Enabled="False">Microwave Oven</asp:ListItem>
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
            </asp:DropDownList></td>
    <td align=center style="height:44px;Width:155px"><asp:DropDownList 
                ID="DropDownList5" runat="server" AutoPostBack="True" 
            onselectedindexchanged="DropDownList5_SelectedIndexChanged">
            </asp:DropDownList></td>
    <td align=center style="height:44px;Width:155px"><asp:DropDownList 
                ID="DropDownList6" runat="server" AutoPostBack="True">
            </asp:DropDownList></td>
    </tr>
    </table>


    <table width="832px">
    <tr><td align=center><asp:Label ID="Label7" runat="server" Text="SPECIFICATION"></asp:Label></td>
    <td align=center><asp:Label ID="Label8" runat="server" Text="SPECIFICATION"></asp:Label></td>
    <td align=center><asp:Label ID="Label9" runat="server" Text="QTY"></asp:Label></td>
    <td align=center><asp:Label ID="Label10" runat="server" Text="PRICE/UNIT"></asp:Label></td>
    <td align=center><asp:Label ID="Label11" runat="server" Text="AMOUNT"></asp:Label></td>
    </tr>
    <tr>
    <td align=center style="height:44px;Width:155px"> <asp:DropDownList ID="DropDownList3" runat="server">
            </asp:DropDownList></td>
     <td align=center style="height:44px;Width:155px"><asp:DropDownList ID="DropDownList4" runat="server">
            </asp:DropDownList></td>
      <td align=center style="height:44px;Width:155px"> <asp:TextBox ID="TextBox5" runat="server" Width="65px"></asp:TextBox></td>
       <td align=center style="height:44px;Width:155px"><asp:TextBox ID="TextBox6" runat="server" Width="80px"></asp:TextBox></td>
        <td align=center style="height:44px;Width:155px"><asp:TextBox ID="TextBox7" runat="server" Width="110px"></asp:TextBox></td>
    </tr>
    </table>

           
    

    




            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                       


            <asp:Panel ID="Panel2" runat="server" CssClass="leftCol" ScrollBars="Both" 
                Width="552px" Height="274px">
                <asp:Repeater ID="Repeater1" runat="server">
                
        <HeaderTemplate>

<table class="tblcolor">
<tr class="rowcolor">
<table border="3" width="600px" cellpadding="10" cellspacing="1" style="border: 1px solid black;">
<th>SrNo.
</th>
<th>UPC</th>
<th>QTY</th>
<th>PPU</th>
<th>TOTAL</th>
</HeaderTemplate>
<ItemTemplate>


<tr>
<td><%#DataBinder.Eval(Container.DataItem, "SrNo.")%></td>
<td><%#DataBinder.Eval(Container.DataItem, "upc")%></td>
<td><%#DataBinder.Eval(Container.DataItem, "qty")%></td>
<td><%#DataBinder.Eval(Container.DataItem, "ppu")%></td>
<td><%#DataBinder.Eval(Container.DataItem, "total")%></td>

</tr>

</ItemTemplate>
<SeparatorTemplate>
<tr>
</tr>
</SeparatorTemplate>

<FooterTemplate></table></FooterTemplate>
        
                </asp:Repeater>
            </asp:Panel>
            <asp:Panel ID="Panel3" runat="server" CssClass="rightCol">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="add" runat="server" Text="ADD" Width="60px" 
                    onclick="addButton_Click" />
                <br />
                &nbsp;&nbsp; <asp:Label ID="oid" runat="server" Text="Order_Id :"></asp:Label>
                <asp:Label ID="oid2" runat="server" Text="Label"></asp:Label>
                <br />
                &nbsp;&nbsp;
                <asp:Label ID="date" runat="server" Text="Date :"></asp:Label>
                <asp:Label ID="date2" runat="server" Text="Label"></asp:Label>
                <br />
                &nbsp;&nbsp;
                <asp:Label ID="payment" runat="server" Text="Payment :"></asp:Label>
                <asp:Label ID="payment2" runat="server" Text="Label"></asp:Label>
                <br />
                <br />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="submit2" runat="server" Text="SUBMIT" onclick="submit2_Click" />
                <asp:Panel ID="Panel4" runat="server" CssClass="leftCol" Height="130px" 
                    Width="220px">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="Label12" runat="server" Text="Suggestions"></asp:Label>
                </asp:Panel>
            </asp:Panel>


            <div style="width: 832px" class="divfoot">
                <asp:Button ID="new" runat="server" Height="25px" Text="New" Width="60px" />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="edit" runat="server" Height="25px" onclick="Button2_Click" 
                    Text="Edit" Width="60px" />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="remove" runat="server" Height="25px" Text="Remove" 
                    Width="60px" />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="pdf" runat="server" Height="25px" Text="PDF" Width="60px" />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="email" runat="server" Height="25px" Text="Email" Width="60px" />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="print" runat="server" Height="25px" Text="Print" Width="60px" />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="discard" runat="server" Height="25px" Text="Discard" 
                    Width="60px" />
                <br />
                <br />
                <br />
                <br />
                <div>
                    <asp:Label ID="curbal" runat="server" Text="Current Balance :"></asp:Label>
                    &nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="curbal2" runat="server" Text="Label"></asp:Label>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="prbal" runat="server" Text="Previous Balance :"></asp:Label>
                    &nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="prbal2" runat="server" Text="Label"></asp:Label>
                    <br />
                    <br />
                    &nbsp;&nbsp;
                    <asp:Label ID="Label4" runat="server" Text="View Orders :"></asp:Label>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="from" runat="server" Text="From :"></asp:Label>
                    &nbsp;
                    <asp:TextBox ID="fromtext" runat="server"></asp:TextBox>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="to" runat="server" Text="To :"></asp:Label>
                    &nbsp;
                    <asp:TextBox ID="totext" runat="server"></asp:TextBox>
                    
                </div>
            </div>

            <br />
            <br />
            <br />
            <br />
            <br />
            <uc1:NewUserControl ID="NewUserControl1" runat="server" />
            <br />
            &nbsp;&nbsp;&nbsp;

           
            </asp:Panel>
            
                       
</asp:Content>
