CREATE TABLE [dbo].[Rooms_To_Rent] (
    [Rent_Id]          INT          IDENTITY (1, 1) NOT NULL,
    [Room_Name]   VARCHAR (50) NOT NULL,
    [Image]       VARCHAR (50) NOT NULL,
    [Image2]      VARCHAR (50) NOT NULL,
    [Image3]      VARCHAR (50) NOT NULL,
    [Description] VARCHAR (50) NOT NULL,
    [Price]       VARCHAR (50) NOT NULL,
    [Seller]      VARCHAR (50) NOT NULL,
    [Status]      VARCHAR (50) DEFAULT ('Available') NOT NULL,
    [where]       VARCHAR (50) NULL,
    PRIMARY KEY CLUSTERED ([Rent_Id] ASC)
);

