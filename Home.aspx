<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true"
    CodeBehind="Home.aspx.cs" Inherits="RMS3.Home" %>


<%@ Register src="NewUserControl.ascx" tagname="NewUserControl" tagprefix="uc2" %>

<asp:Content ID="HeaderContent" runat="server" ContentPlaceHolderID="HeadContent">
    <style type="text/css">
        .style4
        {
            width: 111px;
        }
        .style5
        {
            width: 88px;
        }
        .style6
        {
            width: 88px;
            font-weight: bold;
            text-align: center;
        }
        .style7
        {
            width: 111px;
            font-weight: bold;
            text-align: center;
        }
        .style8
        {
            font-size: medium;
            color: #003399;
        }
        .style9
        {
            text-align: center;
        }
    </style>
</asp:Content>
<asp:Content ID="BodyContent" runat="server" ContentPlaceHolderID="ContentPlaceHolder1">
    <asp:Panel ID="Panel1" runat="server" BackColor="White" CssClass="Dashboard" 
            Width="1172px" Height="1200px">
            <asp:Image ID="Image2" runat="server" 
    ImageUrl="~/Images/DashboardNew.jpg" />
    
             
            
            
            <br />
            <br />
            <br />
            <asp:ScriptManager ID="ScriptManager1" runat="server">
            </asp:ScriptManager>
            <asp:UpdatePanel ID="UpdatePanel1" runat="server">
            </asp:UpdatePanel>
            <br />
            &nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Image ID="Image3" runat="server" Height="47px" 
                ImageUrl="~/Images/SalesFinalNew.png" Width="114px" />
            <asp:Timer ID="Timer1" runat="server" ontick="Timer1_Tick" Interval="15000">
            </asp:Timer>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <table style="border: thin ridge #000000; width: 28%; position:absolute; top: 196px; left: 840px; height: 268px; bottom: 736px;">
                <tr class="style8">
                    <td class="style7" 
                        style="border: thin ridge #FFFFFF; background-color: #D2D2D2">
                        Parameter</td>
                    <td class="style6" 
                        style="border: thin ridge #FFFFFF; background-color: #D2D2D2">
                        Sales</td>
                    <td class="style9" 
                        style="border: thin ridge #FFFFFF; background-color: #D2D2D2">
                        <b>Amount</b></td>
                </tr>
                <tr>
                    <td class="style4">
                        <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" 
                            onselectedindexchanged="DropDownList1_SelectedIndexChanged">
                        </asp:DropDownList>
                    </td>
                    <td class="style5">
                        <asp:Label ID="Label21" runat="server" 
                            style="font-weight: 700; font-size: medium" Text="Label"></asp:Label>
                    </td>
                    <td>
                        <asp:Label ID="Label22" runat="server" 
                            style="font-weight: 700; font-size: medium" Text="Label"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="style4" 
                        style="border: thin ridge #FFFFFF; background-color: #D2D2D2">
                        <asp:DropDownList ID="DropDownList2" runat="server" AutoPostBack="True" 
                            onselectedindexchanged="DropDownList2_SelectedIndexChanged">
                        </asp:DropDownList>
                    </td>
                    <td class="style5" 
                        style="border: thin ridge #FFFFFF; background-color: #D2D2D2">
                        <asp:Label ID="Label23" runat="server" 
                            style="font-size: medium; font-weight: 700" Text="Label"></asp:Label>
                    </td>
                    <td style="border: thin ridge #FFFFFF; background-color: #D2D2D2">
                        <asp:Label ID="Label24" runat="server" 
                            style="font-weight: 700; font-size: medium" Text="Label"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="style4">
                        <asp:DropDownList ID="DropDownList3" runat="server" AutoPostBack="True" 
                            onselectedindexchanged="DropDownList3_SelectedIndexChanged">
                            <asp:ListItem>January</asp:ListItem>
                            <asp:ListItem>February</asp:ListItem>
                            <asp:ListItem>March</asp:ListItem>
                            <asp:ListItem>April</asp:ListItem>
                            <asp:ListItem>May</asp:ListItem>
                            <asp:ListItem>June</asp:ListItem>
                            <asp:ListItem>July</asp:ListItem>
                            <asp:ListItem>August</asp:ListItem>
                            <asp:ListItem>September</asp:ListItem>
                            <asp:ListItem>October</asp:ListItem>
                            <asp:ListItem>November</asp:ListItem>
                            <asp:ListItem>December</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                    <td class="style5">
                        <asp:Label ID="Label25" runat="server" 
                            style="font-weight: 700; font-size: medium" Text="Label"></asp:Label>
                    </td>
                    <td>
                        <asp:Label ID="Label26" runat="server" 
                            style="font-weight: 700; font-size: medium" Text="Label"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="style4" 
                        style="border: thin ridge #FFFFFF; background-color: #D2D2D2;">
                        <asp:DropDownList ID="DropDownList4" runat="server" AutoPostBack="True" 
                            onselectedindexchanged="DropDownList4_SelectedIndexChanged">
                            <asp:ListItem Value="1">Q1</asp:ListItem>
                            <asp:ListItem Value="2">Q2</asp:ListItem>
                            <asp:ListItem Value="3">Q3</asp:ListItem>
                            <asp:ListItem Value="4">Q4</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                    <td class="style5" 
                        style="border: thin ridge #FFFFFF; background-color: #D2D2D2;">
                        <asp:Label ID="Label27" runat="server" 
                            style="font-weight: 700; font-size: medium" Text="Label"></asp:Label>
                    </td>
                    <td style="border: thin ridge #FFFFFF; background-color: #D2D2D2;">
                        <asp:Label ID="Label28" runat="server" 
                            style="font-weight: 700; font-size: medium" Text="Label"></asp:Label>
                    </td>
                </tr>
            </table>
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            &nbsp;&nbsp;&nbsp;&nbsp;
            <div class="Placeholder8">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <br />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="Label9" runat="server" CssClass="Labels" Text="Amount"></asp:Label>
                <br />
                <br />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="Label10" runat="server" CssClass="Labels" Text="Rs.0"></asp:Label>
            </div>
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <asp:Image ID="Image4" runat="server" Height="47px" 
                ImageUrl="~/Images/SalesVolumeFinal.png" Width="270px" />
            <br />
            <br />
            <br />
            <div class="Placeholder3">
                &nbsp;<asp:Label ID="Label5" runat="server" CssClass="Labels2" 
                    Text="Change Over Last 7 Days"></asp:Label>
                <br />
                <br />
                <asp:Label ID="Label11" runat="server" style="font-weight: 700; font-size: x-small;" 
                    Text="Change in Quantity: "></asp:Label>
                &nbsp;<asp:Label ID="Label14" runat="server" style="font-weight: 700" Text="0.0"></asp:Label>
                <br />
                <br />
                <asp:Label ID="Label12" runat="server" style="font-weight: 700; font-size: x-small;" 
                    Text="Change in Amount: "></asp:Label>
                &nbsp;
                <asp:Label ID="Label13" runat="server" style="font-weight: 700" Text="0.0"></asp:Label>
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
            <div class="Placeholder2">
                <br />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="Label4" runat="server" CssClass="Labels" Text="Today"></asp:Label>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <br />
                <br />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="TodayBalance" runat="server" CssClass="Labels" Text="0"></asp:Label>
            </div>
            <div class="Placeholder4">
                &nbsp;<asp:Label ID="Label6" runat="server" CssClass="Labels2" 
                    Text="Change Over Last Month"></asp:Label>
                <br />
                <br />
                <asp:Label ID="Label15" runat="server" style="font-weight: 700; font-size: x-small;" 
                    Text="Change in Quantity: "></asp:Label>
                <asp:Label ID="Label17" runat="server" style="font-weight: 700" Text="0.0"></asp:Label>
                <br />
                <br />
                <asp:Label ID="Label16" runat="server" style="font-weight: 700; font-size: x-small;" 
                    Text="Change in Amount: "></asp:Label>
                &nbsp;<asp:Label ID="Label18" runat="server" style="font-weight: 700" Text="0.0"></asp:Label>
            </div>
            <div class="Placeholder5">
                &nbsp;&nbsp;
                <asp:Label ID="Label8" runat="server" CssClass="Labels2" 
                    Text="Best Day Of The Month" ForeColor="Green"></asp:Label>
                <br />
                <br />
                &nbsp;<asp:Label ID="Label19" runat="server" style="font-weight: 700" Text="Label"></asp:Label>
            </div>
            <br />
            <div class="Placeholder1">
                <br />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="Label2" runat="server" CssClass="Labels" Text="Open"></asp:Label>
                &nbsp;&nbsp;<br />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;
                <br />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="Label3" runat="server" CssClass="Labels" Text="0"></asp:Label>
            </div>
            <div class="Placeholder6">
                &nbsp;
                <asp:Label ID="Label7" runat="server" CssClass="Labels2" 
                    Text="Worst Day Of The Month" ForeColor="Red"></asp:Label>
                <br />
                <br />
                &nbsp;<asp:Label ID="Label20" runat="server" style="font-weight: 700" Text="Label"></asp:Label>
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
            <uc2:NewUserControl ID="NewUserControl1" runat="server" />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            &nbsp;&nbsp;&nbsp;
            
            
            
        </asp:Panel>
    
</asp:Content>
