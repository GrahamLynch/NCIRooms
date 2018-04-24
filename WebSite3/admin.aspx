<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="admin.aspx.cs" Inherits="admin" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" Runat="Server">

    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" SelectCommand="SELECT * FROM [Rights]"></asp:SqlDataSource>
    <asp:FormView ID="FormView1" runat="server" AllowPaging="True" DataKeyNames="Id" DataSourceID="SqlDataSource1">
        
        <EditItemTemplate>
            
            
            Id:
            <asp:Label ID="IdLabel1" runat="server" Text='<%# Eval("Id") %>' />
            <br />
            UserName:
            <asp:TextBox ID="UserNameTextBox" runat="server" Text='<%# Bind("UserName") %>' />
            <br />
            Right:
            <asp:TextBox ID="RightTextBox" runat="server" Text='<%# Bind("Right") %>' />
            <br />
            <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
            &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
        </EditItemTemplate>
        <InsertItemTemplate>
            UserName:
            <asp:TextBox ID="UserNameTextBox" runat="server" Text='<%# Bind("UserName") %>' />
            <br />
            Right:
            <asp:TextBox ID="RightTextBox" runat="server" Text='<%# Bind("Right") %>' />
            <br />
            <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
            &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
        </InsertItemTemplate>
        <ItemTemplate>
            
            Id: 
            <asp:Label ID="IdLabel" runat="server" Text='<%# Eval("Id") %>' />
            <br />
            UserName: 
            <asp:Label ID="UserNameLabel" runat="server" Text='<%# Bind("UserName") %>' />
            <br />
            Right: 
            <asp:Label ID="RightLabel" runat="server" Text='<%# Bind("Right") %>' />
            <br />

        </ItemTemplate>
    </asp:FormView>

    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" DeleteCommand="DELETE FROM [Rooms_To_Rent] WHERE [Rent_Id] = @Rent_Id" InsertCommand="INSERT INTO [Rooms_To_Rent] ([Room_Name], [Image], [Image2], [Image3], [Description], [Price], [Seller], [Status], [where]) VALUES (@Room_Name, @Image, @Image2, @Image3, @Description, @Price, @Seller, @Status, @where)" SelectCommand="SELECT * FROM [Rooms_To_Rent]" UpdateCommand="UPDATE [Rooms_To_Rent] SET [Room_Name] = @Room_Name, [Image] = @Image, [Image2] = @Image2, [Image3] = @Image3, [Description] = @Description, [Price] = @Price, [Seller] = @Seller, [Status] = @Status, [where] = @where WHERE [Rent_Id] = @Rent_Id">
        <DeleteParameters>
            <asp:Parameter Name="Rent_Id" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="Room_Name" Type="String" />
            <asp:Parameter Name="Image" Type="String" />
            <asp:Parameter Name="Image2" Type="String" />
            <asp:Parameter Name="Image3" Type="String" />
            <asp:Parameter Name="Description" Type="String" />
            <asp:Parameter Name="Price" Type="String" />
            <asp:Parameter Name="Seller" Type="String" />
            <asp:Parameter Name="Status" Type="String" />
            <asp:Parameter Name="where" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="Room_Name" Type="String" />
            <asp:Parameter Name="Image" Type="String" />
            <asp:Parameter Name="Image2" Type="String" />
            <asp:Parameter Name="Image3" Type="String" />
            <asp:Parameter Name="Description" Type="String" />
            <asp:Parameter Name="Price" Type="String" />
            <asp:Parameter Name="Seller" Type="String" />
            <asp:Parameter Name="Status" Type="String" />
            <asp:Parameter Name="where" Type="String" />
            <asp:Parameter Name="Rent_Id" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
    <asp:FormView ID="FormView2" runat="server" AllowPaging="True" DataKeyNames="Rent_Id" DataSourceID="SqlDataSource2">
        <EditItemTemplate>
            Rent_Id:
            <asp:Label ID="Rent_IdLabel1" runat="server" Text='<%# Eval("Rent_Id") %>' />
            <br />
            Room_Name:
            <asp:TextBox ID="Room_NameTextBox" runat="server" Text='<%# Bind("Room_Name") %>' />
            <br />
            Image:
            <asp:TextBox ID="ImageTextBox" runat="server" Text='<%# Bind("Image") %>' />
            <br />
            Image2:
            <asp:TextBox ID="Image2TextBox" runat="server" Text='<%# Bind("Image2") %>' />
            <br />
            Image3:
            <asp:TextBox ID="Image3TextBox" runat="server" Text='<%# Bind("Image3") %>' />
            <br />
            Description:
            <asp:TextBox ID="DescriptionTextBox" runat="server" Text='<%# Bind("Description") %>' />
            <br />
            Price:
            <asp:TextBox ID="PriceTextBox" runat="server" Text='<%# Bind("Price") %>' />
            <br />
            Seller:
            <asp:TextBox ID="SellerTextBox" runat="server" Text='<%# Bind("Seller") %>' />
            <br />
            Status:
            <asp:TextBox ID="StatusTextBox" runat="server" Text='<%# Bind("Status") %>' />
            <br />
            where:
            <asp:TextBox ID="whereTextBox" runat="server" Text='<%# Bind("where") %>' />
            <br />
            <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
            &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
        </EditItemTemplate>
        <InsertItemTemplate>
            Room_Name:
            <asp:TextBox ID="Room_NameTextBox" runat="server" Text='<%# Bind("Room_Name") %>' />
            <br />
            Image:
            <asp:TextBox ID="ImageTextBox" runat="server" Text='<%# Bind("Image") %>' />
            <br />
            Image2:
            <asp:TextBox ID="Image2TextBox" runat="server" Text='<%# Bind("Image2") %>' />
            <br />
            Image3:
            <asp:TextBox ID="Image3TextBox" runat="server" Text='<%# Bind("Image3") %>' />
            <br />
            Description:
            <asp:TextBox ID="DescriptionTextBox" runat="server" Text='<%# Bind("Description") %>' />
            <br />
            Price:
            <asp:TextBox ID="PriceTextBox" runat="server" Text='<%# Bind("Price") %>' />
            <br />
            Seller:
            <asp:TextBox ID="SellerTextBox" runat="server" Text='<%# Bind("Seller") %>' />
            <br />
            Status:
            <asp:TextBox ID="StatusTextBox" runat="server" Text='<%# Bind("Status") %>' />
            <br />
            where:
            <asp:TextBox ID="whereTextBox" runat="server" Text='<%# Bind("where") %>' />
            <br />
            <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
            &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
        </InsertItemTemplate>
        <ItemTemplate>
            Rent_Id:
            <asp:Label ID="Rent_IdLabel" runat="server" Text='<%# Eval("Rent_Id") %>' />
            <br />
            Room_Name:
            <asp:Label ID="Room_NameLabel" runat="server" Text='<%# Bind("Room_Name") %>' />
            <br />
            Image:
            <asp:Label ID="ImageLabel" runat="server" Text='<%# Bind("Image") %>' />
            <br />

            Image2:
            <asp:Label ID="Image2Label" runat="server" Text='<%# Bind("Image2") %>' />
            <br />
            Image3:
            <asp:Label ID="Image3Label" runat="server" Text='<%# Bind("Image3") %>' />
            <br />
            Description:
            <asp:Label ID="DescriptionLabel" runat="server" Text='<%# Bind("Description") %>' />
            <br />
            Price:
            <asp:Label ID="PriceLabel" runat="server" Text='<%# Bind("Price") %>' />
            <br />
            Seller:
            <asp:Label ID="SellerLabel" runat="server" Text='<%# Bind("Seller") %>' />
            <br />
            Status:
            <asp:Label ID="StatusLabel" runat="server" Text='<%# Bind("Status") %>' />
            <br />
            where:
            <asp:Label ID="whereLabel" runat="server" Text='<%# Bind("where") %>' />
            <br />

            <asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" CommandName="Edit" Text="Edit" />
            &nbsp;<asp:LinkButton ID="DeleteButton" runat="server" CausesValidation="False" CommandName="Delete" Text="Delete" />
            &nbsp;<asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" CommandName="New" Text="New" />

        </ItemTemplate>
    </asp:FormView>


    <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" DeleteCommand="DELETE FROM [Reviews] WHERE [Review_Id] = @Review_Id" InsertCommand="INSERT INTO [Reviews] ([UserName], [Review], [Rent_Id]) VALUES (@UserName, @Review, @Rent_Id)" SelectCommand="SELECT * FROM [Reviews]" UpdateCommand="UPDATE [Reviews] SET [UserName] = @UserName, [Review] = @Review, [Rent_Id] = @Rent_Id WHERE [Review_Id] = @Review_Id">
        <DeleteParameters>
            <asp:Parameter Name="Review_Id" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="UserName" Type="String" />
            <asp:Parameter Name="Review" Type="String" />
            <asp:Parameter Name="Rent_Id" Type="Int32" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="UserName" Type="String" />
            <asp:Parameter Name="Review" Type="String" />
            <asp:Parameter Name="Rent_Id" Type="Int32" />
            <asp:Parameter Name="Review_Id" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
    <asp:FormView ID="FormView3" runat="server" AllowPaging="True" DataKeyNames="Review_Id" DataSourceID="SqlDataSource3">
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





</asp:Content>

