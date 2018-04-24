<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="sellit.aspx.cs" Inherits="sellit" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" Runat="Server">
    <div class="w3-container">
        <h2>Sell an Room</h2>
        <br />
        <p>Room Name</p><asp:TextBox ID="TextBox1" runat="server" CssClass="form-control"></asp:TextBox>
        <br />
        <p>Image 1</p><asp:TextBox ID="TextBox2" runat="server" CssClass="form-control"></asp:TextBox>
         <br />
        <p>Image 2</p><asp:TextBox ID="TextBox3" runat="server" CssClass="form-control"></asp:TextBox>
         <br />
        <p>Image 3</p><asp:TextBox ID="TextBox4" runat="server" CssClass="form-control"></asp:TextBox>
         <br />
        <p>Description</p><asp:TextBox ID="TextBox5" runat="server" CssClass="form-control"></asp:TextBox>
         <br />
        <p>Price</p><asp:TextBox ID="TextBox6" runat="server" CssClass="form-control"></asp:TextBox>
         <br />
        <p>Seller Name</p><asp:TextBox ID="TextBox7" runat="server" CssClass="form-control"></asp:TextBox>
         <br />
        <p>Status</p><asp:TextBox ID="TextBox8" runat="server" CssClass="form-control"></asp:TextBox>
        <br />
        <p>Location</p><asp:TextBox ID="TextBox9" runat="server" CssClass="form-control" OnTextChanged="TextBox9_TextChanged"></asp:TextBox>
       
      <asp:Button ID="Button1" runat="server" Text="Add Room" CssClass="form-control" OnClick="Button1_Click"/>

        </div>


</asp:Content>

