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
    public partial class Planning : System.Web.UI.Page
    {
        MySqlConnection conn;
        protected void Page_Load(object sender, EventArgs e)
        {
            List<int> pastsales1 = new List<int>();
            List<double> pastamount1 = new List<double>();

            List<int> pastsales2 = new List<int>();
            List<double> pastamount2 = new List<double>();
            
            List<int> currentsales=new List<int>();
            List<double> currentamount=new List<double>();
             List<int> futuresales=new List<int>();
            List<double> futureamount=new List<double>();
            List<String> parameters=new List<String>();

            List<double> percdiffsales = new List<double>();

            List<double> percdiffamount = new List<double>();


            RadioButtonList1.SelectedValue = "Quarterly";

            if (!IsPostBack)
            {
                conn = new MySqlConnection(GetConnectionString());
                try
                {
                    conn.Open();
                    MySqlCommand comm=new MySqlCommand("Select p.Category_ID,c.Category_Name, Sum(t.Quantity),Sum(t.Amount) from Current_Store_Products p, Category c, Transactions t,Bills b where p.Category_ID=c.Category_ID and t.Product_ID=p.Product_ID and b.Bill_No=t.Bill_No and YEAR(b.Bill_Date) = YEAR(NOW()) and QUARTER(Bill_Date)=QUARTER(NOW()) group by(c.Category_ID)",conn);
                    MySqlDataReader dr = comm.ExecuteReader();

                    while (dr.Read())
                    {
                        parameters.Add(dr.GetValue(1).ToString());
                        currentsales.Add(dr.GetInt32(2));
                        currentamount.Add(dr.GetDouble(3));
                    }
                    dr.Close();

                    comm.CommandText = "Select p.Category_ID,c.Category_Name, Sum(t.Quantity),Sum(t.Amount) from Current_Store_Products p, Category c, Transactions t,Bills b where p.Category_ID=c.Category_ID and t.Product_ID=p.Product_ID and b.Bill_No=t.Bill_No and YEAR(b.Bill_Date) = YEAR(NOW())-1 and QUARTER(Bill_Date)=QUARTER(NOW()) group by(c.Category_ID)";
                    while (dr.Read())
                    {
                        
                        pastsales1.Add(dr.GetInt32(2));
                        pastamount1.Add(dr.GetDouble(3));
                    }
                    dr.Close();

                    comm.CommandText = "Select p.Category_ID,c.Category_Name, Sum(t.Quantity),Sum(t.Amount) from Current_Store_Products p, Category c, Transactions t,Bills b where p.Category_ID=c.Category_ID and t.Product_ID=p.Product_ID and b.Bill_No=t.Bill_No and YEAR(b.Bill_Date) = YEAR(NOW())-1 and QUARTER(Bill_Date)=QUARTER(NOW())+1 group by(c.Category_ID)";
                    while (dr.Read())
                    {

                        pastsales2.Add(dr.GetInt32(2));
                        pastamount2.Add(dr.GetDouble(3));
                    }

                    dr.Close();




                }
                catch (Exception ex)
                { Response.Write(ex.Message); }
                finally { conn.Close(); }

                for (int i = 0; i < pastsales1.Count; i++)
                {
                    int ps1=pastsales1[i];

                    int ps2 = pastsales2[i];

                    double d = (double)((ps2 - ps1) / ps1);

                    percdiffsales.Add(d);

                    double pa1 = pastamount1[i];
                    double pa2 = pastamount2[i];

                    double dp = (pa2 - pa1) / pa1;

                    percdiffamount.Add(dp);
                }


                for (int i = 0; i < currentsales.Count; i++)
                {
                    double pds = percdiffsales[i];
                    double pda = percdiffamount[i];

                    int cs = currentsales[i];
                    double ca = currentamount[i];

                    int fs = (int)(pds + cs * pds);
                    double fa = pda + ca * pda;

                    futuresales.Add(fs);
                    futureamount.Add(fa);
                }

                DataTable table = new DataTable();
                table.Columns.Add("Category",typeof(String));
                table.Columns.Add("Current Sales", typeof(int));
                table.Columns.Add("Future Sales", typeof(int));
                table.Columns.Add("Current Amount", typeof(double));
                table.Columns.Add("Future Amount", typeof(double));

                for (int i = 0; i < parameters.Count; i++)
                {
                    table.Rows.Add(parameters[i], currentsales[i], futuresales[i], currentamount[i], futureamount[i]);
                }

                GridView1.DataSource = table;
                GridView1.DataBind();

            }
        }

        public static string GetConnectionString()
        {
            string connStr = String.Format("server={0};user id={1}; password={2};" +
              "database=footpri8_RMS2; pooling=true", "66.147.244.153",
              "footpri8", "Yhu#56gj6!");

            return connStr;
        }

        protected void RadioButtonList1_SelectedIndexChanged(object sender, EventArgs e)
        {
           if(RadioButtonList1.SelectedValue.Equals("Quarterly"))
           {
               QuarterlyStats();
           }
            if(RadioButtonList1.SelectedValue.Equals("Monthly"))
            {
                MonthlyStats();
            }
        }


        protected void QuarterlyStats()
        {
            List<int> pastsales1 = new List<int>();
            List<double> pastamount1 = new List<double>();

            List<int> pastsales2 = new List<int>();
            List<double> pastamount2 = new List<double>();
            
            List<int> currentsales=new List<int>();
            List<double> currentamount=new List<double>();
             List<int> futuresales=new List<int>();
            List<double> futureamount=new List<double>();
            List<String> parameters=new List<String>();

            List<double> percdiffsales = new List<double>();

            List<double> percdiffamount = new List<double>();


            RadioButtonList1.SelectedValue = "Quarterly";

           
            
                conn = new MySqlConnection(GetConnectionString());
                try
                {
                    conn.Open();
                    MySqlCommand comm=new MySqlCommand("Select p.Category_ID,c.Category_Name, Sum(t.Quantity),Sum(t.Amount) from Current_Store_Products p, Category c, Transactions t,Bills b where p.Category_ID=c.Category_ID and t.Product_ID=p.Product_ID and b.Bill_No=t.Bill_No and YEAR(b.Bill_Date) = YEAR(NOW()) and QUARTER(Bill_Date)=QUARTER(NOW()) group by(c.Category_ID)",conn);
                    MySqlDataReader dr = comm.ExecuteReader();

                    while (dr.Read())
                    {
                        parameters.Add(dr.GetValue(1).ToString());
                        currentsales.Add(dr.GetInt32(2));
                        currentamount.Add(dr.GetDouble(3));
                    }
                    dr.Close();

                    comm.CommandText = "Select p.Category_ID,c.Category_Name, Sum(t.Quantity),Sum(t.Amount) from Current_Store_Products p, Category c, Transactions t,Bills b where p.Category_ID=c.Category_ID and t.Product_ID=p.Product_ID and b.Bill_No=t.Bill_No and YEAR(b.Bill_Date) = YEAR(NOW())-1 and QUARTER(Bill_Date)=QUARTER(NOW()) group by(c.Category_ID)";
                    while (dr.Read())
                    {
                        
                        pastsales1.Add(dr.GetInt32(2));
                        pastamount1.Add(dr.GetDouble(3));
                    }
                    dr.Close();

                    comm.CommandText = "Select p.Category_ID,c.Category_Name, Sum(t.Quantity),Sum(t.Amount) from Current_Store_Products p, Category c, Transactions t,Bills b where p.Category_ID=c.Category_ID and t.Product_ID=p.Product_ID and b.Bill_No=t.Bill_No and YEAR(b.Bill_Date) = YEAR(NOW())-1 and QUARTER(Bill_Date)=QUARTER(NOW())+1 group by(c.Category_ID)";
                    while (dr.Read())
                    {

                        pastsales2.Add(dr.GetInt32(2));
                        pastamount2.Add(dr.GetDouble(3));
                    }

                    dr.Close();




                }
                catch (Exception ex)
                { Response.Write(ex.Message); }
                finally { conn.Close(); }

                for (int i = 0; i < pastsales1.Count; i++)
                {
                    int ps1=pastsales1[i];

                    int ps2 = pastsales2[i];

                    double d = (double)((ps2 - ps1) / ps1);

                    percdiffsales.Add(d);

                    double pa1 = pastamount1[i];
                    double pa2 = pastamount2[i];

                    double dp = (pa2 - pa1) / pa1;

                    percdiffamount.Add(dp);
                }


                for (int i = 0; i < currentsales.Count; i++)
                {
                    double pds = percdiffsales[i];
                    double pda = percdiffamount[i];

                    int cs = currentsales[i];
                    double ca = currentamount[i];

                    int fs = (int)(pds + cs * pds);
                    double fa = pda + ca * pda;

                    futuresales.Add(fs);
                    futureamount.Add(fa);
                }

                DataTable table = new DataTable();
                table.Columns.Add("Category",typeof(String));
                table.Columns.Add("Current Sales", typeof(int));
                table.Columns.Add("Future Sales", typeof(int));
                table.Columns.Add("Current Amount", typeof(double));
                table.Columns.Add("Future Amount", typeof(double));

                for (int i = 0; i < parameters.Count; i++)
                {
                    table.Rows.Add(parameters[i], currentsales[i], futuresales[i], currentamount[i], futureamount[i]);
                }

                GridView1.DataSource = table;
                GridView1.DataBind();

        }

            protected void MonthlyStats()
            {
                List<int> pastsales1 = new List<int>();
            List<double> pastamount1 = new List<double>();

            List<int> pastsales2 = new List<int>();
            List<double> pastamount2 = new List<double>();
            
            List<int> currentsales=new List<int>();
            List<double> currentamount=new List<double>();
             List<int> futuresales=new List<int>();
            List<double> futureamount=new List<double>();
            List<String> parameters=new List<String>();

            List<double> percdiffsales = new List<double>();

            List<double> percdiffamount = new List<double>();


            RadioButtonList1.SelectedValue = "Quarterly";

            
                conn = new MySqlConnection(GetConnectionString());
                try
                {
                    conn.Open();
                    MySqlCommand comm=new MySqlCommand("Select p.Category_ID,c.Category_Name, Sum(t.Quantity),Sum(t.Amount) from Current_Store_Products p, Category c, Transactions t,Bills b where p.Category_ID=c.Category_ID and t.Product_ID=p.Product_ID and b.Bill_No=t.Bill_No and YEAR(b.Bill_Date) = YEAR(NOW()) and MONTH(Bill_Date)=MONTH(NOW()) group by(c.Category_ID)",conn);
                    MySqlDataReader dr = comm.ExecuteReader();

                    while (dr.Read())
                    {
                        parameters.Add(dr.GetValue(1).ToString());
                        currentsales.Add(dr.GetInt32(2));
                        currentamount.Add(dr.GetDouble(3));
                    }
                    dr.Close();

                    comm.CommandText = "Select p.Category_ID,c.Category_Name, Sum(t.Quantity),Sum(t.Amount) from Current_Store_Products p, Category c, Transactions t,Bills b where p.Category_ID=c.Category_ID and t.Product_ID=p.Product_ID and b.Bill_No=t.Bill_No and YEAR(b.Bill_Date) = YEAR(NOW())-1 and MONTH(Bill_Date)=MONTH(NOW()) group by(c.Category_ID)";
                    while (dr.Read())
                    {
                        
                        pastsales1.Add(dr.GetInt32(2));
                        pastamount1.Add(dr.GetDouble(3));
                    }
                    dr.Close();

                    comm.CommandText = "Select p.Category_ID,c.Category_Name, Sum(t.Quantity),Sum(t.Amount) from Current_Store_Products p, Category c, Transactions t,Bills b where p.Category_ID=c.Category_ID and t.Product_ID=p.Product_ID and b.Bill_No=t.Bill_No and YEAR(b.Bill_Date) = YEAR(NOW())-1 and MONTH(Bill_Date)=MONTH(NOW())+1 group by(c.Category_ID)";
                    while (dr.Read())
                    {

                        pastsales2.Add(dr.GetInt32(2));
                        pastamount2.Add(dr.GetDouble(3));
                    }

                    dr.Close();




                }
                catch (Exception ex)
                { Response.Write(ex.Message); }
                finally { conn.Close(); }

                for (int i = 0; i < pastsales1.Count; i++)
                {
                    int ps1=pastsales1[i];

                    int ps2 = pastsales2[i];

                    double d = (double)((ps2 - ps1) / ps1);

                    percdiffsales.Add(d);

                    double pa1 = pastamount1[i];
                    double pa2 = pastamount2[i];

                    double dp = (pa2 - pa1) / pa1;

                    percdiffamount.Add(dp);
                }


                for (int i = 0; i < currentsales.Count; i++)
                {
                    double pds = percdiffsales[i];
                    double pda = percdiffamount[i];

                    int cs = currentsales[i];
                    double ca = currentamount[i];

                    int fs = (int)(pds + cs * pds);
                    double fa = pda + ca * pda;

                    futuresales.Add(fs);
                    futureamount.Add(fa);
                }

                DataTable table = new DataTable();
                table.Columns.Add("Category",typeof(String));
                table.Columns.Add("Current Sales", typeof(int));
                table.Columns.Add("Future Sales", typeof(int));
                table.Columns.Add("Current Amount", typeof(double));
                table.Columns.Add("Future Amount", typeof(double));

                for (int i = 0; i < parameters.Count; i++)
                {
                    table.Rows.Add(parameters[i], currentsales[i], futuresales[i], currentamount[i], futureamount[i]);
                }

                GridView1.DataSource = table;
                GridView1.DataBind();

            }
    }
}