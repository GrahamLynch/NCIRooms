using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class editreview : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        string connstring = ConfigurationManager.ConnectionStrings["DefaultConnection"].ConnectionString; // https://stackoverflow.com/questions/22113751/how-to-create-a-connection-string-in-asp-net-c-sharp

        SqlConnection linkToDB = new SqlConnection(connstring);
        linkToDB.Open();
        string sqlText = @"SELECT [Review] FROM [Reviews] WHERE [id] = @id";
        SqlCommand dataAction = new SqlCommand(sqlText, linkToDB);
        SqlParameter paramValue2 = new SqlParameter("@id", SqlDbType.VarChar);
        paramValue2.Value = Request.QueryString["id"];
        dataAction.Parameters.Add(paramValue2);
        var who = dataAction.ExecuteScalar();


        Label1.Text = who.ToString();

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        var ReviewUpdate = new SqlDataSource();
        ReviewUpdate.ConnectionString = ConfigurationManager.ConnectionStrings["DefaultConnection"].ConnectionString;
        ReviewUpdate.UpdateCommandType = SqlDataSourceCommandType.Text;
        ReviewUpdate.UpdateCommand = "UPDATE [Reviews] SET [Review] = @Review WHERE (id = @Id)";
        ReviewUpdate.UpdateParameters.Add("Review", TextBox1.Text.ToString());
        // ReviewUpdate.UpdateParameters.Add("UserName", textBox4.Text.ToString());
        ReviewUpdate.UpdateParameters.Add("Id", Request.QueryString["id"]);

        ReviewUpdate.Update();

        Response.Redirect("userprofile");
    }

}