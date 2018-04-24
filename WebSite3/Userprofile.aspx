<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="Userprofile.aspx.cs" Inherits="Userprofile" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" Runat="Server">
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" SelectCommand="SELECT * FROM [Reviews] WHERE ([UserName] = @UserName)" DeleteCommand="DELETE FROM [Reviews] WHERE [Review_Id] = @Review_Id" InsertCommand="INSERT INTO [Reviews] ([UserName], [Review], [Rent_Id]) VALUES (@UserName, @Review, @Rent_Id)" UpdateCommand="UPDATE [Reviews] SET [UserName] = @UserName, [Review] = @Review, [Rent_Id] = @Rent_Id WHERE [Review_Id] = @Review_Id">
        <DeleteParameters>
            <asp:Parameter Name="Review_Id" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="UserName" Type="String" />
            <asp:Parameter Name="Review" Type="String" />
            <asp:Parameter Name="Rent_Id" Type="Int32" />
        </InsertParameters>
        <SelectParameters>
            <asp:ControlParameter ControlID="HiddenField1" Name="UserName" PropertyName="Value" Type="String" />
        </SelectParameters>
        <UpdateParameters>
            <asp:Parameter Name="UserName" Type="String" />
            <asp:Parameter Name="Review" Type="String" />
            <asp:Parameter Name="Rent_Id" Type="Int32" />
            <asp:Parameter Name="Review_Id" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>

    <asp:FormView ID="FormView1" runat="server" AllowPaging="True" DataKeyNames="Review_Id" DataSourceID="SqlDataSource1">
        <EditItemTemplate>
            Review_Id:
            <asp:Label ID="Review_IdLabel1" runat="server" Text='<%# Eval("Review_Id") %>' />
            <br />
            UserName:
            <asp:TextBox ID="UserNameTextBox" runat="server" Text='<%# Bind("UserName") %>' />
            <br />
            Review:
            <asp:TextBox ID="ReviewTextBox" runat="server" Text='<%# Bind("Review") %>' />
            <br />
            Rent_Id:
            <asp:TextBox ID="Rent_IdTextBox" runat="server" Text='<%# Bind("Rent_Id") %>' />
            <br />
            <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
            &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
        </EditItemTemplate>
        <InsertItemTemplate>
            UserName:
            <asp:TextBox ID="UserNameTextBox" runat="server" Text='<%# Bind("UserName") %>' />
            <br />
            Review:
            <asp:TextBox ID="ReviewTextBox" runat="server" Text='<%# Bind("Review") %>' />
            <br />
            Rent_Id:
            <asp:TextBox ID="Rent_IdTextBox" runat="server" Text='<%# Bind("Rent_Id") %>' />
            <br />
            <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
            &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
        </InsertItemTemplate>
        <ItemTemplate>
            Review_Id:
            <asp:Label ID="Review_IdLabel" runat="server" Text='<%# Eval("Review_Id") %>' />
            <br />
            UserName:
            <asp:Label ID="UserNameLabel" runat="server" Text='<%# Bind("UserName") %>' />
            <br />
            Review:
            <asp:Label ID="ReviewLabel" runat="server" Text='<%# Bind("Review") %>' />
            <br />
            Rent_Id:
            <asp:Label ID="Rent_IdLabel" runat="server" Text='<%# Bind("Rent_Id") %>' />
            <br />
            <asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" CommandName="Edit" Text="Edit" />
            &nbsp;<asp:LinkButton ID="DeleteButton" runat="server" CausesValidation="False" CommandName="Delete" Text="Delete" />
            &nbsp;<asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" CommandName="New" Text="New" />
        </ItemTemplate>
    </asp:FormView>

    <asp:HiddenField ID="HiddenField1" runat="server" value=""/>

    <asp:Repeater ID="Repeater1" runat="server" 
        DataSourceID="SqlDataSource2"><ItemTemplate>
                                <div class="w3-row w3-border">


      <div class="w3-twothird w3-container">
        <h4><%# Eval("Review") %></h4> 
          


      </div>
 </div>
    </ItemTemplate>
       
    </asp:Repeater>
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" SelectCommand="SELECT * FROM [Reviews]">
       
    </asp:SqlDataSource>

    <h3>Your Saved Favourites</h3>
    <asp:Repeater ID="Repeater2" runat="server" DataSourceID="SqlDataSource3"><ItemTemplate>
        <h4><%# Eval("ItemName") %></h4> 
        <p><asp:HyperLink ID="HyperLink1" runat="server" class="w3-button w3-theme" NavigateUrl='<%# String.Format("~/favourates?id={0}", Eval("ItemId")) %> '>Details</asp:HyperLink></p>
   </ItemTemplate> </asp:Repeater>
    <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" SelectCommand="SELECT * FROM [Favourates] WHERE ([UserName] = @UserName)">
        <SelectParameters>
            <asp:ControlParameter ControlID="HiddenField1" Name="UserName" PropertyName="Value" Type="String" />
        </SelectParameters>
    </asp:SqlDataSource>

</asp:Content>

