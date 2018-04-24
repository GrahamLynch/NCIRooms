using System;
using System.Collections.Generic;
using System.Configuration;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class sellit : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        var NewItem = new SqlDataSource();
        NewItem.ConnectionString = ConfigurationManager.ConnectionStrings["DefaultConnection"].ConnectionString;
        NewItem.InsertCommandType = SqlDataSourceCommandType.Text;
        NewItem.InsertCommand = "INSERT INTO Rooms_To_Rent VALUES (@Room_Name, @Image, @Image2, @Image3, @Description, @Price, @Seller, @Status, @where)";
        NewItem.InsertParameters.Add("Room_Name", TextBox1.Text.ToString());
        NewItem.InsertParameters.Add("Image", TextBox2.Text.ToString());
        NewItem.InsertParameters.Add("Image2", TextBox3.Text.ToString());
        NewItem.InsertParameters.Add("Image3", TextBox4.Text.ToString());
        NewItem.InsertParameters.Add("Description", TextBox5.Text.ToString());
        NewItem.InsertParameters.Add("Price", TextBox6.Text.ToString());
        NewItem.InsertParameters.Add("Seller", TextBox7.Text.ToString());
        NewItem.InsertParameters.Add("Status", TextBox8.Text.ToString());
        NewItem.InsertParameters.Add("where", TextBox9.Text.ToString());
        NewItem.Insert();

    }

    protected void TextBox9_TextChanged(object sender, EventArgs e)
    {

    }
}