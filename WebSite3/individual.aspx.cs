using System;
using System.Collections.Generic;
using System.Configuration;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class individual : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        var NewReview = new SqlDataSource();
        NewReview.ConnectionString = ConfigurationManager.ConnectionStrings["DefaultConnection"].ConnectionString;
        NewReview.InsertCommandType = SqlDataSourceCommandType.Text;
        NewReview.InsertCommand = "INSERT INTO Reviews VALUES (@UserName, @Review, @Rent_Id)";
        NewReview.InsertParameters.Add("UserName", Context.User.Identity.Name.ToString());
        NewReview.InsertParameters.Add("Review", TextBox1.Text.ToString());
        NewReview.InsertParameters.Add("Rent_Id", Request.QueryString["Rent_Id"]);
        NewReview.Insert();
        Response.Redirect("~/default");

    }

    protected void SqlDataSource2_Selecting(object sender, SqlDataSourceSelectingEventArgs e)
    {

    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        var NewFave = new SqlDataSource();
        NewFave.ConnectionString = ConfigurationManager.ConnectionStrings["DefaultConnection"].ConnectionString;
        NewFave.InsertCommandType = SqlDataSourceCommandType.Text;
        NewFave.InsertCommand = "INSERT INTO Favourates VALUES (@ItemName, @UserName, @ItemId)";
        NewFave.InsertParameters.Add("UserName", Context.User.Identity.Name.ToString());
        NewFave.InsertParameters.Add("ItemName", Request.QueryString["item"].ToString());
        NewFave.InsertParameters.Add("ItemId", Request.QueryString["Rent_Id"]);
        NewFave.Insert();
        Response.Redirect("~/userprofile");


    }

    protected void Repeater1_ItemCommand(object source, RepeaterCommandEventArgs e)
    {

    }


    protected void CustomValidator1_ServerValidate1(object source, ServerValidateEventArgs args)
    {
        if (TextBox1.Text.Length > 8)
        {
            
        }
        else
            Label4.Text = "Too Short";
    }
}

