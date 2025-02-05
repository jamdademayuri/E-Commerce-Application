﻿using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace E_Commerce_Application
{
    public partial class Orders : System.Web.UI.Page
    {
        SqlConnection conn;
        protected void Page_Load(object sender, EventArgs e)
        {
            string cnf = ConfigurationManager.ConnectionStrings["dbconn"].ConnectionString;
            conn = new SqlConnection(cnf);
            conn.Open();
        }

            protected void Button1_Click(object sender, EventArgs e)
             {

            if (Session["MyUser"] != null)
            {
                GridView1.CssClass = "myclass";
                string from, to;
                from = TextBox1.Text;
                to = TextBox2.Text;

                string q = "select * from placeorder where dt between '" + from + "' AND '" + to + "' order by dt";
                SqlCommand cmd = new SqlCommand(q, conn);
                SqlDataReader rdr = cmd.ExecuteReader();
                GridView2.DataSource = rdr;
                GridView2.DataBind();


            }
           }

        protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            string q1;
            if(e.CommandName =="Status")
            {
                string id=e.CommandArgument.ToString();
                string q = "select * from placeorder where pid='" + id + "'";
                SqlCommand command = new SqlCommand(q, conn);   
                SqlDataReader r = command.ExecuteReader();
                r.Read();
                string status = r["pstatus"].ToString();   
                if(status.Equals("Not Delivered"))
                {
                   q1 = "Update placeorder set pstatus='Delivered' where pid='"+id+"'";
                    SqlCommand c=new SqlCommand(q1, conn); 
                    c.ExecuteNonQuery();
                    Response.Redirect("Orders.aspx");
                }
                
            }
        }

        protected void GridView2_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            string q1;
            if (e.CommandName == "Status")
            {
                string id = e.CommandArgument.ToString();
                string q = "select * from placeorder where pid='" + id + "'";
                SqlCommand command = new SqlCommand(q, conn);
                SqlDataReader r = command.ExecuteReader();
                r.Read();
                string status = r["pstatus"].ToString();
                if (status.Equals("Not Delivered"))
                {
                    q1 = "Update placeorder set pstatus='Delivered' where pid='" + id + "'";
                    SqlCommand c = new SqlCommand(q1, conn);
                    c.ExecuteNonQuery();
                    Response.Redirect("Orders.aspx");
                }

            }
        }
    }
    }
