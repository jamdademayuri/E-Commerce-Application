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
    public partial class Cart : System.Web.UI.Page
    {
        SqlConnection conn;
        string address, contact;
        protected void Page_Load(object sender, EventArgs e)
        {
            string cnf = ConfigurationManager.ConnectionStrings["dbconn"].ConnectionString;
            conn= new SqlConnection(cnf);   
            conn.Open();
            if(!IsPostBack)
            {
                fetchcart();
                GrandTotal();
            }
            address = TextBox1.Text;
            contact = TextBox2.Text;
            Session["Address"] = address;
            Session["contact"]= contact;
           
        }
        protected void GrandTotal()
            
        {
            string total_price;
            if (Session["MyUser"] != null)
            {
                string suser = Session["MyUser"].ToString();
                string q2 = "select sum(price) as total from cart where suser='" + suser + "'";
                SqlCommand command = new SqlCommand(q2,conn);
                SqlDataReader reader = command.ExecuteReader();
                reader.Read();
                total_price=reader["total"].ToString();
                Label8.Text= total_price; 
                Session["GrandTotal"]= total_price;
            }
            else
            {
                Response.Redirect("Login.aspx");
            }
        }

        protected void fetchcart()
        {
            if (Session["MyUser"]!=null)
            {
                string suser = Session["MyUser"].ToString();
                string q = "exec FindCartDetailsBySession '" + suser + "'";
                SqlCommand cmd = new SqlCommand(q, conn);
                SqlDataReader r = cmd.ExecuteReader();
                GridView1.DataSource = r;
                GridView1.DataBind();
            }
            else
            {
                Response.Redirect("Login.aspx");
            }
           
        }

        protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
           Label l1=(Label)GridView1.Rows[e.RowIndex].FindControl("Label7");
            string id = l1.Text;

            string q1 = "exec DeleteCartProc '" + id + "'";
            SqlCommand c = new SqlCommand(q1, conn);
            c.ExecuteNonQuery();
            fetchcart();
            Response.Redirect("Cart.aspx");
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            if (Session["MyUser"]!=null)
            {
                string address, contact;
                address = TextBox1.Text;
                contact = TextBox2.Text;
                string us = Session["MyUser"].ToString();
                string q3 = "insert into placeorder(pname,pcat,price,qty,pic,dt,suser,perprice,address,contact,pstatus) select pname,pcat,price,qty,pic,dt,suser,perprice,'"+address+"','"+contact+"','Not Delivered' from cart where suser='" + us+"'";
                SqlCommand sc = new SqlCommand(q3, conn);
                int row=sc.ExecuteNonQuery();
                if(row>0)
                {
                    string q4 = "exec deleteproductcartproc'" + us+"'";
                    SqlCommand sql = new SqlCommand(q4, conn);
                    sql.ExecuteNonQuery();
                    Response.Redirect("Place_Order.aspx");

                }
                else
                {
                    Response.Write("<script>alert('Something went wrong!!!')</script>");
                }

            }
            else
            {
                Response.Redirect("Login.aspx");
            }
        }
    }
}