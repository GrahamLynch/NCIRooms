<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>


<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
<script>
$(document).ready(function(){
    $("#flip").click(function(){
        $("#panel").slideDown("slow");
    });
});
</script>
 <style> 
#panel, #flip {
    padding: 5px;
    text-align: center;
    background-color: #00ccff;
    border: solid 1px #c3c3c3;
}

#panel {
    padding: 50px;
    display: none;
}

#jumbotron {
    background-color: #ffffff;
}


</style>


    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" SelectCommand="SELECT * FROM [Rooms_To_Rent]"></asp:SqlDataSource>
    <div id="flip">Click to slide down panel</div>
    <div id="panel">Welcome to NCI Rooms! :)</div>
    <div id="jumbotron">
        <img src="Logo1.jpg" />
        <p class="lead">NCI Rooms is an online marketplace enabling people to lease or rent short-term lodging including vacation rentals, apartments, homestays,hostel beds and hotel rooms</p>
        <p><a href="http://localhost:65167/Rooms%20For%20Sale" class="btn btn-primary btn-lg">Book a Room &raquo;</a></p>
    </div>

    <div class="row">
        <div class="col-md-4">
            <h2>Private Rooms</h2>
            <p>
                Private rooms are great for when you prefer a little privacy, but still value a local connection. When you book a private room, you'll have a bedroom to yourself, 
                but will share some spaces with others. With a private room, you'll be able to wake up to greet your new friends in the kitchen and have the freedom to bid them adieu at bedtime.
            </p>
            <p>
                <a class="btn btn-default" href="http://localhost:65167/Rooms%20For%20Sale">Learn more &raquo;</a>
            </p>
        </div>
        <div class="col-md-4">
            <h2>Home/Apartments</h2>
            <p>
               Entire homes/apartments are best if you're seeking a home away from home with complete privacy and the freedom to cook breakfast in your pajamas.
                With an entire home/apartment, you'll have the whole space to yourself. You can be your own host, make your own dinner, and remember to treat your listing with the respect and courtesy you would at your own home.
            </p>
            <p>
                <a class="btn btn-default" href="http://localhost:65167/Rooms%20For%20Sale">Learn more &raquo;</a>
            </p>
        </div>
        <div class="col-md-4">
            <h2>Hostels</h2>
            <p>
               Shared rooms are for when you'd like a comfy, communal experience, and don't mind sharing a space with others. When you book a shared room, you'll be sharing your bedroom and the entire space with other people.
                These rooms work best for the flexible traveller looking for new friends and a budget-friendly stay.
            </p>
            <p>
                <a class="btn btn-default" href="http://localhost:65167/Rooms%20For%20Sale">Learn more &raquo;</a>
            </p>
        </div>
    </div>
</asp:Content>
