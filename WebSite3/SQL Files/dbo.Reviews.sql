CREATE TABLE [dbo].[Reviews] (
    [Review_Id]       INT           IDENTITY (1, 1) NOT NULL,
    [UserName] VARCHAR (50)  NOT NULL,
    [Review]   VARCHAR (350) NOT NULL,
	[Rent_Id] INT NOT NULL, 
    PRIMARY KEY (Review_Id),
	CONSTRAINT FK_Rent_Id FOREIGN KEY (Rent_Id)
    REFERENCES Rooms_To_Rent(Rent_Id)
);

