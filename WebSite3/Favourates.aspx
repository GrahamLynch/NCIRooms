<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="Favourates.aspx.cs" Inherits="Favourates" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" Runat="Server">
    
    <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" SelectCommand="SELECT * FROM [Rooms_To_Rent] WHERE ([Rent_Id] = @Rent_Id)">
        <SelectParameters>
            <asp:QueryStringParameter Name="Rent_Id" QueryStringField="id" Type="Int32" />
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
      <h5>Location: <%# Eval("Price") %> </h5>
      <h5>Seller: <%# Eval("Seller") %> </h5>

 
      
  </div>

 </div>
 </ItemTemplate>
 </asp:Repeater>
    <asp:Button ID="Button1" runat="server" Text="Delete from Favourates" CssClass="form-control" OnClick="Button1_Click"/>
</asp:Content>

