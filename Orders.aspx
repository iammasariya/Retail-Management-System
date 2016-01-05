<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Orders.aspx.cs" Inherits="RMS3.Orders" %>
<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="ajx" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
    <style type="text/css">
        .style2
        {
            font-weight: 700;
        }
        .style3
        {}
        .style4
        {}
        .style5
        {}
        .style6
        {
            font-weight: 700;
        }
        .style7
        {
            font-weight: 700;
        }
        .style8
        {}
        .style9
        {
            font-weight: 700;
        }
        .style10
        {
            font-weight: 700;
        }
        .style11
        {}
        .style12
        {
            margin-left: 257px;
        }
        .style13
        {}
        .style14
        {}
        .style15
        {}
        .style16
        {}
        .style17
        {}
        .style18
        {}
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<script type="text/javascript" language="javascript">
    function onCalendarShown() {
        var cal = $find("calendar1");
        cal._switchMode("years", true);
        if (cal._yearsBody) {
            for (var i = 0; i < cal._yearsBody.rows.length; i++) {
                var row = cal._yearsBody.rows[i];
                for (var j = 0; j < row.cells.length; j++) {
                    Sys.UI.DomEvent.addHandler(row.cells[j].firstChild, "click", call);
                }
            }
        }
    }

    function onCalendarHidden() {
        var cal = $find("calendar1");
        if (cal._yearsBody) {
            for (var i = 0; i < cal._yearsBody.rows.length; i++) {
                var row = cal._yearsBody.rows[i];
                for (var j = 0; j < row.cells.length; j++) {
                    Sys.UI.DomEvent.removeHandler(row.cells[j].firstChild, "click", call);
                }
            }
        }
    }

    function call(eventElement) {
        var target = eventElement.target;
        switch (target.mode) {
            case "year":
                var cal = $find("calendar1");
                cal.set_selectedDate(target.date);
                cal._blur.post(true);
                cal.raiseDateSelectionChanged(); break;
        }
    }
</script>
    <asp:Panel ID="Panel1" runat="server" BackColor="White" CssClass="Dashboard" 
            Width="1172px" Height="1200px">
            <asp:Image ID="Image2" runat="server" 
    ImageUrl="~/Images/DashboardNew.jpg" />
            
            <asp:Panel ID="Panel2" runat="server" 
                
                
                style="position:absolute; top: 89px; left: 14px; height: 431px; width: 570px;">
                <asp:GridView ID="OrdersGrid" runat="server" 
                    BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" 
                    CellPadding="3" CssClass="style14" GridLines="Vertical" Height="419px" 
                    Width="562px">
                    <AlternatingRowStyle BackColor="#DCDCDC" />
                    <FooterStyle BackColor="#CCCCCC" ForeColor="Black" />
                    <HeaderStyle BackColor="#000084" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
                    <RowStyle BackColor="#EEEEEE" ForeColor="Black" />
                    <SelectedRowStyle BackColor="#008A8C" Font-Bold="True" ForeColor="White" />
                    <SortedAscendingCellStyle BackColor="#F1F1F1" />
                    <SortedAscendingHeaderStyle BackColor="#0000A9" />
                    <SortedDescendingCellStyle BackColor="#CAC9C9" />
                    <SortedDescendingHeaderStyle BackColor="#000065" />
                </asp:GridView>
            </asp:Panel>


            <asp:Panel ID="Panel3" runat="server" 
                
                
                
                
                
                style="position:absolute; top: 553px; left: 609px; height: 548px; width: 533px; margin-top: 0px;">
                <asp:Label ID="Label6" runat="server" CssClass="style9" 
                    Text="View Order Contents"></asp:Label>
                <br />
                <br />
                <br />
                <asp:Label ID="Label7" runat="server" CssClass="style10" Text="Enter Order ID"></asp:Label>
                &nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="TextBox8" runat="server"></asp:TextBox>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="View" runat="server" CssClass="style11" Text="View" 
                    Width="123px" onclick="View_Click" />
                <br />
                <br />
                <br />
                <br />
                <br />
                <asp:Panel ID="Panel8" runat="server" CssClass="style13" 
                    style="position:absolute; top: 150px; left: 10px; width: 522px; height: 126px;" 
                    ScrollBars="Auto">
                    <asp:GridView ID="OrderStatus1" runat="server" BackColor="White" 
                        BorderColor="#999999" BorderStyle="None" BorderWidth="1px" CellPadding="3" 
                        CssClass="style16" GridLines="Vertical" Height="126px" Width="517px">
                        <AlternatingRowStyle BackColor="#DCDCDC" />
                        <FooterStyle BackColor="#CCCCCC" ForeColor="Black" />
                        <HeaderStyle BackColor="#000084" Font-Bold="True" ForeColor="White" />
                        <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
                        <RowStyle BackColor="#EEEEEE" ForeColor="Black" />
                        <SelectedRowStyle BackColor="#008A8C" Font-Bold="True" ForeColor="White" />
                        <SortedAscendingCellStyle BackColor="#F1F1F1" />
                        <SortedAscendingHeaderStyle BackColor="#0000A9" />
                        <SortedDescendingCellStyle BackColor="#CAC9C9" />
                        <SortedDescendingHeaderStyle BackColor="#000065" />
                    </asp:GridView>
                </asp:Panel>
                <asp:Panel ID="Panel9" runat="server" CssClass="style13" 
                    style="position:absolute; top: 305px; left: 5px; width: 527px; height: 136px;" 
                    ScrollBars="Auto">
                    <asp:GridView ID="OrderStatus2" runat="server" BackColor="White" 
                        BorderColor="#999999" BorderStyle="None" BorderWidth="1px" CellPadding="3" 
                        CssClass="style17" GridLines="Vertical" Width="522px">
                        <AlternatingRowStyle BackColor="#DCDCDC" />
                        <FooterStyle BackColor="#CCCCCC" ForeColor="Black" />
                        <HeaderStyle BackColor="#000084" Font-Bold="True" ForeColor="White" />
                        <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
                        <RowStyle BackColor="#EEEEEE" ForeColor="Black" />
                        <SelectedRowStyle BackColor="#008A8C" Font-Bold="True" ForeColor="White" />
                        <SortedAscendingCellStyle BackColor="#F1F1F1" />
                        <SortedAscendingHeaderStyle BackColor="#0000A9" />
                        <SortedDescendingCellStyle BackColor="#CAC9C9" />
                        <SortedDescendingHeaderStyle BackColor="#000065" />
                    </asp:GridView>
                </asp:Panel>
            </asp:Panel>

            <asp:Panel ID="Panel6" runat="server" 
                
                
                
                
                
                style="position:absolute; top: 916px; left: 31px; height: 187px; width: 558px; margin-top: 0px;">
                <asp:Label ID="Label4" runat="server" CssClass="style6" 
                    Text="Order Confirmation"></asp:Label>
                <br />
                <br />
                <br />
                <asp:Label ID="Label5" runat="server" CssClass="style7" Text="Enter Order ID"></asp:Label>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="TextBox7" runat="server"></asp:TextBox>
                <br />
                <br />
                <br />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="Confirm" runat="server" CssClass="style8" Height="33px" 
                    Text="Confirm" Width="86px" onclick="Confirm_Click" />
            </asp:Panel>

            <asp:Panel ID="Panel4" runat="server" 
                
                
                style="position:absolute; top: 93px; left: 607px; height: 431px; width: 533px;">
                <asp:GridView ID="OrderProductsGrid" runat="server" 
                    BackColor="White" BorderColor="White" BorderStyle="Ridge" BorderWidth="2px" 
                    CellPadding="3" CellSpacing="1" CssClass="style15" GridLines="None" 
                    Height="421px" Width="521px">
                    <FooterStyle BackColor="#C6C3C6" ForeColor="Black" />
                    <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#E7E7FF" />
                    <PagerStyle BackColor="#C6C3C6" ForeColor="Black" HorizontalAlign="Right" />
                    <RowStyle BackColor="#DEDFDE" ForeColor="Black" />
                    <SelectedRowStyle BackColor="#9471DE" Font-Bold="True" ForeColor="White" />
                    <SortedAscendingCellStyle BackColor="#F1F1F1" />
                    <SortedAscendingHeaderStyle BackColor="#594B9C" />
                    <SortedDescendingCellStyle BackColor="#CAC9C9" />
                    <SortedDescendingHeaderStyle BackColor="#33276A" />
                </asp:GridView>
            </asp:Panel>

             <asp:Panel ID="Panel5" runat="server" 
                
                
                
                
                
                style="position:absolute; top: 558px; left: 25px; height: 352px; width: 566px;">
                 <asp:Label ID="Label1" runat="server" CssClass="style2" Text="View Orders"></asp:Label>
                 <br />
                 <br />
                 <asp:RadioButtonList ID="RadioButtonList1" runat="server" CssClass="style3" 
                     Height="190px">
                     <asp:ListItem>By Day</asp:ListItem>
                     <asp:ListItem>By Week</asp:ListItem>
                     <asp:ListItem>By Month</asp:ListItem>
                     <asp:ListItem>By Quarter</asp:ListItem>
                     <asp:ListItem>Custom Date</asp:ListItem>
                 </asp:RadioButtonList>
                 <asp:Panel ID="Panel7" runat="server" CssClass="style12" 
                     Width="300px" 
                     style="position:absolute; top: 33px; left: -5px; height: 88px;" 
                     ScrollBars="Auto">
                     <asp:GridView ID="GridView3" runat="server" BackColor="White" 
                         BorderColor="#999999" BorderStyle="None" BorderWidth="1px" CellPadding="3" 
                         CssClass="style18" GridLines="Vertical" Height="122px" Width="283px">
                         <AlternatingRowStyle BackColor="#DCDCDC" />
                         <FooterStyle BackColor="#CCCCCC" ForeColor="Black" />
                         <HeaderStyle BackColor="#000084" Font-Bold="True" ForeColor="White" />
                         <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
                         <RowStyle BackColor="#EEEEEE" ForeColor="Black" />
                         <SelectedRowStyle BackColor="#008A8C" Font-Bold="True" ForeColor="White" />
                         <SortedAscendingCellStyle BackColor="#F1F1F1" />
                         <SortedAscendingHeaderStyle BackColor="#0000A9" />
                         <SortedDescendingCellStyle BackColor="#CAC9C9" />
                         <SortedDescendingHeaderStyle BackColor="#000065" />
                     </asp:GridView>
                 </asp:Panel>
                 <asp:TextBox ID="TextBox5" runat="server" 
                     style="position:absolute; top: 187px; left: 111px;" 
                     ontextchanged="TextBox5_TextChanged"></asp:TextBox>
                 <ajx:CalendarExtender ID="TextBox5_CalendarExtender" runat="server" 
                     Enabled="True" TargetControlID="TextBox5" Format="yyyy-MM-dd">
                 </ajx:CalendarExtender>
                 <asp:TextBox ID="TextBox6" runat="server" 
                     style="position:absolute; top: 187px; left: 319px;"></asp:TextBox>
                 <ajx:CalendarExtender ID="TextBox6_CalendarExtender" runat="server" 
                     Enabled="True" TargetControlID="TextBox6" Format="yyyy-MM-dd">
                 </ajx:CalendarExtender>
                 <asp:Label ID="Label3" runat="server" 
                     style="position:absolute; top: 223px; left: 3px; height: 21px; width: 64px; font-weight: 700;" 
                     Text="Status"></asp:Label>
                 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                 <asp:Literal ID="Literal1" runat="server" Text="DD-MM-YYYY"></asp:Literal>
                 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                 <asp:Literal ID="Literal2" runat="server" Text="DD-MM-YYYY"></asp:Literal>
                 <br />
                 <asp:DropDownList ID="DropDownList1" runat="server" 
                     style="position:absolute; top: 78px; left: 110px;">
                 </asp:DropDownList>
                 <asp:DropDownList ID="DropDownList2" runat="server" 
                     style="position:absolute; top: 119px; left: 108px;">
                 </asp:DropDownList>
                 <asp:DropDownList ID="DropDownList3" runat="server" 
                     style="position:absolute; top: 43px; left: 110px;">
                 </asp:DropDownList>
                 <asp:DropDownList ID="DropDownList4" runat="server" 
                     style="position:absolute; top: 155px; left: 106px;">
                 </asp:DropDownList>
                 <asp:RadioButtonList ID="RadioButtonList3" runat="server" 
                     CssClass="style4" Height="16px" Width="195px" 
                    >
                     <asp:ListItem>All</asp:ListItem>
                     <asp:ListItem>Recieved</asp:ListItem>
                     <asp:ListItem>Pending</asp:ListItem>
                 </asp:RadioButtonList>
                 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                 <asp:Button ID="SearchOrders" runat="server" CssClass="style5" Height="59px" 
                     Text="Search" Width="151px" 
                     style="position:absolute; top: 262px; left: 323px;" 
                     onclick="SearchOrders_Click" />
                 &nbsp;&nbsp;&nbsp;
                 <br />
                 <br />
                 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                 <asp:Label ID="Label2" runat="server" 
                     style="position:absolute; top: 188px; left: 265px; height: 21px; width: 64px; font-weight: 700;" 
                     Text="To"></asp:Label>
            </asp:Panel>
            
    </asp:Panel>
</asp:Content>
