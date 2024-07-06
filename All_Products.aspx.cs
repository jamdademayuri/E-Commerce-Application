using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace E_Commerce_Application
{
    public partial class All_Products : System.Web.UI.Page
    {
        SqlConnection conn;
        protected void Page_Load(object sender, EventArgs e)
        {
            string cnf = ConfigurationManager.ConnectionStrings["dbconn"].ConnectionString;
            conn = new SqlConnection(cnf);
            conn.Open();
            if (!IsPostBack)
            {
                FetchAllProducts();
            }
        }
        protected void FetchAllProducts()
        {
            string q = "Select * from product";
            SqlCommand cmd = new SqlCommand(q, conn);
            SqlDataReader r = cmd.ExecuteReader();
            DataList1.DataSource = r;
            DataList1.DataBind();
        }

        protected void DataList1_ItemCommand(object source, DataListCommandEventArgs e)
        {
            string pname, pcat, pic,dt,suser;
            double price,total_price;
            int qty;
            if (e.CommandName == "AddToCart")
            {
                string id = e.CommandArgument.ToString();
                string q1 = "exec FindProductByID '" + id + "'";
                SqlCommand c = new SqlCommand(q1, conn);
                SqlDataReader rdr = c.ExecuteReader();
                if (rdr.HasRows)
                {
                    rdr.Read();
                    pname = rdr["pname"].ToString();
                    pcat = rdr["pcat"].ToString();
                    pic = rdr["pic"].ToString();
                    price = double.Parse(rdr["price"].ToString());

                    DropDownList dl = (DropDownList)e.Item.FindControl("DropDownList1");
                    qty = int.Parse(dl.SelectedValue.ToString());

                    total_price = price * qty;
                    dt= DateTime.Now.ToString("yyyy-MM-dd");
                    suser = Session["MyUser"].ToString();

                    string q2 = "exec AddToCartProc '" + pname + "','" + pcat + "','" + total_price + "','" + qty + "','" + pic + "','" + dt + "','" + suser + "','"+price+"'";
                    SqlCommand command = new SqlCommand(q2, conn);
                    command.ExecuteNonQuery();
                    Response.Redirect("Cart.aspx");

                }

            }

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            string q = "Select * from product order by price";
            SqlCommand cmd = new SqlCommand(q, conn);
            SqlDataReader r = cmd.ExecuteReader();
            DataList1.DataSource = r;
            DataList1.DataBind();
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            string q = "Select * from product order by price desc;";
            SqlCommand cmd = new SqlCommand(q, conn);
            SqlDataReader r = cmd.ExecuteReader();
            DataList1.DataSource = r;
            DataList1.DataBind();
        }
    }
 }
