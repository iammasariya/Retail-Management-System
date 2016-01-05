using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MySql.Data.MySqlClient;
using System.Collections;

namespace RMS3
{
    public partial class NewUserControl : System.Web.UI.UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            MySqlConnection conn = new MySqlConnection(GetConnectionString());
            String[] top = new String[5];
            String[] bottom = new String[5];
            MySqlDataReader dr;
            String query1 = "Select Product_Name,Company_Name,Sp4_Value,Sp5_Value,Sp6_Value,Sp7_Value,Sp8_Value from Master_Products where Product_ID in (Select Product_ID from Transactions where Bill_No in (Select Bill_No from Bills where MONTH(Bill_Date) = MONTH(NOW())) GROUP BY(Product_ID) ORDER BY SUM(Quantity) desc) ORDER BY(Product_ID) desc";
            String query2 = "Select Product_Name,Company_Name,Sp4_Value,Sp5_Value,Sp6_Value,Sp7_Value,Sp8_Value from Master_Products where Product_ID in (Select Product_ID from Transactions where Bill_No in (Select Bill_No from Bills where MONTH(Bill_Date) = MONTH(NOW())) GROUP BY(Product_ID) ORDER BY SUM(Quantity) ORDER BY (Product_ID))";
            try
            {
                conn.Open();
                MySqlCommand comm = new MySqlCommand(query1, conn);
                dr = comm.ExecuteReader();

                for (int i = 0; i < 5; i++)
                {
                    dr.Read();
                    top[i] = dr.GetValue(1).ToString() + " " + dr.GetValue(0).ToString() + " " + dr.GetValue(2).ToString() + " " + dr.GetValue(3).ToString() + " " + dr.GetValue(4).ToString() + " " + dr.GetValue(5).ToString() + " " + dr.GetValue(6).ToString();
                }
                dr.Close();
                comm.CommandText = query2;
                dr = comm.ExecuteReader();

                for (int i = 0; i < 5; i++)
                {
                    dr.Read();
                    bottom[i] = dr.GetValue(1).ToString() + " " + dr.GetValue(0).ToString() + " " + dr.GetValue(2).ToString() + " " + dr.GetValue(3).ToString() + " " + dr.GetValue(4).ToString() + " " + dr.GetValue(5).ToString() + " " + dr.GetValue(6).ToString();
                }
                dr.Close();

            }
            catch (Exception ex)
            { Response.Write(ex.Message); }
            finally
            { conn.Close(); }

            Label3.Text = top[0];
            Label5.Text = top[1];
            Label4.Text = top[2];
            Label6.Text = top[3];
            Label7.Text = top[4];

            Label8.Text = bottom[0];
            Label9.Text = bottom[1];
            Label10.Text = bottom[2];
            Label11.Text = bottom[3];
            Label12.Text = bottom[4];

          }
        
        
          public static string GetConnectionString()
        {
            string connStr = String.Format("server={0};user id={1}; password={2};" +
              "database=footpri8_RMS2; pooling=true", "66.147.244.153",
              "footpri8", "Yhu#56gj6!");

            return connStr;
        }

        }
    }
