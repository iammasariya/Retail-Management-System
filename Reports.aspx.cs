using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MySql.Data.MySqlClient;
using System.Data;

namespace RMS3
{
    public partial class Reports : System.Web.UI.Page
    {
        String query1;
        public static string GetConnectionString()
        {
            string connStr = String.Format("server={0};user id={1}; password={2};" +
              "database=footpri8_RMS1; pooling=true", "66.147.244.153",
              "footpri8", "Yhu#56gj6!");

            return connStr;
        }

        
        protected void Page_Load(object sender, EventArgs e)
        {
            /////////////////
           

            ///////////////////
            MySqlConnection conn2 = null;
            MySqlConnection conn = new MySqlConnection(GetConnectionString());
            MySqlCommand comm,comm2 = null;
            MySqlDataReader dr,dr2 = null;
            DateTime dt = new DateTime();
            dt = DateTime.Now;
            String dts = dt.ToString("yyyy-MM-dd");
            //DataTable table = new DataTable();
            
            String query = "SELECT `product_category`,sum(`quantity`),sum(`money_earn`) FROM `transaction` GROUP BY `product_category`";
            

            DataTable dt1 = new DataTable();

            dt1.Columns.Add("Sr.No.", typeof(int));

            dt1.Columns.Add("Category Name", typeof(string));



            dt1.Columns.Add("Sales", typeof(string));

            dt1.Columns.Add("Total Amount", typeof(Int32));

           

            try
            {
                int k = 1;
                conn = new MySqlConnection(GetConnectionString());
                conn.Open();
                comm = new MySqlCommand(query, conn);
                dr = comm.ExecuteReader();
                //Response.Write("entry" + id2 + " " + id3);
                while (dr.Read())
                {

                    dt1.Rows.Add(k++, dr.GetValue(0).ToString(), dr.GetValue(1).ToString(), dr.GetValue(2).ToString());
                }

                GridView1.DataSource = dt1;

                GridView1.DataBind();
            }

            catch (Exception ex)
            {
                Response.Write(ex.StackTrace);
            }

            finally
            {
                //dr.Close();
                conn.Close();
            }
            try
            {

                conn2 = new MySqlConnection(GetConnectionString());
                conn2.Open();
                comm2 = new MySqlCommand("SELECT sum(`money_earn`) FROM `transaction` where `date` LIKE '" + dts + "'", conn2);
                dr2 = comm2.ExecuteReader();
                while (dr2.Read())
                {
                    Label8.Text = dr2.GetValue(0).ToString();
                }
                dr2.Close();
            }
            catch (Exception ex)
            {
                Response.Write(ex.Message);
            }
            finally
            {
                conn2.Close();
                dr2.Close();
            }
            try
            {

                
                conn2.Open();
                comm2.CommandText="SELECT count(`customer_id`) FROM `transaction` WHERE `date`='"+dts+"' GROUP BY `customer_id`";
                dr2 = comm2.ExecuteReader();
                while (dr2.Read())
                {
                    Label12.Text = dr2.GetValue(0).ToString();
                }
            }
            catch (Exception ex)
            {
                Response.Write(ex.Message);
            }
            finally
            {
                conn2.Close();
                dr2.Close();
            }

            try
            {


                conn2.Open();
                comm2.CommandText = "SELECT sum(`quantity`) FROM `transaction` WHERE `date`='" + dts + "'";
                dr2 = comm2.ExecuteReader();
                while (dr2.Read())
                {
                    Label16.Text = dr2.GetValue(0).ToString();
                }
                dr2.Close();
                comm2.CommandText = "select sum(`money_earn`) FROM `transaction` where `date`>DATE_SUB(NOW(),INTERVAL 1 WEEK)";
                dr2 = comm2.ExecuteReader();
                while (dr2.Read())
                {
                    Label9.Text = dr2.GetValue(0).ToString();
                }
                dr2.Close();
                comm2.CommandText = "SELECT count(DISTINCT `customer_id`) FROM `transaction` WHERE `date`>DATE_SUB(NOW(),INTERVAL 1 WEEK)";
                dr2 = comm2.ExecuteReader();
                while (dr2.Read())
                {
                    Label13.Text = dr2.GetValue(0).ToString();
                }

                dr2.Close();
                comm2.CommandText = "SELECT sum(`quantity`) FROM `transaction` WHERE `date`>DATE_SUB(NOW(),INTERVAL 1 WEEK)";
                dr2 = comm2.ExecuteReader();
                while (dr2.Read())
                {
                    Label17.Text = dr2.GetValue(0).ToString();
                }
                dr2.Close();
                comm2.CommandText = "select sum(`money_earn`) FROM `transaction` where `date`>DATE_SUB(NOW(),INTERVAL 1 MONTH)";
                dr2 = comm2.ExecuteReader();
                while (dr2.Read())
                {
                    Label10.Text = dr2.GetValue(0).ToString();
                }
                dr2.Close();
                comm2.CommandText = "SELECT count(DISTINCT `customer_id`) FROM `transaction` WHERE `date`>DATE_SUB(NOW(),INTERVAL 1 MONTH)";
                dr2 = comm2.ExecuteReader();
                while (dr2.Read())
                {
                    Label14.Text = dr2.GetValue(0).ToString();
                }

                dr2.Close();
                comm2.CommandText = "SELECT sum(`quantity`) FROM `transaction` WHERE `date`>DATE_SUB(NOW(),INTERVAL 1 MONTH)";
                dr2 = comm2.ExecuteReader();
                while (dr2.Read())
                {
                    Label18.Text = dr2.GetValue(0).ToString();
                }

                dr2.Close();
                comm2.CommandText = "select sum(`money_earn`) FROM `transaction` where `date`>DATE_SUB(NOW(),INTERVAL 4 MONTH)";
                dr2 = comm2.ExecuteReader();
                while (dr2.Read())
                {
                    Label11.Text = dr2.GetValue(0).ToString();
                }
                dr2.Close();
                comm2.CommandText = "SELECT count(DISTINCT `customer_id`) FROM `transaction` WHERE `date`>DATE_SUB(NOW(),INTERVAL 4 MONTH)";
                dr2 = comm2.ExecuteReader();
                while (dr2.Read())
                {
                    Label15.Text = dr2.GetValue(0).ToString();
                }

                dr2.Close();
                comm2.CommandText = "SELECT sum(`quantity`) FROM `transaction` WHERE `date`>DATE_SUB(NOW(),INTERVAL 1 MONTH)";
                dr2 = comm2.ExecuteReader();
                while (dr2.Read())
                {
                    Label19.Text = dr2.GetValue(0).ToString();
                }
            }
            catch (Exception ex)
            {
                Response.Write(ex.Message);
            }
            finally
            {
                conn2.Close();
            }
        }

        protected void DropDownList2_SelectedIndexChanged(object sender, EventArgs e)
        {
           String cat1 = DropDownList2.SelectedValue.ToString();
           String id = DropDownList2.SelectedValue.ToString();
           MySqlConnection conn=null;
           MySqlCommand comm = null;
           MySqlDataReader dr = null;
           int i;
           if (id.Equals("Beauty & Personal Care"))
           {
               i = 0;
               DropDownList2.Items[0].Enabled = true;
               while (i <= 33)
               {
                   if (i >= 0 && i <= 5)
                   {
                       DropDownList3.Items[i].Enabled = true;
                   }
                   else
                   {
                       DropDownList2.Items[0].Enabled = true;
                       DropDownList3.Items[i].Enabled = false;
                   }

                   i++;
               }
               DropDownList2.Items[0].Enabled = true;
               Response.Write(DropDownList2.Items[0]);
               query1 = "SELECT `product_subcategory1`,sum(`money_earn`),sum(`quantity`) FROM `transaction` WHERE `product_category`='" + id + "' GROUP BY `product_subcategory1`";

           }

           if (id.Equals("Home & Kitchen"))
           {
               i = 0;
               DropDownList3.Items[0].Enabled = true;
               while (i <= 33)
               {
                   if (i >= 6 && i <= 11)
                   {
                       DropDownList3.Items[i].Enabled = true;
                   }
                   else if(i!=0)
                   {
                       DropDownList3.Items[i].Enabled = false;
                   }

                   i++;
                   query1 = "SELECT `product_subcategory1`,sum(`money_earn`),sum(`quantity`) FROM `transaction` WHERE `product_category`='" + id + "' GROUP BY `product_subcategory1`";
               }


           }
           if (id.Equals("Clothing"))
           {
               i = 0;
               DropDownList3.Items[0].Enabled = true;
               while (i <= 33)
               {
                   if (i >= 12 && i <= 16)
                   {
                       DropDownList3.Items[i].Enabled = true;
                   }
                   else if(i!=0)
                   {
                       DropDownList3.Items[i].Enabled = false;
                   }

                   i++;
                   query1 = "SELECT `product_subcategory1`,sum(`money_earn`),sum(`quantity`) FROM `transaction` WHERE `product_category`='" + id + "' GROUP BY `product_subcategory1`";
               }


           }

           if (id.Equals("Phones & Computers"))
           {
               i = 0;
               DropDownList3.Items[0].Enabled = true;
               query1 = "SELECT `product_subcategory1`,sum(`money_earn`),sum(`quantity`) FROM `transaction` WHERE `product_category`='" + id + "' GROUP BY `product_subcategory1`";
               while (i <= 33)
               {
                   if (i >= 17 && i <= 21)
                   {
                       DropDownList3.Items[i].Enabled = true;
                   }
                   else if(i!=0)
                   {
                       DropDownList3.Items[i].Enabled = false;
                   }

                   i++;
               }


           }

           if (id.Equals("TV,Audio & Video"))
           {
               i = 0;
               DropDownList3.Items[0].Enabled = true;
               query1 = "SELECT `product_subcategory1`,sum(`money_earn`),sum(`quantity`) FROM `transaction` WHERE `product_category`='" + id + "' GROUP BY `product_subcategory1`";
               while (i <= 33)
               {
                   if (i >= 22 && i <= 25)
                   {
                       DropDownList3.Items[i].Enabled = true;
                   }
                   else if(i!=0)
                   {
                       DropDownList3.Items[i].Enabled = false;
                   }

                   i++;
               }


           }

           if (id.Equals("Food & Beverages"))
           {
               i = 0;
               DropDownList3.Items[0].Enabled = true;
               query1 = "SELECT `product_subcategory1`,sum(`money_earn`),sum(`quantity`) FROM `transaction` WHERE `product_category`='" + id + "' GROUP BY `product_subcategory1`";
               while (i <= 33)
               {
                   if (i >= 26 && i <= 33)
                   {
                       DropDownList3.Items[i].Enabled = true;
                   }
                   else if(i!=0)
                   {
                       DropDownList3.Items[i].Enabled = false;
                   }

                   i++;
               }


           }

           DataTable dt = new DataTable();

           dt.Columns.Add("Sr.No.", typeof(int));

           dt.Columns.Add("Sub-Category", typeof(string));

           dt.Columns.Add("Sales", typeof(string));

           dt.Columns.Add("Total Amount", typeof(Int32));

            int j=1;
            try
            {
                conn = new MySqlConnection(GetConnectionString());
                conn.Open();
                comm = new MySqlCommand(query1, conn);
                dr = comm.ExecuteReader();
                while (dr.Read())
                {
                    dt.Rows.Add(j++, dr.GetValue(0).ToString(), dr.GetValue(2).ToString(), dr.GetInt32(1));
                }
                GridView1.DataSource = dt;

                GridView1.DataBind();
            }

            catch (Exception ex)
            {
                Response.Write(ex.Message);
            }

            finally
            {
                dr.Close();
                conn.Close();
            }
            DropDownList2.Items[0].Enabled = true;
        }

        protected void DropDownList3_SelectedIndexChanged(object sender, EventArgs e)
        {
            String cat2 = DropDownList3.SelectedValue.ToString();
            String id2 = DropDownList3.SelectedValue.ToString();
            String id3 = DropDownList2.SelectedValue.ToString();
            MySqlConnection conn = null;
            MySqlCommand comm = null;
            MySqlDataReader dr = null;

             DataTable dt = new DataTable();

           dt.Columns.Add("Sr.No.", typeof(int));

           dt.Columns.Add("Product Name", typeof(string));

           dt.Columns.Add("Company", typeof(string));

           dt.Columns.Add("Sales", typeof(string));

           dt.Columns.Add("Total Amount", typeof(Int32));

            dt.Columns.Add("In Stock", typeof(Int32));

            try
            {
                int k = 1;
                conn = new MySqlConnection(GetConnectionString());
                conn.Open();
                comm = new MySqlCommand("select `product_name`,`company`,sum(`quantity`),sum(`money_earn`),`available_quantity` FROM `transaction` WHERE `product_category`='" + id3 + "' and `product_subcategory1`='" + id2 + "' GROUP BY `product_name`", conn);
                dr = comm.ExecuteReader();
                //Response.Write("entry"+id2+" "+id3);
                while (dr.Read())
                {
                    
                    dt.Rows.Add(k++,dr.GetValue(0).ToString(),dr.GetValue(1).ToString(),dr.GetValue(2).ToString(),dr.GetInt32(3),dr.GetInt32(4));
                }

                GridView1.DataSource = dt;

                GridView1.DataBind();
            }

            catch (Exception ex)
            {
                Response.Write(ex.Message);
            }

            finally
            {
                //dr.Close();
                conn.Close();
            }

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            String company = TextBox2.Text;
            String query = "SELECT `product_name`,sum(`quantity`),sum(`money_earn`),`available_quantity` FROM `transaction` WHERE `company`='" + company + "' GROUP BY `product_name`";
            MySqlConnection conn = null;
            MySqlCommand comm = null;
            MySqlDataReader dr = null;

            DataTable dt = new DataTable();

            dt.Columns.Add("Sr.No.", typeof(int));

            dt.Columns.Add("Product Name", typeof(string));



            dt.Columns.Add("Sales", typeof(string));

            dt.Columns.Add("Total Amount", typeof(Int32));

            dt.Columns.Add("In Stock", typeof(Int32));

            try
            {
                int k = 1;
                conn = new MySqlConnection(GetConnectionString());
                conn.Open();
                comm = new MySqlCommand(query, conn);
                dr = comm.ExecuteReader();
                //Response.Write("entry" + id2 + " " + id3);
                while (dr.Read())
                {

                    dt.Rows.Add(k++, dr.GetValue(0).ToString(), dr.GetValue(1).ToString(), dr.GetValue(2).ToString(), dr.GetInt32(3));
                }

                GridView1.DataSource = dt;

                GridView1.DataBind();
            }

            catch (Exception ex)
            {
                Response.Write(ex.StackTrace);
            }

            finally
            {
                //dr.Close();
                conn.Close();
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            String pid = TextBox1.Text;
            String query = "SELECT `product_name`,`company`,`money_earn`,`date` FROM `transaction` WHERE `product_id`='" + pid + "'";
            MySqlConnection conn = null;
            MySqlCommand comm = null;
            MySqlDataReader dr = null;

            DataTable dt = new DataTable();

            dt.Columns.Add("Sr.No.", typeof(int));

            dt.Columns.Add("Product Name", typeof(string));



            dt.Columns.Add("Company", typeof(string));

            dt.Columns.Add("Total Amount", typeof(Int32));

            dt.Columns.Add("Date", typeof(String));

            try
            {
                int k = 1;
                conn = new MySqlConnection(GetConnectionString());
                conn.Open();
                comm = new MySqlCommand(query, conn);
                dr = comm.ExecuteReader();
                //Response.Write("entry" + id2 + " " + id3);
                while (dr.Read())
                {

                    dt.Rows.Add(k++, dr.GetValue(0).ToString(), dr.GetValue(1).ToString(), dr.GetValue(2).ToString(), dr.GetMySqlDateTime(3).ToString());
                }

                GridView1.DataSource = dt;
                GridView1.DataBind();
            }

            catch (Exception ex)
            {
                Response.Write(ex.Message);
            }

            finally
            {
                //dr.Close();
                conn.Close();
            }
        }
    }
}