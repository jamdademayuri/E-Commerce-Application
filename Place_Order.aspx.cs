
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using iTextSharp.text;
using iTextSharp.text.html.simpleparser;
using iTextSharp.text.pdf;


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

        protected void Button1_Click(object sender, EventArgs e)
        {
            
                Response.ContentType = "application/pdf";
                Response.AddHeader("content-disposition", "attachment;filename=OrderInvoice.pdf");
                Response.Cache.SetCacheability(HttpCacheability.NoCache);
                StringWriter sw = new StringWriter();
                HtmlTextWriter writer = new HtmlTextWriter(sw);
                Panel1.RenderControl(writer);
                StringReader stringReader = new StringReader(sw.ToString());
                Document pdfDoc = new Document(PageSize.A4, 10f, 10f, 100f, 0f);
                 HTMLWorker htmlWorker = new HTMLWorker(pdfDoc);
                PdfWriter.GetInstance(pdfDoc, Response.OutputStream);
                pdfDoc.Open();
                htmlWorker.Parse(stringReader);
                pdfDoc.Close();
                Response.Write(pdfDoc);
                Response.End();
            }

        public override void VerifyRenderingInServerForm(Control control)
                {
                    // Required to verify that the control is rendered
                }

            }
        }
