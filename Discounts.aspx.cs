using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MySql.Data.MySqlClient;
namespace RMS3
{
    public partial class Discounts : System.Web.UI.Page
    {
        MySqlConnection conn;
        String mainquery = "Select Product_ID,CONCAT(Company_Name,' ',Product_Name,'  ',' WP ',Wholesale_Price,' MRP ',Retail_Price,' Stock ',Stock) from Current_Store_Products ";
        String maintextfield = "CONCAT(Company_Name,' ',Product_Name,'  ',' WP ',Wholesale_Price,' MRP ',Retail_Price,' Stock ',Stock)";
        String mainvaluefield = "Product_ID";
        String currentbrand;
        String currentspec1, currentspec2, currentspec3, currentspec4, currentspec5, currentspec6, currentspec7;

        bool brandchanged, spec1changed, spec2changed, spec3changed, spec4changed, spec5changed, spec6changed, spec7changed;
        protected void Page_Load(object sender, EventArgs e)
        {
            brandchanged = false;
            spec1changed = false;
            spec2changed = false;
            spec3changed = false;
            spec4changed = false;
            spec5changed = false;
            spec6changed = false;
            spec7changed = false;

            //Label15.Text = DateTime.Now.ToString();
            if (!IsPostBack)
            {
                generateOrderID();
                Specification1.Visible = false;
                SpecificationRList1.Visible = false;

                Specification2.Visible = false;
                SpecificationRList2.Visible = false;

                Specification3.Visible = false;
                SpecificationRList3.Visible = false;

                Specification4.Visible = false;
                SpecificationRList4.Visible = false;

                Specification5.Visible = false;
                SpecificationRList5.Visible = false;

                Specification6.Visible = false;
                SpecificationRList6.Visible = false;

                Specification7.Visible = false;
                SpecificationRList7.Visible = false;







                conn = new MySqlConnection(GetConnectionString());
                try
                {
                    conn.Open();
                    MySqlCommand comm = new MySqlCommand("Select Category_Name,Category_ID from Category", conn);
                    MySqlDataReader dr = comm.ExecuteReader();
                    CategoryList.DataSource = dr;
                    CategoryList.DataTextField = "Category_Name";
                    CategoryList.DataValueField = "Category_ID";
                    CategoryList.DataBind();
                    dr.Close();

                    comm.CommandText = "Select * from Discounts";
                    dr = comm.ExecuteReader();
                    DiscountsGrid.DataSource = dr;
                    DiscountsGrid.DataBind();
                    dr.Close();

                    comm.CommandText = "Select Product_ID,CONCAT(Company_Name,' ',Product_Name,' ',Sp4_Value,' ',Sp5_Value,' ',Sp6_Value,' ',Sp7_Value,' ',Sp8_Value,' MRP ',Retail_Price,' WP ',Wholesale_Price,' Stock ',Stock) from Current_Store_Products where Stock<>0";
                    dr = comm.ExecuteReader();
                    ProductsList.DataSource = dr;
                    ProductsList.DataTextField = maintextfield;
                    ProductsList.DataValueField = mainvaluefield;
                    ProductsList.DataBind();
                    dr.Close();


                }
                catch (Exception em)
                { Response.Write("in page load"); Response.Write(em.Message); }
                finally { conn.Close(); }
            }
            CategoryList.Items.Insert(0, new ListItem("", "0"));
        }

        protected void DropDownList6_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void CategoryList_SelectedIndexChanged(object sender, EventArgs e)
        {

            String catid = CategoryList.SelectedValue.ToString();
            //Response.Write(catid);
            conn = new MySqlConnection(GetConnectionString());
            Specification1.Visible = false;
            SpecificationRList1.Visible = false;

            Specification2.Visible = false;
            SpecificationRList2.Visible = false;

            Specification3.Visible = false;
            SpecificationRList3.Visible = false;

            Specification4.Visible = false;
            SpecificationRList4.Visible = false;

            Specification5.Visible = false;
            SpecificationRList5.Visible = false;

            Specification6.Visible = false;
            SpecificationRList6.Visible = false;

            Specification7.Visible = false;
            SpecificationRList7.Visible = false;
            try
            {
                conn.Open();
                MySqlCommand comm = new MySqlCommand("Select Subcategory_Name,Subcategory_ID from Subcategory where Category_ID='" + catid + "'", conn);
                MySqlDataReader dr = comm.ExecuteReader();
                SubcategoryList.DataSource = dr;

                SubcategoryList.DataTextField = "Subcategory_Name";
                SubcategoryList.DataValueField = "Subcategory_ID";
                SubcategoryList.DataBind();
                dr.Close();
                comm.CommandText = "Select Product_ID,CONCAT(Company_Name,' ',Product_Name,' ',Sp4_Value,' ',Sp5_Value,' ',Sp6_Value,' ',Sp7_Value,' ',Sp8_Value,' MRP ',Retail_Price,' WP ',Wholesale_Price,' Stock ',Stock) from Master_Products where Category_ID='" + catid + "'";
                MySqlDataReader dr1 = comm.ExecuteReader();
                ProductsList.DataSource = dr1;
                ProductsList.DataTextField = "CONCAT(Company_Name,' ',Product_Name,' ',Sp4_Value,' ',Sp5_Value,' ',Sp6_Value,' ',Sp7_Value,' ',Sp8_Value,' MRP ',Retail_Price,' WP ',Wholesale_Price,' Stock ',Stock)";
                ProductsList.DataValueField = "Product_ID";
                ProductsList.DataBind();


                dr1.Close();





            }
            catch (Exception ex)
            { Response.Write("In category list"); Response.Write(ex.Message); }
            finally { conn.Close(); }

            SubcategoryList.Items.Insert(0, new ListItem("", "0"));
        }

        public void generateOrderID()
        {
            int x = 0;
            conn = new MySqlConnection(GetConnectionString());
            try
            {
                conn.Open();
                MySqlCommand comm = new MySqlCommand("Select count(*) from Order_Detail_Store", conn);
                MySqlDataReader dr = comm.ExecuteReader();
                dr.Read();
                x = dr.GetInt32(0);
                dr.Close();
            }
            catch (Exception em)
            { Response.Write("in generate order"); Response.Write(em.Message); }
            finally { conn.Close(); x++; }

            //Label12.Text = "OR" + x;
            //Label13.Text = "0";
            //Label14.Text = "Rs.0.0";
            //Label15.Text = DateTime.Now.ToString();
        }

        public static string GetConnectionString()
        {
            string connStr = String.Format("server={0};user id={1}; password={2};" +
              "database=footpri8_RMS2; pooling=true", "66.147.244.153",
              "footpri8", "Yhu#56gj6!");

            return connStr;
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            generateOrderID();
        }

        protected void SubcategoryList_SelectedIndexChanged(object sender, EventArgs e)
        {
            String catid = CategoryList.SelectedValue.ToString();
            String subcatid = SubcategoryList.SelectedValue.ToString();
            //Response.Write(catid);
            //Response.Write(subcatid);
            conn = new MySqlConnection(GetConnectionString());

            Specification1.Visible = false;
            SpecificationRList1.Visible = false;

            Specification2.Visible = false;
            SpecificationRList2.Visible = false;

            Specification3.Visible = false;
            SpecificationRList3.Visible = false;

            Specification4.Visible = false;
            SpecificationRList4.Visible = false;

            Specification5.Visible = false;
            SpecificationRList5.Visible = false;

            Specification6.Visible = false;
            SpecificationRList6.Visible = false;

            Specification7.Visible = false;
            SpecificationRList7.Visible = false;
            try
            {
                conn.Open();
                String query1 = "Select Product_ID,CONCAT(Company_Name,' ',Product_Name,' ',Sp4_Value,' ',Sp5_Value,' ',Sp6_Value,' ',Sp7_Value,' ',Sp8_Value,' MRP ',Retail_Price,' WP ',Wholesale_Price,' Stock ',Stock) from Master_Products where Category_ID='" + catid + "' and Subcategory_ID='" + subcatid + "'";
                MySqlCommand comm = new MySqlCommand(query1, conn);
                MySqlDataReader dr1 = comm.ExecuteReader();
                //ProductsList.ClearSelection();

                ProductsList.DataSource = dr1;
                ProductsList.DataTextField = "CONCAT(Company_Name,' ',Product_Name,' ',Sp4_Value,' ',Sp5_Value,' ',Sp6_Value,' ',Sp7_Value,' ',Sp8_Value,' MRP ',Retail_Price,' WP ',Wholesale_Price,' Stock ',Stock)";
                ProductsList.DataValueField = "Product_ID";
                ProductsList.DataBind();
                dr1.Close();

                comm.CommandText = "Select DISTINCT(Company_Name) from Master_Products where Category_ID='" + catid + "' and Subcategory_ID='" + subcatid + "'";
                MySqlDataReader dr2 = comm.ExecuteReader();
                BrandList.DataSource = dr2;
                BrandList.DataTextField = "Company_Name";
                BrandList.DataValueField = "Company_Name";
                BrandList.DataBind();
                dr2.Close();
                BrandList.Visible = true;
                Label4.Visible = true;

                comm.CommandText = "Select Specification4,Specification5,Specification6,Specification7,Specification8,Specification9,Specification10 from Specifications where Category_ID='" + catid + "' and Subcategory_ID = '" + subcatid + "'";
                MySqlDataReader dr3 = comm.ExecuteReader();
                String[] Specs = new String[7];
                dr3.Read();
                for (int i = 0; i < 7; i++)
                {
                    Specs[i] = dr3.GetValue(i).ToString();

                }

                dr3.Close();
                if (Specs[0] != "")
                {
                    Specification1.Text = Specs[0];
                    Specification1.Visible = true;
                }
                if (Specs[1] != "")
                {
                    Specification2.Text = Specs[1];
                    Specification2.Visible = true;
                }
                if (Specs[2] != "")
                {
                    Specification3.Text = Specs[2];
                    Specification3.Visible = true;
                }

                if (Specs[3] != "")
                {
                    Specification4.Text = Specs[3];
                    Specification4.Visible = true;
                }
                if (Specs[4] != "")
                {
                    Specification5.Text = Specs[4];
                    Specification5.Visible = true;
                }

                if (Specs[5] != "")
                {
                    Specification6.Text = Specs[5];
                    Specification6.Visible = true;
                }
                if (Specs[6] != "")
                {
                    Specification7.Text = Specs[6];
                    Specification7.Visible = true;
                }






                if (Specification1.Visible)
                {
                    comm.CommandText = "Select DISTINCT(Sp4_Value) from Master_Products where Category_ID='" + catid + "' and Subcategory_ID='" + subcatid + "'";
                    MySqlDataReader dr4 = comm.ExecuteReader();

                    SpecificationRList1.DataSource = dr4;
                    SpecificationRList1.DataTextField = "Sp4_Value";
                    SpecificationRList1.DataValueField = "Sp4_Value";
                    SpecificationRList1.DataBind();
                    SpecificationRList1.Visible = true;
                    dr4.Close();
                }

                if (Specification2.Visible)
                {
                    comm.CommandText = "Select DISTINCT(Sp5_Value) from Master_Products where Category_ID='" + catid + "' and Subcategory_ID='" + subcatid + "'";
                    MySqlDataReader dr4 = comm.ExecuteReader();
                    SpecificationRList2.DataSource = dr4;
                    SpecificationRList2.DataTextField = "Sp5_Value";
                    SpecificationRList2.DataValueField = "Sp5_Value";
                    SpecificationRList2.DataBind();
                    SpecificationRList2.Visible = true;
                    dr4.Close();
                }


                if (Specification3.Visible)
                {
                    comm.CommandText = "Select DISTINCT(Sp6_Value) from Master_Products where Category_ID='" + catid + "' and Subcategory_ID='" + subcatid + "'";
                    MySqlDataReader dr4 = comm.ExecuteReader();
                    SpecificationRList3.DataSource = dr4;
                    SpecificationRList3.DataTextField = "Sp6_Value";
                    SpecificationRList3.DataValueField = "Sp6_Value";
                    SpecificationRList3.DataBind();
                    SpecificationRList3.Visible = true;
                    dr4.Close();
                }


                if (Specification4.Visible)
                {
                    comm.CommandText = "Select DISTINCT(Sp7_Value) from Master_Products where Category_ID='" + catid + "' and Subcategory_ID='" + subcatid + "'";
                    MySqlDataReader dr4 = comm.ExecuteReader();
                    SpecificationRList4.DataSource = dr4;
                    SpecificationRList4.DataTextField = "Sp7_Value";
                    SpecificationRList4.DataValueField = "Sp7_Value";
                    SpecificationRList4.DataBind();
                    SpecificationRList4.Visible = true;
                    dr4.Close();
                }

                if (Specification5.Visible)
                {
                    comm.CommandText = "Select DISTINCT(Sp8_Value) from Master_Products where Category_ID='" + catid + "' and Subcategory_ID='" + subcatid + "'";
                    MySqlDataReader dr4 = comm.ExecuteReader();
                    SpecificationRList5.DataSource = dr4;
                    SpecificationRList5.DataTextField = "Sp8_Value";
                    SpecificationRList5.DataValueField = "Sp8_Value";
                    SpecificationRList5.DataBind();
                    SpecificationRList5.Visible = true;
                    dr4.Close();
                }

                if (Specification6.Visible)
                {
                    comm.CommandText = "Select DISTINCT(Sp9_Value) from Master_Products where Category_ID='" + catid + "' and Subcategory_ID='" + subcatid + "'";
                    MySqlDataReader dr4 = comm.ExecuteReader();
                    SpecificationRList6.DataSource = dr4;
                    SpecificationRList6.DataTextField = "Sp9_Value";
                    SpecificationRList6.DataValueField = "Sp9_Value";
                    SpecificationRList6.DataBind();
                    SpecificationRList6.Visible = true;
                    dr4.Close();
                }

                if (Specification7.Visible)
                {
                    comm.CommandText = "Select DISTINCT(Sp10_Value) from Master_Products where Category_ID='" + catid + "' and Subcategory_ID='" + subcatid + "'";
                    MySqlDataReader dr4 = comm.ExecuteReader();
                    SpecificationRList7.DataSource = dr4;
                    SpecificationRList7.DataTextField = "Sp10_Value";
                    SpecificationRList7.DataValueField = "Sp10_Value";
                    SpecificationRList7.DataBind();
                    SpecificationRList7.Visible = true;
                    dr4.Close();
                }




            }
            catch (Exception ex)
            { Response.Write(ex.Message); }
            finally
            {
                conn.Close();
            }
            BrandList.Items.Insert(0, new ListItem("", "0"));
        }

        protected void BrandList_SelectedIndexChanged(object sender, EventArgs e)
        {
            String catid = CategoryList.SelectedValue.ToString();
            String subcatid = SubcategoryList.SelectedValue.ToString();
            String brandname = BrandList.SelectedValue.ToString();
            String spec1 = SpecificationRList1.SelectedValue.ToString();
            String spec2 = SpecificationRList2.SelectedValue.ToString();
            String spec3 = SpecificationRList3.SelectedValue.ToString();
            String spec4 = SpecificationRList4.SelectedValue.ToString();
            String spec5 = SpecificationRList5.SelectedValue.ToString();
            String spec6 = SpecificationRList6.SelectedValue.ToString();
            String spec7 = SpecificationRList7.SelectedValue.ToString();
            String query1 = "where Category_ID='" + catid + "' and Subcategory_ID='" + subcatid + "' and Company_Name='" + brandname + "'";
            currentbrand = brandname;
            brandchanged = true;

            if (spec1 != "")
            {
                query1 += "and Sp4_Value='" + spec1 + "'";
            }
            if (spec2 != "")
            {
                query1 += "and Sp5_Value='" + spec2 + "'";
            }

            if (spec3 != "")
            {
                query1 += "and Sp6_Value='" + spec3 + "'";
            }


            if (spec4 != "")
            {
                query1 += "and Sp7_Value='" + spec4 + "'";
            }


            if (spec5 != "")
            {
                query1 += "and Sp8_Value='" + spec5 + "'";
            }


            if (spec6 != "")
            {
                query1 += "and Sp9_Value='" + spec6 + "'";
            }


            if (spec7 != "")
            {
                query1 += "and Sp10_Value='" + spec7 + "'";
            }


            conn = new MySqlConnection(GetConnectionString());


            try
            {
                conn.Open();
                String sql = mainquery + query1;


                MySqlCommand comm = new MySqlCommand(sql, conn);
                MySqlDataReader dr = comm.ExecuteReader();

                ProductsList.DataSource = dr;
                ProductsList.DataTextField = maintextfield;
                ProductsList.DataValueField = mainvaluefield;
                ProductsList.DataBind();
                dr.Close();


            }
            catch (Exception ex)
            { Response.Write(ex.Message); }
            finally
            {
                conn.Close();
            }

        }

        protected void SpecificationRList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            String catid = CategoryList.SelectedValue.ToString();
            String subcatid = SubcategoryList.SelectedValue.ToString();
            String spec1 = SpecificationRList1.SelectedValue.ToString();
            String spec2 = SpecificationRList2.SelectedValue.ToString();
            String spec3 = SpecificationRList3.SelectedValue.ToString();
            String spec4 = SpecificationRList4.SelectedValue.ToString();
            String spec5 = SpecificationRList5.SelectedValue.ToString();
            String spec6 = SpecificationRList6.SelectedValue.ToString();
            String spec7 = SpecificationRList7.SelectedValue.ToString();


            String query1 = "where Sp4_Value='" + spec1 + "' and Category_ID='" + catid + "' and Subcategory_ID='" + subcatid + "'";

           
            if (!BrandList.SelectedValue.ToString().Equals("0"))
            {
                String brandname = BrandList.SelectedValue.ToString();
                query1 += "and Company_Name='" + brandname + "'";
            }
            
            //brandchanged = false;

            if (spec2 != "")
            {
                query1 += "and Sp5_Value='" + spec2 + "'";
            }

            if (spec3 != "")
            {
                query1 += "and Sp6_Value='" + spec3 + "'";
            }


            if (spec4 != "")
            {
                query1 += "and Sp7_Value='" + spec4 + "'";
            }


            if (spec5 != "")
            {
                query1 += "and Sp8_Value='" + spec5 + "'";
            }


            if (spec6 != "")
            {
                query1 += "and Sp9_Value='" + spec6 + "'";
            }


            if (spec7 != "")
            {
                query1 += "and Sp10_Value='" + spec7 + "'";
            }
            conn = new MySqlConnection(GetConnectionString());

            try
            {
                conn.Open();
                String sql = mainquery + query1;
                MySqlCommand comm = new MySqlCommand(sql, conn);
                MySqlDataReader dr1 = comm.ExecuteReader();
                ProductsList.DataSource = dr1;
                ProductsList.DataTextField = maintextfield;
                ProductsList.DataValueField = mainvaluefield;
                ProductsList.DataBind();
                dr1.Close();
            }
            catch (Exception ex)
            { Response.Write(ex.Message); }
            finally { conn.Close(); }

        }

        protected void SpecificationRList2_SelectedIndexChanged(object sender, EventArgs e)
        {
            String catid = CategoryList.SelectedValue.ToString();
            String subcatid = SubcategoryList.SelectedValue.ToString();
            String spec1 = SpecificationRList1.SelectedValue.ToString();
            String spec2 = SpecificationRList2.SelectedValue.ToString();
            String spec3 = SpecificationRList3.SelectedValue.ToString();
            String spec4 = SpecificationRList4.SelectedValue.ToString();
            String spec5 = SpecificationRList5.SelectedValue.ToString();
            String spec6 = SpecificationRList6.SelectedValue.ToString();
            String spec7 = SpecificationRList7.SelectedValue.ToString();

            String query1 = "where Sp5_Value='" + spec2 + "' and Category_ID='" + catid + "' and Subcategory_ID='" + subcatid + "'";

            if (!BrandList.SelectedValue.ToString().Equals("0"))
            {
                String brandname = BrandList.SelectedValue.ToString();
                query1 += "and Company_Name='" + brandname + "'";
            }
            //brandchanged = false;

            if (spec1 != "")
            {
                query1 += "and Sp4_Value='" + spec1 + "'";
            }

            if (spec3 != "")
            {
                query1 += "and Sp6_Value='" + spec3 + "'";
            }


            if (spec4 != "")
            {
                query1 += "and Sp7_Value='" + spec4 + "'";
            }


            if (spec5 != "")
            {
                query1 += "and Sp8_Value='" + spec5 + "'";
            }


            if (spec6 != "")
            {
                query1 += "and Sp9_Value='" + spec6 + "'";
            }


            if (spec7 != "")
            {
                query1 += "and Sp10_Value='" + spec7 + "'";
            }
            conn = new MySqlConnection(GetConnectionString());

            try
            {
                conn.Open();
                String sql = mainquery + query1;
                MySqlCommand comm = new MySqlCommand(sql, conn);
                MySqlDataReader dr1 = comm.ExecuteReader();
                ProductsList.DataSource = dr1;
                ProductsList.DataTextField = maintextfield;
                ProductsList.DataValueField = mainvaluefield;
                ProductsList.DataBind();
                dr1.Close();
            }
            catch (Exception ex)
            { Response.Write(ex.Message); }
            finally { conn.Close(); }
        }

        protected void SpecificationRList3_SelectedIndexChanged(object sender, EventArgs e)
        {
            String catid = CategoryList.SelectedValue.ToString();
            String subcatid = SubcategoryList.SelectedValue.ToString();
            String spec1 = SpecificationRList1.SelectedValue.ToString();
            String spec2 = SpecificationRList2.SelectedValue.ToString();
            String spec3 = SpecificationRList3.SelectedValue.ToString();
            String spec4 = SpecificationRList4.SelectedValue.ToString();
            String spec5 = SpecificationRList5.SelectedValue.ToString();
            String spec6 = SpecificationRList6.SelectedValue.ToString();
            String spec7 = SpecificationRList7.SelectedValue.ToString();

            String query1 = "where Sp6_Value='" + spec3 + "' and Category_ID='" + catid + "' and Subcategory_ID='" + subcatid + "'";

            if (!BrandList.SelectedValue.ToString().Equals("0"))
            {
                String brandname = BrandList.SelectedValue.ToString();
                query1 += "and Company_Name='" + brandname + "'";
            }
            //brandchanged = false;

            if (spec2 != "")
            {
                query1 += "and Sp5_Value='" + spec2 + "'";
            }

            if (spec1 != "")
            {
                query1 += "and Sp4_Value='" + spec1 + "'";
            }


            if (spec4 != "")
            {
                query1 += "and Sp7_Value='" + spec4 + "'";
            }


            if (spec5 != "")
            {
                query1 += "and Sp8_Value='" + spec5 + "'";
            }


            if (spec6 != "")
            {
                query1 += "and Sp9_Value='" + spec6 + "'";
            }


            if (spec7 != "")
            {
                query1 += "and Sp10_Value='" + spec7 + "'";
            }
            conn = new MySqlConnection(GetConnectionString());

            try
            {
                conn.Open();
                String sql = mainquery + query1;
                MySqlCommand comm = new MySqlCommand(sql, conn);
                MySqlDataReader dr1 = comm.ExecuteReader();
                ProductsList.DataSource = dr1;
                ProductsList.DataTextField = maintextfield;
                ProductsList.DataValueField = mainvaluefield;
                ProductsList.DataBind();
                dr1.Close();
            }
            catch (Exception ex)
            { Response.Write(ex.Message); }
            finally { conn.Close(); }
        }

        protected void SpecificationRList4_SelectedIndexChanged(object sender, EventArgs e)
        {
            String catid = CategoryList.SelectedValue.ToString();
            String subcatid = SubcategoryList.SelectedValue.ToString();
            String spec1 = SpecificationRList1.SelectedValue.ToString();
            String spec2 = SpecificationRList2.SelectedValue.ToString();
            String spec3 = SpecificationRList3.SelectedValue.ToString();
            String spec4 = SpecificationRList4.SelectedValue.ToString();
            String spec5 = SpecificationRList5.SelectedValue.ToString();
            String spec6 = SpecificationRList6.SelectedValue.ToString();
            String spec7 = SpecificationRList7.SelectedValue.ToString();

            String query1 = "where Sp7_Value='" + spec4 + "' and Category_ID='" + catid + "' and Subcategory_ID='" + subcatid + "'";


            if (!BrandList.SelectedValue.ToString().Equals("0"))
            {
                String brandname = BrandList.SelectedValue.ToString();
                query1 += "and Company_Name='" + brandname + "'";
            }
            //brandchanged = false;

            if (spec2 != "")
            {
                query1 += "and Sp5_Value='" + spec2 + "'";
            }

            if (spec3 != "")
            {
                query1 += "and Sp6_Value='" + spec3 + "'";
            }


            if (spec1 != "")
            {
                query1 += "and Sp4_Value='" + spec1 + "'";
            }


            if (spec5 != "")
            {
                query1 += "and Sp8_Value='" + spec5 + "'";
            }


            if (spec6 != "")
            {
                query1 += "and Sp9_Value='" + spec6 + "'";
            }


            if (spec7 != "")
            {
                query1 += "and Sp10_Value='" + spec7 + "'";
            }
            conn = new MySqlConnection(GetConnectionString());

            try
            {
                conn.Open();
                String sql = mainquery + query1;
                MySqlCommand comm = new MySqlCommand(sql, conn);
                MySqlDataReader dr1 = comm.ExecuteReader();
                ProductsList.DataSource = dr1;
                ProductsList.DataTextField = maintextfield;
                ProductsList.DataValueField = mainvaluefield;
                ProductsList.DataBind();
                dr1.Close();
            }
            catch (Exception ex)
            { Response.Write(ex.Message); }
            finally { conn.Close(); }
        }

        protected void SpecificationRList5_SelectedIndexChanged(object sender, EventArgs e)
        {
            String catid = CategoryList.SelectedValue.ToString();
            String subcatid = SubcategoryList.SelectedValue.ToString();
            String spec1 = SpecificationRList1.SelectedValue.ToString();
            String spec2 = SpecificationRList2.SelectedValue.ToString();
            String spec3 = SpecificationRList3.SelectedValue.ToString();
            String spec4 = SpecificationRList4.SelectedValue.ToString();
            String spec5 = SpecificationRList5.SelectedValue.ToString();
            String spec6 = SpecificationRList6.SelectedValue.ToString();
            String spec7 = SpecificationRList7.SelectedValue.ToString();

            String query1 = "where Sp8_Value='" + spec5 + "' and Category_ID='" + catid + "' and Subcategory_ID='" + subcatid + "'";

            if (!BrandList.SelectedValue.ToString().Equals("0"))
            {
                String brandname = BrandList.SelectedValue.ToString();
                query1 += "and Company_Name='" + brandname + "'";
            }
            //brandchanged = false;

            if (spec2 != "")
            {
                query1 += "and Sp5_Value='" + spec2 + "'";
            }

            if (spec3 != "")
            {
                query1 += "and Sp6_Value='" + spec3 + "'";
            }


            if (spec4 != "")
            {
                query1 += "and Sp7_Value='" + spec4 + "'";
            }


            if (spec1 != "")
            {
                query1 += "and Sp4_Value='" + spec1 + "'";
            }


            if (spec6 != "")
            {
                query1 += "and Sp9_Value='" + spec6 + "'";
            }


            if (spec7 != "")
            {
                query1 += "and Sp10_Value='" + spec7 + "'";
            }
            conn = new MySqlConnection(GetConnectionString());

            try
            {
                conn.Open();
                String sql = mainquery + query1;
                MySqlCommand comm = new MySqlCommand(sql, conn);
                MySqlDataReader dr1 = comm.ExecuteReader();
                ProductsList.DataSource = dr1;
                ProductsList.DataTextField = maintextfield;
                ProductsList.DataValueField = mainvaluefield;
                ProductsList.DataBind();
                dr1.Close();
            }
            catch (Exception ex)
            { Response.Write(ex.Message); }
            finally { conn.Close(); }
        }

        protected void SpecificationRList6_SelectedIndexChanged(object sender, EventArgs e)
        {
            String catid = CategoryList.SelectedValue.ToString();
            String subcatid = SubcategoryList.SelectedValue.ToString();
            String spec1 = SpecificationRList1.SelectedValue.ToString();
            String spec2 = SpecificationRList2.SelectedValue.ToString();
            String spec3 = SpecificationRList3.SelectedValue.ToString();
            String spec4 = SpecificationRList4.SelectedValue.ToString();
            String spec5 = SpecificationRList5.SelectedValue.ToString();
            String spec6 = SpecificationRList6.SelectedValue.ToString();
            String spec7 = SpecificationRList7.SelectedValue.ToString();

            String query1 = "where Sp9_Value='" + spec6 + "' and Category_ID='" + catid + "' and Subcategory_ID='" + subcatid + "'";


            if (!BrandList.SelectedValue.ToString().Equals("0"))
            {
                String brandname = BrandList.SelectedValue.ToString();
                query1 += "and Company_Name='" + brandname + "'";
            }
            //brandchanged = false;

            if (spec2 != "")
            {
                query1 += "and Sp5_Value='" + spec2 + "'";
            }

            if (spec3 != "")
            {
                query1 += "and Sp6_Value='" + spec3 + "'";
            }


            if (spec4 != "")
            {
                query1 += "and Sp7_Value='" + spec4 + "'";
            }


            if (spec5 != "")
            {
                query1 += "and Sp8_Value='" + spec5 + "'";
            }


            if (spec1 != "")
            {
                query1 += "and Sp4_Value='" + spec1 + "'";
            }


            if (spec7 != "")
            {
                query1 += "and Sp10_Value='" + spec7 + "'";
            }
            conn = new MySqlConnection(GetConnectionString());

            try
            {
                conn.Open();
                String sql = mainquery + query1;
                MySqlCommand comm = new MySqlCommand(sql, conn);
                MySqlDataReader dr1 = comm.ExecuteReader();
                ProductsList.DataSource = dr1;
                ProductsList.DataTextField = maintextfield;
                ProductsList.DataValueField = mainvaluefield;
                ProductsList.DataBind();
                dr1.Close();
            }
            catch (Exception ex)
            { Response.Write(ex.Message); }
            finally { conn.Close(); }
        }

        protected void SpecificationRList7_SelectedIndexChanged(object sender, EventArgs e)
        {
            String catid = CategoryList.SelectedValue.ToString();
            String subcatid = SubcategoryList.SelectedValue.ToString();
            String spec1 = SpecificationRList1.SelectedValue.ToString();
            String spec2 = SpecificationRList2.SelectedValue.ToString();
            String spec3 = SpecificationRList3.SelectedValue.ToString();
            String spec4 = SpecificationRList4.SelectedValue.ToString();
            String spec5 = SpecificationRList5.SelectedValue.ToString();
            String spec6 = SpecificationRList6.SelectedValue.ToString();
            String spec7 = SpecificationRList7.SelectedValue.ToString();

            String query1 = "where Sp10_Value='" + spec7 + "' and Category_ID='" + catid + "' and Subcategory_ID='" + subcatid + "'";

            if (!BrandList.SelectedValue.ToString().Equals("0"))
            {
                String brandname = BrandList.SelectedValue.ToString();
                query1 += "and Company_Name='" + brandname + "'";
            }
            //brandchanged = false;



            if (spec2 != "")
            {
                query1 += "and Sp5_Value='" + spec2 + "'";
            }

            if (spec3 != "")
            {
                query1 += "and Sp6_Value='" + spec3 + "'";
            }


            if (spec4 != "")
            {
                query1 += "and Sp7_Value='" + spec4 + "'";
            }


            if (spec5 != "")
            {
                query1 += "and Sp8_Value='" + spec5 + "'";
            }


            if (spec6 != "")
            {
                query1 += "and Sp9_Value='" + spec6 + "'";
            }


            if (spec1 != "")
            {
                query1 += "and Sp4_Value='" + spec1 + "'";
            }
            conn = new MySqlConnection(GetConnectionString());

            try
            {
                conn.Open();
                String sql = mainquery + query1;
                MySqlCommand comm = new MySqlCommand(sql, conn);
                MySqlDataReader dr1 = comm.ExecuteReader();
                ProductsList.DataSource = dr1;
                ProductsList.DataTextField = maintextfield;
                ProductsList.DataValueField = mainvaluefield;
                ProductsList.DataBind();
                dr1.Close();
            }
            catch (Exception ex)
            { Response.Write(ex.Message); }
            finally { conn.Close(); }
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            SpecificationRList1.ClearSelection();
            SpecificationRList2.ClearSelection();
            SpecificationRList3.ClearSelection();
            SpecificationRList4.ClearSelection();
            SpecificationRList5.ClearSelection();
            SpecificationRList6.ClearSelection();
            SpecificationRList7.ClearSelection();
            BrandList.SelectedIndex = 0;
            brandchanged = false;




        }

        protected void ProductSearch_Click(object sender, EventArgs e)
        {
            String product_id = TextBox1.Text;
            conn = new MySqlConnection(GetConnectionString());
            ProductsList.ClearSelection();
            try
            {
                conn.Open();
                String sql = mainquery + "where Product_ID='" + product_id + "'";
                MySqlCommand comm = new MySqlCommand(sql, conn);
                MySqlDataReader dr = comm.ExecuteReader();
                ProductsList.DataSource = dr;


                ProductsList.DataTextField = maintextfield;
                ProductsList.DataValueField = mainvaluefield;
                ProductsList.DataBind();

            }
            catch (Exception ex)
            { Response.Write(ex.Message); }
            finally { conn.Close(); }
        }

        protected void InventoryAdd_Click(object sender, EventArgs e)
        {
            int quant = int.Parse(TextBox2.Text);
            String oid = "";
            List<String> SelectedProducts = new List<String>();
            conn = new MySqlConnection(GetConnectionString());
            foreach (ListItem item in ProductsList.Items)
            {
                if (item.Selected)
                {
                    SelectedProducts.Add(item.Value.ToString());

                }
            }
            try
            {
                conn.Open();
                foreach (String item in SelectedProducts)
                {
                    Response.Write(item);


                    MySqlCommand comm = new MySqlCommand();
                    comm.CommandText = "Select Wholesale_Price from Master_Products where Product_ID='" + item + "'";
                    comm.Connection = conn;
                    MySqlDataReader dr = comm.ExecuteReader();
                    dr.Read();
                    double wp = dr.GetDouble(0);
                    double amt = wp * quant;
                    dr.Close();
                    comm.CommandText = "Insert into Order_Product_Store values('" + oid + "','" + item + "'," + quant + "," + amt + ")";
                    comm.ExecuteNonQuery();


                }
            }
            catch (Exception ex)
            { Response.Write(ex.Message); }

            finally { conn.Close(); }

            try
            {
                conn.Open();
                MySqlCommand comm = new MySqlCommand("Select * from Order_Product_Store where Order_ID='" + oid + "'", conn);
                MySqlDataReader dr = comm.ExecuteReader();
                //GridView2.DataSource = dr;
                //GridView2.DataBind();
                dr.Close();
                comm.CommandText = "Select Sum(Quantity),Sum(Amount) from Order_Product_Store where Order_ID='" + oid + "'";
                MySqlDataReader dr1 = comm.ExecuteReader();
                dr1.Read();
                //Label13.Text = dr1.GetValue(0).ToString();
                //Label14.Text = "Rs." + dr1.GetValue(1).ToString();
                dr1.Close();

            }
            catch (Exception ex)
            {
                Response.Write(ex.Message);
            }
            finally
            {
                conn.Close();
            }



        }




        protected void SelectAll_Click(object sender, EventArgs e)
        {
            foreach (ListItem item in ProductsList.Items)
            {
                item.Selected = true;
            }
        }

        protected void DeselectAll_Click(object sender, EventArgs e)
        {
            ProductsList.ClearSelection();
        }

        protected void Button9_Click(object sender, EventArgs e)
        {
            String pname = TextBox3.Text;
            conn = new MySqlConnection(GetConnectionString());

            try
            {
                conn.Open();
                String sql = " where Product_Name like '%" + pname + "%'";
                MySqlCommand comm = new MySqlCommand(mainquery + sql, conn);
                MySqlDataReader dr = comm.ExecuteReader();
                ProductsList.DataSource = dr;
                ProductsList.DataTextField = maintextfield;
                ProductsList.DataValueField = mainvaluefield;
                ProductsList.DataBind();
                dr.Close();

            }
            catch (Exception ex)
            { Response.Write(ex.Message); }
            finally { conn.Close(); }
        }

        protected void NewDiscount_Click(object sender, EventArgs e)
        {
            generateDiscountID();

        }




        protected void generateDiscountID()
        {
            conn = new MySqlConnection(GetConnectionString());
            int x = 0;

            try
            {
                conn.Open();
                MySqlCommand comm = new MySqlCommand("Select count(*) from Discounts", conn);
                MySqlDataReader dr = comm.ExecuteReader();
                dr.Read();
                x = dr.GetInt32(0);

                dr.Close();
            }
            catch (Exception ex)
            { Response.Write(ex.Message); }
            finally { conn.Close(); }
            x++;
            TextBox4.Text = "D" + x.ToString();




        }

        protected void SetDiscount_Click(object sender, EventArgs e)
        {
            List<String> prodid = new List<String>();
            conn = new MySqlConnection(GetConnectionString());

            foreach (ListItem item in ProductsList.Items)
            {
                if (item.Selected)
                {
                    prodid.Add(item.Value.ToString());
                }
            }

            String discid = TextBox4.Text;

            try
            {
                conn.Open();
                foreach (String prid in prodid)
                {
                    MySqlCommand comm = new MySqlCommand("Insert into Discount_Schemes values ('" + discid + "','" + prid + "')", conn);
                    comm.ExecuteNonQuery();

                    comm.CommandText = "Select count(*),CONCAT(t.Product_ID,' ',p.Company_Name,' ', p.Product_Name) from Transactions t,Current_Store_Products p where t.Bill_No in (Select Bill_No from Transactions where Product_ID = '" + prid + "') and t.Product_ID <> '" + prid + "' and t.Product_ID=p.Product_ID group by t.Product_ID order by count(*) desc LIMIT 0,3";
                    MySqlDataReader dr = comm.ExecuteReader();

                    BulletedList1.DataSource = dr;
                    BulletedList1.DataTextField = "CONCAT(t.Product_ID,' ',p.Company_Name,' ', p.Product_Name)";
                    BulletedList1.DataBind();
                    dr.Close();
                }
            }
            catch (Exception ex)
            { Response.Write(ex.Message); }
            finally { conn.Close(); }


            try
            {
                conn.Open();
                MySqlCommand comm = new MySqlCommand("Select d.Discount_ID, p.Product_ID,p.Company_Name,p.Product_Name from Discount_Schemes d,Current_Store_Products p where d.Product_ID=p.Product_ID and Discount_ID='" + discid + "'", conn);
                MySqlDataReader dr = comm.ExecuteReader();
                DiscountedProductsGrid.DataSource = dr;
                DiscountedProductsGrid.DataBind();
                dr.Close();
            }
            catch (Exception ex)
            { Response.Write(ex.Message); }
            finally { conn.Close(); }
        }

        protected void SaveDiscount_Click(object sender, EventArgs e)
        {
            String discid = TextBox4.Text;
            String discname = TextBox6.Text;
            double discper = double.Parse(TextBox2.Text);
            String validfrom = TextBox5.Text;
            String validto = TextBox7.Text;

            String sql = "";
            String subquery = "";
            if (!discid.Equals(""))
            {
                subquery = "Select * from Discounts where Discount_ID='" + discid + "'";
            }
            else if (!(discname.Equals("")))
            {
                subquery = "Select * from Discounts where Discount_Name='" + discname + "'";
            }
            conn = new MySqlConnection(GetConnectionString());
            try
            {
                conn.Open();
                MySqlCommand comm = new MySqlCommand(subquery, conn);
                MySqlDataReader dr = comm.ExecuteReader();
                dr.Read();
                if (dr.HasRows)
                {
                    sql = "Update Discounts set Discount_ID='" + discid + "', Discount_Name='" + discname + "', Discount_Value=" + discper + ",Valid_From=STR_TO_DATE('" + validfrom + "','%d-%m-%Y'),Valid_To=STR_TO_DATE('" + validto + "','%d-%m-%Y')";
                }
                else
                {
                    sql = "Insert into Discounts Values('" + discid + "','" + discname + "'," + discper + ",STR_TO_DATE('" + validfrom + "','%d-%m-%Y'),STR_TO_DATE('" + validto + "','%d-%m-%Y'));";
                }
                dr.Close();

            }
            catch (Exception ex)
            { Response.Write(ex.Message); }
            finally { conn.Close(); }

            try
            {
                conn.Open();
                MySqlCommand comm = new MySqlCommand(sql, conn);
                comm.ExecuteNonQuery();

                comm.CommandText = "Select * from Discounts";
                MySqlDataReader dr = comm.ExecuteReader();
                DiscountsGrid.DataSource = dr;
                DiscountsGrid.DataBind();
                dr.Close();

            }
            catch (Exception ex)
            { Response.Write(ex.Message); }
            finally { conn.Close(); }
            ClearAll();
            generateDiscountID();

        }

        protected void EditDiscount_Click(object sender, EventArgs e)
        {
            String discid = TextBox4.Text;
            String discname = TextBox6.Text;
            String sql = "";
            if (!(discname.Equals("")))
            {
                sql = "Select Discount_ID,Discount_Name,Discount_Value, DATE_FORMAT(Valid_From,'%d-%m-%Y'),DATE_FORMAT(Valid_To,'%d-%m-%Y') from Discounts where Discount_Name='" + discname + "'";

            }
            else if (!(discid.Equals("")))
            {
                sql = "Select Discount_ID,Discount_Name,Discount_Value, DATE_FORMAT(Valid_From,'%d-%m-%Y'),DATE_FORMAT(Valid_To,'%d-%m-%Y') from Discounts where Discount_ID='" + discid + "'";
            }

            conn = new MySqlConnection(GetConnectionString());

            try
            {
                conn.Open();
                MySqlCommand comm = new MySqlCommand(sql, conn);
                MySqlDataReader dr = comm.ExecuteReader();
                dr.Read();
                TextBox4.Text = dr.GetValue(0).ToString();
                TextBox6.Text = dr.GetValue(1).ToString();
                TextBox2.Text = dr.GetValue(2).ToString();
                TextBox5.Text = dr.GetValue(3).ToString();
                TextBox7.Text = dr.GetValue(4).ToString();
                dr.Close();


                String discid1 = TextBox4.Text;
                comm.CommandText = "Select d.Discount_ID, p.Product_ID,p.Company_Name,p.Product_Name from Discount_Schemes d,Current_Store_Products p where d.Product_ID=p.Product_ID and Discount_ID='" + discid1 + "'";
                dr = comm.ExecuteReader();

                DiscountedProductsGrid.DataSource = dr;
                DiscountedProductsGrid.DataBind();
                dr.Close();

            }
            catch (Exception ex)
            { Response.Write(ex.Message); }
            finally { conn.Close(); }
        }

        protected void SearchDiscount_Click(object sender, EventArgs e)
        {
            String discid = TextBox4.Text;
            String discname = TextBox6.Text;
            String sql = "";
            if (!(discname.Equals("")))
            {
                sql = "Select Discount_ID,Discount_Name,Discount_Value, DATE_FORMAT(Valid_From,'%d-%m-%Y'),DATE_FORMAT(Valid_To,'%d-%m-%Y') from Discounts where Discount_Name='" + discname + "'";

            }
            else if (!(discid.Equals("")))
            {
                sql = "Select Discount_ID,Discount_Name,Discount_Value, DATE_FORMAT(Valid_From,'%d-%m-%Y'),DATE_FORMAT(Valid_To,'%d-%m-%Y') from Discounts where Discount_ID='" + discid + "'";
            }

            conn = new MySqlConnection(GetConnectionString());

            try
            {
                conn.Open();
                MySqlCommand comm = new MySqlCommand(sql, conn);
                MySqlDataReader dr = comm.ExecuteReader();
                dr.Read();
                TextBox10.Text = dr.GetValue(0).ToString();
                TextBox9.Text = dr.GetValue(1).ToString();
                //TextBox2.Text = dr.GetValue(2).ToString();
                //TextBox5.Text = dr.GetValue(3).ToString();
                //TextBox7.Text = dr.GetValue(4).ToString();
                dr.Close();


                String discid1 = TextBox10.Text;
                comm.CommandText = "Select d.Discount_ID, p.Product_ID,p.Company_Name,p.Product_Name from Discount_Schemes d,Current_Store_Products p where d.Product_ID=p.Product_ID and Discount_ID='" + discid1 + "'";
                dr = comm.ExecuteReader();

                DiscountedProductsGrid.DataSource = dr;
                DiscountedProductsGrid.DataBind();
                dr.Close();

            }
            catch (Exception ex)
            { Response.Write(ex.Message); }
            finally { conn.Close(); }
        }

        protected void Invalidate_Click(object sender, EventArgs e)
        {

            String discid = TextBox4.Text;
            String discname = TextBox6.Text;
            String sql = "";

            try
            {
                conn.Open();
                MySqlCommand comm = new MySqlCommand("Update Discounts set Valid_To=(STR_TO_DATE(DATE_SUB(NOW(),INTERVAL 1 DAY)) where Discount_ID='" + discid + "'", conn);
                comm.ExecuteNonQuery();

                comm.CommandText = "Select * from Discounts";
                MySqlDataReader dr = comm.ExecuteReader();
                DiscountsGrid.DataSource = dr;
                DiscountsGrid.DataBind();
                dr.Close();

            }
            catch (Exception ex)
            { Response.Write(ex.Message); }
            finally { conn.Close(); }

            ClearAll();
        }

        protected void TextBox11_TextChanged(object sender, EventArgs e)
        {
            String discid = TextBox10.Text;
            String prid = TextBox11.Text;
            conn = new MySqlConnection(GetConnectionString());

            try
            {
                conn.Open();
                MySqlCommand comm1 = new MySqlCommand("Select d.Discount_ID, p.Product_ID,p.Company_Name,p.Product_Name from Discount_Schemes d,Current_Store_Products p where d.Product_ID=p.Product_ID and Discount_ID='" + discid + "'", conn);
                MySqlDataReader dr1 = comm1.ExecuteReader();
                DiscountedProductsGrid.DataSource = dr1;
                DiscountedProductsGrid.DataBind();
                dr1.Close();
                MySqlCommand comm = new MySqlCommand("Delete from Discount_Schemes where Product_ID='" + prid + "' and Discount_ID='" + discid + "'", conn);
                comm.ExecuteNonQuery();
                comm.CommandText = "Select d.Discount_ID, p.Product_ID,p.Company_Name,p.Product_Name from Discount_Schemes d,Current_Store_Products p where d.Product_ID=p.Product_ID and Discount_ID='" + discid + "'";
                MySqlDataReader dr = comm.ExecuteReader();
                DiscountedProductsGrid.DataSource = dr;
                DiscountedProductsGrid.DataBind();
                dr.Close();
            }
            catch (Exception ex)
            { Response.Write(ex.Message); }
            finally { conn.Close(); }
            ClearAll();
        }

        protected void ClearAll()
        {
            TextBox2.Text = "";
            TextBox9.Text = "";
            TextBox10.Text = "";
            TextBox11.Text = "";
            TextBox5.Text = "";
            TextBox6.Text = "";
            TextBox7.Text = "";





        }
    }
}
