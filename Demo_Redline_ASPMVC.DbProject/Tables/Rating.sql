﻿CREATE TABLE [dbo].[Rating]
(
	[Id_Rating] BIGINT NOT NULL , 
    [Score] DECIMAL(6, 3) NOT NULL, 
    [RatingDate] DATETIME2 NOT NULL,
    [Id_Member] BIGINT NOT NULL, 
    [Comment] NVARCHAR(4000) NULL, 
    [Id_Movie] BIGINT NOT NULL, 
    CONSTRAINT PK_Rating PRIMARY KEY ([Id_Rating]),
     CONSTRAINT FK_Rating_Member
       FOREIGN KEY ([Id_Member]) REFERENCES [Member]([Id_Member]),                                  
       CONSTRAINT FK_Rating_Movie
       FOREIGN KEY ([Id_Movie]) REFERENCES [Movie]([Id_Movie])
    
)
