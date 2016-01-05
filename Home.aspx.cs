using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MySql.Data.MySqlClient;
using System.Drawing;


namespace RMS3
{
    public partial class Home : System.Web.UI.Page
    {
        MySqlConnection conn;
        MySqlCommand comm;
        int x = 0;

        String query;
        String todaysdate;
        String querya, queryb;
        String date1, month1, week1, quarter1;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!(IsPostBack))
            {
                conn = new MySqlConnection(GetConnectionString());
                String month = DateTime.Now.Month.ToString();
                String year = DateTime.Now.Year.ToString();
                //Label4.Text = month;
                int quant = 0;
                int amt = 0;


                if (month.Equals("1") || month.Equals("2") || month.Equals("3"))
                {
                    query = "SELECT Quantity, Amount FROM Transactions WHERE Bill_No IN ( SELECT Bill_No FROM Bills WHERE Bill_Date BETWEEN  '2013-01-01'AND  DATE_SUB(DATE_FORMAT(NOW(),'%y-%m-%d'),INTERVAL 1 DAY))";
                    querya = "Select DATE_FORMAT(Bill_Date,'%d-%M-%Y') from Bills WHERE Bill_Date BETWEEN  '2013-04-01'AND  DATE_FORMAT(NOW(),'%y-%m-%d') GROUP BY Bill_Date";
                    queryb = "Select (WEEK(Bill_Date)) from Bills WHERE Bill_Date BETWEEN  '2013-01-01'AND  DATE_FORMAT(NOW(),'%y-%m-%d') GROUP BY WEEK(Bill_Date)";
                }
                if (month.Equals("4") || month.Equals("5") || month.Equals("6"))
                {
                    query = "SELECT Quantity, Amount FROM Transactions WHERE Bill_No IN ( SELECT Bill_No FROM Bills WHERE Bill_Date BETWEEN  '2013-04-01'AND  DATE_SUB(DATE_FORMAT(NOW(),'%y-%m-%d'),INTERVAL 1 DAY))";
                    querya = "Select DATE_FORMAT(Bill_Date,'%d-%M-%Y') from Bills WHERE Bill_Date BETWEEN  '2013-04-01'AND  DATE_FORMAT(NOW(),'%y-%m-%d') GROUP BY Bill_Date";
                    queryb = "Select (WEEK(Bill_Date)) from Bills WHERE Bill_Date BETWEEN  '2013-04-01'AND  DATE_FORMAT(NOW(),'%y-%m-%d') GROUP BY WEEK(Bill_Date)";
                }
                if (month.Equals("7") || month.Equals("8") || month.Equals("9"))
                {
                    query = "SELECT Quantity, Amount FROM Transactions WHERE Bill_No IN ( SELECT Bill_No FROM Bills WHERE Bill_Date BETWEEN  '2013-07-01'AND  DATE_SUB(DATE_FORMAT(NOW(),'%y-%m-%d'),INTERVAL 1 DAY))";
                    querya = "Select DATE_FORMAT(Bill_Date,'%d-%M-%Y') from Bills WHERE Bill_Date BETWEEN  '2013-07-01'AND DATE_FORMAT(NOW(),'%y-%m-%d') GROUP BY Bill_Date";
                    queryb = "Select (WEEK(Bill_Date)) from Bills WHERE Bill_Date BETWEEN  '2013-07-01'AND DATE_FORMAT(NOW(),'%y-%m-%d') GROUP BY WEEK(Bill_Date)";
                }
                if (month.Equals("10") || month.Equals("11") || month.Equals("12"))
                {
                    query = "SELECT Quantity, Amount FROM Transactions WHERE Bill_No IN ( SELECT Bill_No FROM Bills WHERE Bill_Date BETWEEN  '2013-10-01'AND  DATE_SUB(DATE_FORMAT(NOW(),'%y-%m-%d'),INTERVAL 1 DAY))";
                    querya = "Select DATE_FORMAT(Bill_Date,'%d-%M-%Y') from Bills WHERE Bill_Date BETWEEN  '2013-10-01'AND  DATE_FORMAT(NOW(),'%y-%m-%d') GROUP BY Bill_Date";
                    queryb = "Select (WEEK(Bill_Date)) from Bills WHERE Bill_Date BETWEEN  '2013-10-01'AND  DATE_FORMAT(NOW(),'%y-%m-%d') GROUP BY WEEK(Bill_Date)";
                }
                try
                {
                    conn.Open();

                    comm = new MySqlCommand(query, conn);
                    MySqlDataReader dr = comm.ExecuteReader();
                    int temp1;

                    while (dr.Read())
                    {
                        temp1 = dr.GetInt32(0);
                        quant = quant + temp1;


                    }

                    Label3.Text = quant.ToString();
                    dr.Close();

                    comm.CommandText = querya;
                    dr = comm.ExecuteReader();
                    DropDownList1.DataSource = dr;
                    DropDownList1.DataTextField = "DATE_FORMAT(Bill_Date,'%d-%M-%Y')";
                    DropDownList1.DataBind();
                    dr.Close();

                    comm.CommandText = queryb;
                    dr = comm.ExecuteReader();
                    DropDownList2.DataSource = dr;
                    DropDownList2.DataTextField = "(WEEK(Bill_Date))";
                    DropDownList2.DataBind();
                    dr.Close();

                    comm.CommandText = "Select QUARTER(NOW()),MONTHNAME(NOW())";
                    dr = comm.ExecuteReader();
                    dr.Read();
                    String tx = dr.GetValue(0).ToString();
                    DropDownList4.SelectedValue = tx;
                    String tm = dr.GetValue(1).ToString();
                    DropDownList3.SelectedValue = tm;
                    //Response.Write(tx + tm);

                    dr.Close();




                    comm.CommandText = "Select Sum(Quantity),Sum(Amount) from Transactions where Bill_No in (Select Bill_No from Bills where Bill_Date = DATE_FORMAT(NOW(),'%Y-%m-%d'))";
                    dr = comm.ExecuteReader();

                    while (dr.Read())
                    {
                        Label21.Text = dr.GetValue(0).ToString();
                        Label22.Text = "Rs." + dr.GetValue(1).ToString();
                    }
                    dr.Close();

                    comm.CommandText = "Select Sum(Quantity),Sum(Amount) from Transactions where Bill_No in (Select Bill_No from Bills where WEEK(Bill_Date) = WEEK(DATE_FORMAT(NOW(),'%Y-%m-%d')))";
                    dr = comm.ExecuteReader();

                    while (dr.Read())
                    {
                        Label23.Text = dr.GetValue(0).ToString();
                        Label24.Text = "Rs." + dr.GetValue(1).ToString();
                    }
                    dr.Close();

                    comm.CommandText = "Select Sum(Quantity),Sum(Amount) from Transactions where Bill_No in (Select Bill_No from Bills where MONTH(Bill_Date) = MONTH(DATE_FORMAT(NOW(),'%Y-%m-%d')))";
                    dr = comm.ExecuteReader();

                    while (dr.Read())
                    {
                        Label25.Text = dr.GetValue(0).ToString();
                        Label26.Text = "Rs." + dr.GetValue(1).ToString();
                    }
                    dr.Close();

                    comm.CommandText = "Select Sum(Quantity),Sum(Amount) from Transactions where Bill_No in (Select Bill_No from Bills where QUARTER(Bill_Date) = QUARTER(DATE_FORMAT(NOW(),'%Y-%m-%d')))";
                    dr = comm.ExecuteReader();

                    while (dr.Read())
                    {
                        Label27.Text = dr.GetValue(0).ToString();
                        Label28.Text = "Rs." + dr.GetValue(1).ToString();
                    }
                    dr.Close();

                   String sql = "Select DATE_FORMAT(NOW(),'%d-%M-%Y'),WEEK(NOW()),MONTHNAME(NOW()),QUARTER(NOW())";
                    comm.CommandText = sql;
                    dr = comm.ExecuteReader();
                    dr.Read();
                    DropDownList1.SelectedValue = dr.GetValue(0).ToString();
                    DropDownList2.SelectedValue = dr.GetValue(1).ToString();
                    DropDownList3.SelectedValue = dr.GetValue(2).ToString();
                    DropDownList4.SelectedValue = dr.GetValue(3).ToString();
                    dr.Close();





                }
                catch (Exception ed)
                { }
                finally
                {
                    conn.Close();
                }
            }
        }
        public static string GetConnectionString()
        {
            string connStr = String.Format("server={0};user id={1}; password={2};" +
              "database=footpri8_RMS2; pooling=true", "66.147.244.153",
              "footpri8", "Yhu#56gj6!");

            return connStr;
        }

        protected void Timer1_Tick(object sender, EventArgs e)
        {
            double todayamt = 0; ;
            int todayquant=0;
            String query1 = "SELECT Quantity,Amount from Transactions where Bill_No in(SELECT Bill_No FROM `Bills` WHERE Bill_Date = DATE_FORMAT(NOW(),'%y-%m-%d'))";
            conn = new MySqlConnection(GetConnectionString());
            MySqlDataReader dr;
            double thismonthamount = 0;
            double thisweekamount = 0;
            double lastmonthamount = 0;
            double lastweekamount = 0;
            int thismonthquant = 0;
            int thisweekquant = 0;
            int lastmonthquant = 0;
            int lastweekquant = 0;

            double amountpercchangeweek = 0 ;
            double quantpercchangeweek=0;
            double amountpercchangemonth=0;
            double quantperccchangemonth=0;
            String bestdate = "";
            String worstdate = "";
            try
            {
                conn.Open();
                comm = new MySqlCommand(query1, conn);
                dr = comm.ExecuteReader();
                int temp1 = 0;
                double temp2 = 0;
                while (dr.Read())
                {
                    temp1 = dr.GetInt32(0);
                    temp2 = dr.GetDouble(1);
                    todayquant = todayquant + temp1;
                    todayamt = todayamt + temp2;


                }
                dr.Close();

            }
            catch (Exception em)
            { Response.Write(em.Message); }
            finally
            { conn.Close(); }

            TodayBalance.Text = todayquant.ToString();
            Label10.Text="Rs. "+todayamt.ToString("#.##");



            String query2 = "SELECT Quantity,Amount from Transactions where Bill_No in(SELECT Bill_No FROM Bills WHERE WEEKOFYEAR(Bill_Date)=WEEKOFYEAR(NOW()))";
            String query3 = "SELECT Quantity,Amount from Transactions where Bill_No in(SELECT Bill_No FROM Bills WHERE WEEKOFYEAR(Bill_Date)=WEEKOFYEAR(NOW()-1))";
            String query4 = "SELECT Quantity,Amount from Transactions where Bill_No in(SELECT Bill_No FROM Bills WHERE MONTH(Bill_Date)=MONTH(NOW()))";
            String query5 = "SELECT Quantity,Amount from Transactions where Bill_No in(SELECT Bill_No FROM Bills WHERE MONTH(Bill_Date)=MONTH(NOW())-1)";
            String query6 = "Select DATE_FORMAT(Bill_Date,'%D %M %Y,%W'),Sum(Total_Amount) from Bills where MONTH(Bill_Date)=MONTH(NOW()) group by Bill_Date order by Sum(Total_Amount) desc";
            String query7 = "Select DATE_FORMAT(Bill_Date,'%D %M %Y,%W'),Sum(Total_Amount) from Bills where MONTH(Bill_Date)=MONTH(NOW()) group by Bill_Date order by Sum(Total_Amount)";
            try
            {
                conn.Open();


                comm = new MySqlCommand(query2, conn);

                dr = comm.ExecuteReader();
                while (dr.Read())
                {
                    thisweekquant += dr.GetInt32(0);
                    thisweekamount += dr.GetDouble(1);
                }
                dr.Close();

                comm.CommandText = query3;

                dr = comm.ExecuteReader();
                while (dr.Read())
                {
                    lastweekquant += dr.GetInt32(0);
                    lastweekamount += dr.GetDouble(1);
                }
                dr.Close();
                comm.CommandText = query4;

                dr = comm.ExecuteReader();
                while (dr.Read())
                {
                    thismonthquant += dr.GetInt32(0);
                    thismonthamount += dr.GetDouble(1);
                }
                dr.Close();

                comm.CommandText = query5;

                dr = comm.ExecuteReader();
                while (dr.Read())
                {
                    lastmonthquant += dr.GetInt32(0);
                    lastmonthamount += dr.GetDouble(1);
                }
                dr.Close();

                comm.CommandText = query6;
                dr = comm.ExecuteReader();
                
                while (dr.Read())
                {
                    bestdate = dr.GetValue(0).ToString();
                }
                dr.Close();

                comm.CommandText = query7;
                dr = comm.ExecuteReader();
                while (dr.Read())
                {
                    worstdate = dr.GetValue(0).ToString();
                }
                dr.Close();
            }
            catch (Exception ed)
            { Response.Write(ed.Message); }
            finally { conn.Close(); }


            amountpercchangeweek = ((thisweekamount - lastweekamount) / lastweekamount) * 100.00;
            amountpercchangemonth = ((thismonthamount - lastmonthamount) / lastmonthamount) * 100.00;
            quantpercchangeweek=((double)(((double)thisweekquant-(double)lastweekquant)/(double)lastweekquant))*100.00;
            quantperccchangemonth = ((double)(((double)thismonthquant - (double)lastmonthquant) / (double)lastweekquant)) * 100.00;
            
            Label14.Text = quantpercchangeweek.ToString("#.##")+"%";
            Label13.Text = amountpercchangeweek.ToString("#.##")+"%";
            Label17.Text = quantperccchangemonth.ToString("#.##")+"%";
            Label18.Text = amountpercchangemonth.ToString("#.##")+"%";
            Label19.Text = bestdate;
            Label20.Text = worstdate;
            Label19.ForeColor = Color.Green;
            Label20.ForeColor = Color.Red;



            
            if (quantpercchangeweek <=0)
            {
                Label14.ForeColor = Color.Red;
                
            }
            else
            {
                Label14.ForeColor = Color.Green;
            }

            if (amountpercchangeweek <=0)
            {
                Label13.ForeColor = Color.Red;

            }
            else
            {
                Label13.ForeColor = Color.Green;
            }

            if (quantperccchangemonth <=0)
            {
                Label17.ForeColor = Color.Red;

            }
            else
            {
                Label17.ForeColor = Color.Green;
            }

            if (amountpercchangemonth <=0)
            {
                Label18.ForeColor = Color.Red;

            }
            else
            {
                Label18.ForeColor = Color.Green;
            }
        
        
        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            MySqlConnection conn = new MySqlConnection(GetConnectionString());
            MySqlDataReader dr;
            date1=DropDownList1.SelectedValue.ToString();
            

            try
            {
                conn.Open();
                String query = "Select Sum(Quantity),Sum(Amount) from Transactions where Bill_No in (Select Bill_No from Bills where DATE_FORMAT(Bill_Date,'%d-%M-%Y') like '"+date1+"')";
                comm = new MySqlCommand(query, conn);
                dr = comm.ExecuteReader();
                dr.Read();

                Label21.Text = dr.GetValue(0).ToString();
                Label22.Text = "Rs."+dr.GetValue(1).ToString();
                dr.Close();
            }
            catch (Exception ed)
            { Response.Write(ed.Message); }
            finally { conn.Close(); }

        }

        protected void DropDownList2_SelectedIndexChanged(object sender, EventArgs e)
        {
            MySqlConnection conn = new MySqlConnection(GetConnectionString());
            MySqlDataReader dr;
            week1 = DropDownList2.SelectedValue.ToString();

            try
            {
                conn.Open();
                String query = "Select Sum(Quantity),Sum(Amount) from Transactions where Bill_No in (Select Bill_No from Bills where WEEK(Bill_Date) = " + week1 + ")";
                comm = new MySqlCommand(query, conn);
                dr = comm.ExecuteReader();
                dr.Read();

                Label23.Text = dr.GetValue(0).ToString();
                Label24.Text = "Rs."+dr.GetValue(1).ToString();
                dr.Close();
            }
            catch (Exception ed)
            { Response.Write(ed.Message); }
            finally { conn.Close(); }

        }

        protected void DropDownList3_SelectedIndexChanged(object sender, EventArgs e)
        {
            MySqlConnection conn = new MySqlConnection(GetConnectionString());
            MySqlDataReader dr;
            month1 = DropDownList3.SelectedValue.ToString();

            try
            {
                conn.Open();
                String query = "Select Sum(Quantity),Sum(Amount) from Transactions where Bill_No in (Select Bill_No from Bills where MONTHNAME(Bill_Date) = '" + month1 + "')";
                comm = new MySqlCommand(query, conn);
                dr = comm.ExecuteReader();
                dr.Read();

                Label25.Text = dr.GetValue(0).ToString();
                Label26.Text = "Rs."+dr.GetValue(1).ToString();
                dr.Close();
            }
            catch (Exception ed)
            { Response.Write(ed.Message); }
            finally { conn.Close(); }
        }

        protected void DropDownList4_SelectedIndexChanged(object sender, EventArgs e)
        {
            MySqlConnection conn = new MySqlConnection(GetConnectionString());
            MySqlDataReader dr;
            quarter1 = DropDownList4.SelectedValue.ToString();

            try
            {
                conn.Open();
                String query = "Select Sum(Quantity),Sum(Amount) from Transactions where Bill_No in (Select Bill_No from Bills where QUARTER(Bill_Date) = " +quarter1 + ")";
                comm = new MySqlCommand(query, conn);
                dr = comm.ExecuteReader();
                dr.Read();

                Label27.Text = dr.GetValue(0).ToString();
                Label28.Text = "Rs."+dr.GetValue(1).ToString();

                dr.Close();
            }
            catch (Exception ed)
            { Response.Write(ed.Message); }
            finally { conn.Close(); }

        }





        }


    }


