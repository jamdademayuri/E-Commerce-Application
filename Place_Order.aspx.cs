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
    public partial class Place_Order : System.Web.UI.Page
    {
        SqlConnection conn;
        protected void Page_Load(object sender, EventArgs e)
        {
            string cnf = ConfigurationManager.ConnectionStrings["dbconn"].ConnectionString;
            conn=new SqlConnection(cnf);
            conn.Open();
            if(!IsPostBack)
            {
                FetchDetails();
               
            }
           
        }
        protected void FetchDetails()
        {
            string em = Session["MyUser"].ToString();
            
            Label7.Text=em;
            Label9.Text = Session["Address"].ToString();
            Label8.Text = Session["contact"].ToString();
            Label6.Text = "Inv" + GenerateOrderId();
            Label10.Text = Session["GrandTotal"].ToString();
        }
        protected string GenerateOrderId()
        {
            Random random=new Random();
            return random.Next(100,999).ToString();

        }
        
    }
}