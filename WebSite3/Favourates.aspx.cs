using System;
using System.Collections.Generic;
using System.Configuration;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Favourates : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Repeater1_ItemCommand(object source, RepeaterCommandEventArgs e)
    {
       

    }

   

        protected void Button1_Click(object sender, EventArgs e)
        {
            var con = new SqlDataSource();
            con.ConnectionString = ConfigurationManager.ConnectionStrings["DefaultConnection"].ConnectionString;
            con.DeleteCommandType = SqlDataSourceCommandType.Text;
            con.DeleteCommand = "delete from [Favourates] WHERE (ItemId = @Id)";
            con.DeleteParameters.Add("Id", Request.QueryString["id"]);
            con.Delete();

            Response.Redirect("~/userprofile");
        }

    }
