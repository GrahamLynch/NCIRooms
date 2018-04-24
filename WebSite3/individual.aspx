<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="individual.aspx.cs" Inherits="individual" %>



<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" Runat="Server">
    <script>
    $(document).ready(function () {
        $("#review").click(function () {
            $("#leavepanel").slideToggle(1000);
        });
    });

    $("#btn1").click(function () {
        $("#showreviews").animate({ height: "100px" });
        $("#showreviews").animate({ marginLeft: "-=600px" });
        $("#showreviews").fadeOut(1110);

    });
    $(document).ready(function () {
        $("#details").click(function () {
            $("#leavepanel1").slideToggle(1000);
        });
    });
   
        </script>
      
<asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" SelectCommand="SELECT * FROM [Rooms_To_Rent] WHERE ([Rent_Id] = @Rent_Id)">
    <SelectParameters>
        <asp:QueryStringParameter Name="Rent_Id" QueryStringField="Rent_Id" Type="Int32" />
    </SelectParameters>
    </asp:SqlDataSource>

    <asp:SqlDataSource ID="SqlDataSource" runat="server" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" SelectCommand="SELECT * FROM [Rooms_To_Rent] WHERE ([Id] = @Id)">
        <SelectParameters>
            <asp:QueryStringParameter Name="Id" QueryStringField="id" Type="Int32" />
        </SelectParameters>
    </asp:SqlDataSource>
    <asp:Repeater ID="Repeater1" runat="server" DataSourceID="SqlDataSource3" OnItemCommand="Repeater1_ItemCommand">
        <ItemTemplate>

              <div class="w3-row w3-border">
  <div class="w3-third w3-container">
      <img class="previewim" id="btn1" src="../images/<%# Eval("image") %>"  alt="Image" style="width: 80%; margin-bottom: 10px;"/>
    <img class="previewim" id="btn3" src="../images/<%# Eval("image2") %>"  alt="Image" style="width: 80%; margin-bottom: 10px;"/>
      <img class="previewim" id="btn4" src="../images/<%# Eval("image3") %>"  alt="Image" style="width: 80%; margin-bottom: 10px;"/>
  </div>
  <div class="w3-twothird w3-container">
    <h4><%# Eval("Room_Name") %></h4> 
      <h5><%# Eval("where") %></h5>
      <div id="leavepanel1">
      <h5>Description: <%# Eval("Description") %> </h5>
          </div>
      <p><asp:HyperLink  runat="server" ClientIDMode="Static" id="details">Hide/Show More Details</asp:HyperLink></p>
      <h5>Price: <%# Eval("Price") %> </h5>
      <h5>Seller: <%# Eval("Seller") %> </h5>
 
      
  </div>
 </div>
 </ItemTemplate>
 </asp:Repeater>
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" SelectCommand="SELECT * FROM [Reviews] WHERE ([Rent_Id] = @Rent_Id)" OnSelecting="SqlDataSource2_Selecting">
        <SelectParameters>
            <asp:QueryStringParameter Name="Rent_Id" QueryStringField="Rent_Id" Type="Int32" />
        </SelectParameters>
    </asp:SqlDataSource>
        <div id="showreviews">
        <asp:Repeater ID="Repeater3" runat="server" DataSourceID="SqlDataSource2">

                    <ItemTemplate>
                <footer class="w3-container w3-blue-grey">
  <h5>Review left by <%# Eval("UserName") %></h5>
  <p class="w3-opacity"><%# Eval("Review") %></p>
</footer>
 </ItemTemplate>

            <AlternatingItemTemplate>
                 <footer class="w3-container w3-teal">
  <h5>Review left by <%# Eval("UserName") %></h5>
  <p class="w3-opacity"><%# Eval("Review") %></<p>
</footer>
</AlternatingItemTemplate>
</asp:Repeater>
            <br />
            </div>
    <asp:LoginView ID="LoginView1" runat="server">
        <AnonymousTemplate></AnonymousTemplate>
        <LoggedInTemplate>
             <asp:Button ID="Button2" runat="server" Text="Add to Favourites" cssclass="form-control" OnClick="Button2_Click" />
        </LoggedInTemplate>
    </asp:LoginView>
  
<div id="leavepanel">
    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Please enter a review" ControlToValidate="TextBox1"></asp:RequiredFieldValidator>

<asp:TextBox ID="TextBox1" runat="server" CssClass="form-control"></asp:TextBox>
   
   <br />
<p><asp:Button ID="Button1" runat="server" Text="Leave Review" CssClass="form-control" OnClick="Button1_Click"/></p>

             </div>
         <p><asp:HyperLink  runat="server" ClientIDMode="Static" id="review">Hide/Show Reviews</asp:HyperLink></p>
    <asp:Label ID="Label4" runat="server" Text =""></asp:Label>
</asp:Content>
