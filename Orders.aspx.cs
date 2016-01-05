using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MySql.Data.MySqlClient;

namespace RMS3
{
    public partial class Orders : System.Web.UI.Page
    {

        MySqlConnection conn;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                conn = new MySqlConnection(GetConnectionString());

            try
            {
			conn.Open();
            
            String sql="Select DATE_FORMAT(Date_Time,'%d-%M-%Y') from Order_Detail_Store group by Date_Time";
            MySqlCommand comm=new MySqlCommand(sql,conn);
            MySqlDataReader dr=comm.ExecuteReader();
            DropDownList3.DataSource=dr;
            DropDownList3.DataTextField="DATE_FORMAT(Date_Time,'%d-%M-%Y')";
            DropDownList3.DataBind();
            dr.Close();

           sql="Select WEEK(Date_Time) from Order_Detail_Store group by Date_Time";
           comm.CommandText=sql;
           dr=comm.ExecuteReader();
            DropDownList1.DataSource=dr;
            DropDownList1.DataTextField="WEEK(Date_Time)";
            DropDownList1.DataBind();
            dr.Close();

            sql="Select MONTHNAME(Date_Time) from Order_Detail_Store group by Date_Time";
           comm.CommandText=sql;
           dr=comm.ExecuteReader();
            DropDownList2.DataSource=dr;
            DropDownList2.DataTextField="MONTHNAME(Date_Time)";
            DropDownList2.DataBind();
            dr.Close();
            
             sql="Select QUARTER(Date_Time) from Order_Detail_Store group by Date_Time";
           comm.CommandText=sql;
           dr=comm.ExecuteReader();
            DropDownList4.DataSource=dr;
            DropDownList4.DataTextField="QUARTER(Date_Time)";
            DropDownList4.DataBind();
            dr.Close();

           sql="Select DATE_FORMAT(NOW(),'%d-%M-%Y'),WEEK(NOW()),MONTHNAME(NOW()),QUARTER(NOW())";
           comm.CommandText=sql;
           dr=comm.ExecuteReader();
           dr.Read();
           DropDownList3.SelectedValue=dr.GetValue(0).ToString();
                DropDownList1.SelectedValue=dr.GetValue(1).ToString();
                DropDownList2.SelectedValue=dr.GetValue(2).ToString();
                DropDownList4.SelectedValue=dr.GetValue(3).ToString();
           dr.Close();

           comm.CommandText = "Select Order_ID from Order_Detail_Store where DATE(DateTime) > DATE_ADD(NOW(),INTERVAL 3 DAY) and Order_Received='Pending'";
           dr = comm.ExecuteReader();
           dr.Read();
           String oid1 = dr.GetValue(0).ToString();
           dr.Close();
           comm.CommandText = "Select  count(*) from Alert_Details";
           dr = comm.ExecuteReader();
           dr.Read();
           String aid = "AR" + (dr.GetInt32(0) + 1);
           dr.Close();

           comm.CommandText = "Insert into Alert_Details values('"+aid+"',NOW(),'Order Not Recieved','Delay in Recieving Order ID:"+oid1+" ','Check Status of Order','','unread')";
           comm.ExecuteNonQuery();
       }
            catch (Exception ex)
            { Response.Write(ex.Message); }
            finally { conn.Close(); }

            }
        }

        protected void View_Click(object sender, EventArgs e)
        {
            conn=new MySqlConnection(GetConnectionString());
            String orderid=TextBox8.Text;

            try
            {
                conn.Open();
                MySqlCommand comm = new MySqlCommand("Select Order_ID,Amount,Quantity,Date_Time from Order_Detail_Store where Order_ID='" + orderid + "'", conn);
                MySqlDataReader dr1 = comm.ExecuteReader();

                OrderStatus1.DataSource = dr1;
                OrderStatus1.DataBind();
                dr1.Close();

                comm.CommandText = "Select Order_Made,Order_Ready,Order_Dispatch,Order_Received from Order_Detail_Store where Order_ID='" + orderid + "'";
                dr1 = comm.ExecuteReader();
                OrderStatus2.DataSource = dr1;
                OrderStatus2.DataBind();
                dr1.Close();

                comm.CommandText = "Select p.Product_ID,p.Company_Name,p.Product_Name,o.Quantity,o.Amount from Master_Products p, Order_Product_Store o where o.Product_ID = p.Product_ID";
                dr1 = comm.ExecuteReader();
                OrderProductsGrid.DataSource = dr1;
                OrderProductsGrid.DataBind();
                dr1.Close();


            }
            catch (Exception ex)
            { Response.Write(ex.Message); }
            finally { conn.Close(); }
            TextBox8.Text = "";
        }

        
        public static string GetConnectionString()
        {
            string connStr = String.Format("server={0};user id={1}; password={2};" +
              "database=footpri8_RMS2; pooling=true", "66.147.244.153",
              "footpri8", "Yhu#56gj6!");

            return connStr;
        }

        protected void Confirm_Click(object sender, EventArgs e)
        {
            conn = new MySqlConnection(GetConnectionString());
            String orderid = TextBox7.Text;
            List<String> ProductID = new List<String>();
            List<int> Quantity = new List<int>();
            try
            {
			conn.Open();
           // MySqlCommand comm=new MySqlCommand("Update Order_Detail_Store set Order_Received='Completed' where Order_ID='"+orderid+"'",conn);
            MySqlCommand comm=new MySqlCommand("Select Order_Received from Order_Detail_Store where Order_ID='"+orderid+"'",conn);
            MySqlDataReader dr=comm.ExecuteReader();
            dr.Read();
                String flag=dr.GetValue(0).ToString();
                dr.Close();
                if(flag.Equals("Pending"))
                {
                    comm.CommandText="Update Order_Detail_Store set Order_Received='Completed' where Order_ID='"+orderid+"'";
            comm.ExecuteNonQuery();
            comm.CommandText = "Update Order_Detail_Store_Central set Order_Received='Completed' where Order_ID='" + orderid + "'";
            comm.ExecuteNonQuery();

            comm.CommandText = "Select Product_ID,Quantity from Order_Product_Store where Order_ID='"+orderid+"'";
            MySqlDataReader dr1 = comm.ExecuteReader();
           
            while (dr1.Read())
            {
                ProductID.Add(dr1.GetValue(0).ToString());
                Quantity.Add(int.Parse(dr1.GetValue(1).ToString()));
            }
            dr1.Close();
            int i=0;

            foreach (String pid in ProductID)
            {
                int quant = Quantity.ElementAt(i);
                i++;
                comm.CommandText = "Update Current_Store_Products set Stock=Stock+" + quant + " where Product_ID='" + pid + "'";
                comm.ExecuteNonQuery();
            }
                }
            }
            catch (Exception ex)
            { Response.Write(ex.Message); }
            finally { conn.Close(); }

            TextBox7.Text="";

        }

        protected void SearchOrders_Click(object sender, EventArgs e)
        {
            String timeperiod = RadioButtonList1.SelectedValue.ToString();
            String status = RadioButtonList3.SelectedValue.ToString();
            String sql="";
            String sql2 = "";
            conn = new MySqlConnection(GetConnectionString());
            if (timeperiod.Equals("By Day"))
            {
                String temp = DropDownList3.SelectedValue.ToString();
                sql = "Select Order_ID,Amount,Quantity,Date_Time,Order_Received from Order_Detail_Store where DATE_FORMAT(Date_Time,'%d-%M-%Y') like '" + temp + "'";

            }
            if (timeperiod.Equals("By Week"))
            {
                String temp = DropDownList1.SelectedValue.ToString();
                sql = "Select Order_ID,Amount,Quantity,Date_Time,Order_Received from Order_Detail_Store where WEEK(Date_Time) = " + temp + "";

            }
            if (timeperiod.Equals("By Month"))
            {
                String temp = DropDownList2.SelectedValue.ToString();
                sql = "Select Order_ID,Amount,Quantity,Date_Time,Order_Received from Order_Detail_Store where MONTHNAME(Date_Time) = '" + temp + "'";

            }
            if (timeperiod.Equals("By Quarter"))
            {
                String temp = DropDownList4.SelectedValue.ToString();
                sql = "Select Order_ID,Amount,Quantity,Date_Time,Order_Received from Order_Detail_Store where QUARTER(Date_Time) = " + temp + "";
            }

            if (timeperiod.Equals("Custom Date"))
            {
                String date1 = TextBox5.Text;
                String date2 = TextBox6.Text;
                sql = "Select Order_ID,Amount,Quantity,Date_Time,Order_Received from Order_Detail_Store where DATE(Date_Time) BETWEEN '"+date1+"' AND '"+date2+"'";
            }

            if(status.Equals("") || status.Equals("All"))
            {
                sql2="";

            }
            if (status.Equals("Received"))
            {
                sql2 = " and Order_Received='Completed'";
            }
            if (status.Equals("Pending"))
            {
                sql2 = " and Order_Received='Pending'";
            }

            Response.Write(sql + sql2);

            try
            {
                conn.Open();
                MySqlCommand comm = new MySqlCommand(sql + sql2, conn);
                MySqlDataReader dr1 = comm.ExecuteReader();
                OrdersGrid.DataSource = dr1;
                OrdersGrid.DataBind();
                dr1.Close();
            }
            catch (Exception ex)
            { Response.Write(ex.Message); }
            finally { conn.Close(); }

        }

        protected void TextBox5_TextChanged(object sender, EventArgs e)
        {

        }

    }
}