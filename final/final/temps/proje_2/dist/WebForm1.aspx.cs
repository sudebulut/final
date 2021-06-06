using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace final
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        SqlConnection baglan = new SqlConnection("Data Source=DESKTOP-2NARH2M\\SQLEXPRESS01;Initial Catalog=final;Integrated Security=True");

        protected void Button2_Click(object sender, EventArgs e)
        {
            SqlCommand komut = new SqlCommand("INSERT INTO ad (ad) values('" + TextBox1.Text + "')", baglan);
            komut.ExecuteNonQuery();
        }
    }
}