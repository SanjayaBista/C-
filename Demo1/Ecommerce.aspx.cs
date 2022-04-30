using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace Demo1
{
    public partial class Ecommerce : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
                ListView();
        }

        protected void ListView()
        {
            try
            {
                Product p = new Product();
                GV1.DataSource = p.SelectRecords();
                GV1.DataBind();
                p = null;
            }
            catch (Exception ex)
            {
                
            }
        }
        protected void TextBox1_TextChanged(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {
                Product p = new Product();
                p.AddProduct(TextBox1.Text, TextBox2.Text, TextBox3.Text, TextBox4.Text);
                Label1.Text = "Data Inserted";
            }
            catch (Exception ex)
            {
                Label1.Text = ex.Message;
            }
        }
    }
}