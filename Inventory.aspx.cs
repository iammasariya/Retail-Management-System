using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.OleDb;
using MySql.Data.MySqlClient;

namespace RMS3
{
    public partial class Inventory : System.Web.UI.Page
    {
        String id,upc,catg,subcat;
        int i = 0;
        String query1="";
        MySqlCommand comm = null;
        MySqlDataReader rd = null;
        MySqlConnection conn = null;
        MySqlCommand comm1 = null,comm2=null;
        MySqlDataReader rd1 = null,rd2=null;
        MySqlConnection conn1 = null,conn2=null;
        int j = 0;
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                conn1 = new MySqlConnection(GetConnectionString());
                conn1.Open();
                comm1 = new MySqlCommand("select DISTINCT company from daily_personal_needs", conn1);
                rd1 = comm1.ExecuteReader();
               // Response.Write("rd");
                j = 0;
                while (rd1.Read())
                {
                    //Response.Write("ABC" + rd.GetValue(0).ToString());
                    DropDownList5.Items.Add(rd1.GetValue(0).ToString());
                    j++;
                }

            }
            catch (Exception ed)
            {
                Response.Write(ed.Message);
            }
            finally
            {
                conn1.Close();
                //Response.Redirect("~/WebForm1.aspx");

            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {

        }

        public static string GetConnectionString()
        {
            string connStr = String.Format("server={0};user id={1}; password={2};" +
              "database=footpri8_RMS1; pooling=true", "66.147.244.153",
              "footpri8", "Yhu#56gj6!");

            return connStr;
        }
        protected void cat_SelectedIndexChanged(object sender, EventArgs e)
        {

            id = cat.SelectedValue.ToString();



            if (id.Equals("Beauty & Personal Care"))
            {
                i = 0;

                while (i <= 32)
                {
                    if (i >= 0 && i <= 4)
                    {
                        subcat1.Items[i].Enabled = true;
                    }
                    else
                    {
                        subcat1.Items[i].Enabled = false;
                    }

                    i++;
                }


            }
            

            if (id.Equals("Home & Kitchen"))
            {
                i = 0;
                while (i <= 32)
                {
                    if (i >= 5 && i <= 10)
                    {
                        subcat1.Items[i].Enabled = true;
                    }
                    else
                    {
                        subcat1.Items[i].Enabled = false;
                    }

                    i++;
                }

            }

            if (id.Equals("Clothing"))
            {
                i = 0;
                while (i <= 32)
                {
                    if (i >= 11 && i <= 15)
                    {
                        subcat1.Items[i].Enabled = true;
                    }
                    else
                    {
                        subcat1.Items[i].Enabled = false;
                    }

                    i++;
                }


            }

            if (id.Equals("Phones & Computers"))
            {
                i = 0;
                while (i <= 32)
                {
                    if (i >= 16 && i <= 20)
                    {
                        subcat1.Items[i].Enabled = true;
                    }
                    else
                    {
                        subcat1.Items[i].Enabled = false;
                    }

                    i++;
                }


            }

            if (id.Equals("TV,Audio,Video"))
            {
                i = 0;
                while (i <= 32)
                {
                    if (i >= 21 && i <= 24)
                    {
                        subcat1.Items[i].Enabled = true;
                    }
                    else
                    {
                        subcat1.Items[i].Enabled = false;
                    }

                    i++;
                }

            }

            if (id.Equals("Food & Beverages"))
            {
                i = 0;
                while (i <= 32)
                {
                    if (i >= 25 && i <= 32)
                    {
                        subcat1.Items[i].Enabled = true;
                    }
                    else
                    {
                        subcat1.Items[i].Enabled = false;
                    }

                    i++;
                }


            }

           
            id = cat.SelectedValue.ToString();
           // Response.Write(id);
            if (id.Equals("Beauty & Personal Care"))
            {
                query1 = "select DISTINCT company from daily_personal_needs";
            }
            else if (id.Equals("Clothing"))
            {
                query1 = "select DISTINCT company from clothing";
            }
            else if (id.Equals("Home & Kitchen"))
            {
                query1 = "select DISTINCT company from home_kitchen";
            }
            else if (id.Equals("Phones & Computers"))
            {
                query1 = "select DISTINCT company from phone_computer";
            }
            else if (id.Equals("TV,Audio,Video"))
            {
                query1 = "select DISTINCT company from tv_audio_video";
            }
            else if (id.Equals("Food & Beverages"))
            {
                query1 = "select DISTINCT company from food_beverages";
            }


            //Response.Write(query1);
            
            
            try
            {
                conn = new MySqlConnection(GetConnectionString());
                conn.Open();
                comm = new MySqlCommand(query1,conn);
                rd = comm.ExecuteReader();
                //Response.Write("rd");
                j = 0;
                DropDownList5.Items.Clear();
                while (rd.Read())
                {
                    //Response.Write("ABC" + rd.GetValue(0).ToString());
                    DropDownList5.Items.Add(rd.GetValue(0).ToString());
                    j++;
                }

            }
            catch (Exception ed)
            {
                Response.Write(ed.StackTrace);
            }
            finally
            {
                conn.Close();
                //Response.Redirect("~/WebForm1.aspx");

            }
        }

        protected void subcat1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void DropDownList5_SelectedIndexChanged(object sender, EventArgs e)
        {
            
        }

        protected void TextBox4_TextChanged(object sender, EventArgs e)
        {
           

        }

        protected void addButton_Click(object sender, EventArgs e)
        {
            Response.Write("clicked");
            upc = TextBox4.Text;
            Response.Write("upc: "+upc);
            TextBox7.Text = upc;
            try
            {
                conn2 = new MySqlConnection(GetConnectionString());
                conn2.Open();
                comm2 = new MySqlCommand("select product_category,product_subcategory1 from product_details where product_id='" + upc + "'", conn2);
                rd2 = comm2.ExecuteReader();
                Response.Write("rd");
                j = 0;
                i = 0;
                while (rd2.Read())
                {
                    catg = rd2.GetValue(0).ToString();
                    subcat = rd2.GetValue(1).ToString();
                   
                }
                while (j < 6)
                {
                    if (cat.Items[j].Equals(catg))
                    {
                        cat.Items[j].Enabled = true;
                    }
                }
                while (i <= 32)
                {
                    if (subcat1.Items[j].Equals(subcat))
                    {
                        subcat1.Items[j].Enabled = true;
                    }
                }
            }
            catch (Exception ed)
            {
                Response.Write(ed.StackTrace);
            }
            finally
            {
                conn2.Close();
                //Response.Redirect("~/WebForm1.aspx");

            }
        }

        protected void submit2_Click(object sender, EventArgs e)
        {
            Response.Write("clicked");
            upc = TextBox4.Text;
            Response.Write("upc: " + upc);
            TextBox7.Text = upc;
            try
            {
                conn2 = new MySqlConnection(GetConnectionString());
                conn2.Open();
                comm2 = new MySqlCommand("select product_category,product_subcategory1 from product_details where product_id='" + upc + "'", conn2);
                rd2 = comm2.ExecuteReader();
                Response.Write("rd");
                j = 0;
                i = 0;
                while (rd2.Read())
                {
                    String catg = rd2.GetValue(0).ToString();
                    String subcat = rd2.GetValue(1).ToString();
                    while (j < 6)
                    {
                        if (cat.Items[j].Equals(catg))
                        {
                            cat.Items[j].Enabled = true;
                            break;
                        }
                    }
                    while (i <= 32)
                    {
                        if (subcat1.Items[j].Equals(subcat))
                        {
                            subcat1.Items[j].Enabled = true;
                            break;
                        }
                    }
                }

            }
            catch (Exception ed)
            {
                Response.Write(ed.StackTrace);
            }
            finally
            {
                conn2.Close();
                //Response.Redirect("~/WebForm1.aspx");

            }
        }
    }
}