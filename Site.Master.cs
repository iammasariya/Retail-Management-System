using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace RMS3
{
    public partial class SiteMaster : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            HomeButton.Attributes.Add("onMouseOver", "this.src='/Images/HomeButtonFinalOver.jpg'");
            HomeButton.Attributes.Add("onMouseOut", "this.src='/Images/HomeButtonFinal.jpg'");

            ReportsButton.Attributes.Add("onMouseOver", "this.src='/Images/ReportsOver.jpg'");
            ReportsButton.Attributes.Add("onMouseOut", "this.src='/Images/Reports.jpg'");

            ImageButton1.Attributes.Add("onMouseOver", "this.src='/Images/InventoryOver.jpg'");
            ImageButton1.Attributes.Add("onMouseOut", "this.src='/Images/Inventory.jpg'");

           ImageButton4.Attributes.Add("onMouseOver", "this.src='/Images/StrategyOver.jpg'");
            ImageButton4.Attributes.Add("onMouseOut", "this.src='/Images/Strategy.jpg'");

        }

        protected void ReportsButton_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("~/Reports.aspx");
        }

        protected void HomeButton_Click(object sender, ImageClickEventArgs e)
        {
             Response.Redirect("~/Home.aspx");
        }

      

        protected void ImageButton1_Click1(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("~/InventoryManager.aspx");
        }

        protected void ImageButton2_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("~/StoreSummary.aspx");
        }

        protected void ImageButton3_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("~/Orders.aspx");
        }

        protected void ImageButton4_Click(object sender, ImageClickEventArgs e)
        {
            
            Response.Redirect("~/Strategy.aspx");
        }
    }
}
