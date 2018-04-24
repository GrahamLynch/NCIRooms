using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class admin : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (HttpContext.Current.User.Identity.IsAuthenticated)
        {
            try
            {
                string connstring = ConfigurationManager.ConnectionStrings["DefaultConnection"].ConnectionString; // https://stackoverflow.com/questions/22113751/how-to-create-a-connection-string-in-asp-net-c-sharp

                SqlConnection linkToDB = new SqlConnection(connstring);
                linkToDB.Open();
                string sqlText = @"SELECT [Right] FROM [Rights] WHERE [UserName] = @UserName";
                SqlCommand dataAction = new SqlCommand(sqlText, linkToDB);
                SqlParameter paramValue2 = new SqlParameter("@UserName", SqlDbType.VarChar);
                paramValue2.Value = Context.User.Identity.Name;
                dataAction.Parameters.Add(paramValue2);
                var who = dataAction.ExecuteScalar();



                string a = "Admin";
                if (a != who.ToString())
                {


                    Response.Redirect("~/reviews");
                }

            }

            catch
            {

                Response.Redirect("~/authorisation");

            }


        }

        else
            Response.Redirect("~/default");
    }
}