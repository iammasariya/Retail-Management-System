using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MySql.Data.MySqlClient;
namespace RMS3
{
    public partial class Combos : System.Web.UI.Page
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
                    MySqlCommand comm = new MySqlCommand("Select * from Combopack", conn);
                    MySqlDataReader dr = comm.ExecuteReader();
                    CombosGrid.DataSource = dr;
                    CombosGrid.DataBind();
                    dr.Close();


                }
                catch (Exception ex)
                { //Response.Write("In Page Load"+ex.Message); 
                }
                finally { conn.Close(); }

            }
        }

        protected void TextBox6_TextChanged(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            conn = new MySqlConnection(GetConnectionString());
            int count=0;
            ViewState["comboprice"] = true;
            try
            {
                conn.Open();
                MySqlCommand comm = new MySqlCommand("Select count(*) from Combopack", conn);
                MySqlDataReader dr = comm.ExecuteReader();
                dr.Read();
                count = dr.GetInt32(0);
                dr.Close();
            }
            catch (Exception ex)
            { Response.Write("In Button1Click"+ex.Message); }
            finally { conn.Close(); }
            count++;

            TextBox1.Text = "CB" + count.ToString();
            Label9.Text = "0";
            Label10.Text = "Rs.";
            TextBox3.Text = "10";

			
        }

        public static string GetConnectionString()
        {
            string connStr = String.Format("server={0};user id={1}; password={2};" +
              "database=footpri8_RMS2; pooling=true", "66.147.244.153",
              "footpri8", "Yhu#56gj6!");

            return connStr;
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            String cbid = TextBox1.Text;
            conn = new MySqlConnection(GetConnectionString());

            try
            {
                conn.Open();
                MySqlCommand comm = new MySqlCommand("Select Stock, Amount, DATE_FORMAT(Valid_From, '%d-%m-%Y'),DATE_FORMAT(Valid_To, '%d-%m-%Y') from Combopack where Combo_ID='" + cbid + "'", conn);
                MySqlDataReader dr = comm.ExecuteReader();
                dr.Read();
                TextBox3.Text = dr.GetValue(0).ToString();
                TextBox2.Text = dr.GetValue(1).ToString();
                TextBox4.Text = dr.GetValue(2).ToString();
                TextBox5.Text = dr.GetValue(3).ToString();
                dr.Close();

                comm.CommandText = "Select p.Product_ID, p.Company_Name, p.Product_Name, c.Quantity from Current_Store_Products p,Combopack_Schemes c where c.Product_ID=p.Product_ID and c.Combo_ID='" + cbid + "'";
                dr = comm.ExecuteReader();
                GridView1.DataSource = dr;
                GridView1.DataBind();
                dr.Close();

                comm.CommandText = "Select Sum(Quantity),Sum(Price) from Combopack_Schemes where Combo_ID='" + cbid + "'";
                dr = comm.ExecuteReader();
                dr.Read();
                Label9.Text = dr.GetValue(0).ToString();
                Label10.Text = dr.GetValue(1).ToString();
                dr.Close();


            }
            catch (Exception ex)
            { Response.Write("In Button2Click"+ex.Message); }
            finally { conn.Close(); }
			
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            String parameter = RadioButtonList1.SelectedValue.ToString();
            String prparam = TextBox7.Text;

            String sql = "";
            if (parameter.Equals("By Product ID"))
            {
                sql = "Select Product_ID,CONCAT(Company_Name,' ',Product_Name,' ',Retail_Price) from Current_Store_Products where Product_ID='" + prparam + "' and Stock<>0";
            }

            if (parameter.Equals("By Product Name"))
            {
                sql = "Select Product_ID,CONCAT(Company_Name,' ',Product_Name,' ',Retail_Price) from Current_Store_Products where Product_Name like'%" + prparam + "%' and Stock<>0";
            }

            conn = new MySqlConnection(GetConnectionString());

            try
            {
                conn.Open();
                MySqlCommand comm = new MySqlCommand(sql, conn);
                MySqlDataReader dr = comm.ExecuteReader();
                ComboProductsList.DataSource = dr;
                ComboProductsList.DataTextField = "CONCAT(Company_Name,' ',Product_Name,' ',Retail_Price)";
                ComboProductsList.DataValueField = "Product_ID";
                ComboProductsList.DataBind();
                dr.Close();
            }
            catch (Exception ex)
            { Response.Write("InButton3Click"+ex.Message); }
            finally { conn.Close(); }
            BulletedList1.DataSource = null;
            BulletedList1.DataBind();
			
            
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            conn = new MySqlConnection(GetConnectionString());
            int quant = int.Parse(TextBox6.Text);
            List<String> productid = new List<String>();
            String cbid = TextBox1.Text;

            double cprice = 0.0;
            BulletedList1.DataSource = null;
            BulletedList1.DataBind();
            

            foreach (ListItem item in ComboProductsList.Items)
            {
                if (item.Selected)
                {
                    productid.Add(item.Value.ToString());
                }
            }

            try
            {
                conn.Open();
                MySqlCommand comm=new MySqlCommand();
                comm.Connection=conn;
                foreach (String prid in productid)
                {
                    comm.CommandText = "Select count(*),CONCAT(t.Product_ID,' ',p.Company_Name,' ', p.Product_Name) from Transactions t,Current_Store_Products p where t.Bill_No in (Select Bill_No from Transactions where Product_ID = '"+prid+"') and t.Product_ID <> '"+prid+"' and t.Product_ID=p.Product_ID group by t.Product_ID order by count(*) desc LIMIT 0,3";
                    MySqlDataReader dr = comm.ExecuteReader();

                    BulletedList1.DataSource = dr;
                    BulletedList1.DataTextField = "CONCAT(t.Product_ID,' ',p.Company_Name,' ', p.Product_Name)";
                    BulletedList1.DataBind();
                   dr.Close();

                   comm.CommandText = "Select Retail_Price from Current_Store_Products where Product_ID ='" + prid + "'";

                   dr = comm.ExecuteReader();
                   dr.Read();
                   cprice = quant * dr.GetDouble(0);
                   //Label10.Text = cprice.ToString();
                   //TextBox2.Text = cprice.ToString();
                   dr.Close();



                   comm.CommandText = "Insert into Combopack_Schemes values ('" + cbid + "','" + prid + "'," + quant + ","+cprice+")";
                   comm.ExecuteNonQuery();

                   comm.CommandText = "Select Sum(Quantity),Sum(Price) from Combopack_Schemes where Combo_ID='" + cbid + "'";
                   dr = comm.ExecuteReader();
                   dr.Read();
                   Label9.Text = dr.GetValue(0).ToString();
                   Label10.Text = dr.GetValue(1).ToString();
                   TextBox2.Text = dr.GetValue(1).ToString();
                   dr.Close();

                  }


                comm.CommandText = "Select p.Product_ID, p.Company_Name, p.Product_Name, c.Quantity from Current_Store_Products p,Combopack_Schemes c where c.Product_ID=p.Product_ID and c.Combo_ID='" + cbid + "'";
                MySqlDataReader dr1 = comm.ExecuteReader();
                GridView1.DataSource = dr1;
                GridView1.DataBind();
                dr1.Close();
                

               
                

            }
            catch (Exception ex)
            { Response.Write(ex.Message); }
            finally { conn.Close(); }
			
        }

        protected void Button5_Click(object sender, EventArgs e)
        {
            conn = new MySqlConnection(GetConnectionString());
            String cbid = TextBox1.Text;
            String stock = TextBox3.Text;
            String amt = TextBox2.Text;
            String validfrom = TextBox4.Text;
            String validto = TextBox5.Text;

            try
            {
                conn.Open();
                MySqlCommand comm = new MySqlCommand("Insert into Combopack values ('" + cbid + "'," + stock + "," + amt + ",STR_TO_DATE('" + validfrom + "','%d-%m-%Y'),STR_TO_DATE('" + validto + "','%d-%m-%Y'))", conn);
                comm.ExecuteNonQuery();
            }
            catch (Exception ex)
            { Response.Write(ex.Message); }
            finally { conn.Close(); }
            int count = 0;
            try
            {
                conn.Open();
                MySqlCommand comm = new MySqlCommand("Select count(*) from Combopack", conn);
                MySqlDataReader dr = comm.ExecuteReader();
                dr.Read();
                count = dr.GetInt32(0);
                dr.Close();
            }
            catch (Exception ex)
            { Response.Write(ex.Message); }
            finally { conn.Close(); }
            count++;

            TextBox1.Text = "CB" + count.ToString();
            TextBox2.Text = "";
            TextBox3.Text = "";
            TextBox7.Text = "";
            Label9.Text = "0";
            Label10.Text = "Rs.";
            TextBox3.Text = "10";
            GridView1.DataSource = null;
            GridView1.DataBind();
            ComboProductsList.DataSource = null;
            ComboProductsList.DataBind();
            RadioButtonList1.ClearSelection();




        }
    }
}