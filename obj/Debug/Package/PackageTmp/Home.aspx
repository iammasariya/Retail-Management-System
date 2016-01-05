<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true"
    CodeBehind="Home.aspx.cs" Inherits="RMS3.Home" %>


<%@ Register src="NewUserControl.ascx" tagname="NewUserControl" tagprefix="uc2" %>

<asp:Content ID="HeaderContent" runat="server" ContentPlaceHolderID="HeadContent">
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
            <div class="Sidebar">
            </div>
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
