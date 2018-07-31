using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace SampleAjaxWebApplication
{
    public partial class insert : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(@"Data Source=localhost;Initial Catalog=AjaxExampleDB;User ID=sa;Password=***********;Integrated Security=True");
        string name, city;
        protected void Page_Load(object sender, EventArgs e)
        {
            name = Request.QueryString["nm"].ToString();
            city = Request.QueryString["ct"].ToString();

            con.Open();
            SqlCommand command = con.CreateCommand();
            command.CommandType = CommandType.Text;
            command.CommandText = "insert into ExampleTable values('"+name.ToString()+"','"+city.ToString()+"')";
            command.ExecuteNonQuery();

            con.Close();

        }
    }
}