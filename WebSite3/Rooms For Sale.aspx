<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="Rooms For Sale.aspx.cs" Inherits="Rooms_For_Sale" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" Runat="Server">
    
   
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" SelectCommand="SELECT * FROM [Rooms_To_Rent]"></asp:SqlDataSource>
    
    <asp:Repeater ID="Repeater1" runat="server" DataSourceID="SqlDataSource2">
        <ItemTemplate>
    <div class="w3-container" id="apartment">
  <h6><%# Eval("Room_Name") %></h6>
  <h6><%# Eval("where") %></h6>
  <h6><%# Eval("Price") %></h6>
  <h6><%# Eval("Seller") %></h6>


  <img class="previewim" id="btn1" src="../images/<%# Eval("image") %>"  alt="Image" style="width: 40%; margin-bottom: 10px;"/>
      <br />
        
        <asp:HyperLink ID="HyperLink1" runat="server" class="w3-button w3-theme" NavigateUrl='<%# String.Format("~/individual?Rent_Id={0}&Seller={1}&item={2}", Eval("Rent_Id"), Eval("Seller"), Eval("Room_Name")) %> '>Details</asp:HyperLink>
      <br />
     </div>
     </ItemTemplate>
  </asp:Repeater>
</asp:Content>

