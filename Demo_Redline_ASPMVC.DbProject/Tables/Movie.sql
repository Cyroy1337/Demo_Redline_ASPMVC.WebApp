CREATE TABLE [dbo].[Movie]
(
	[Id_Movie] BIGINT IDENTITY,
	[Title] NVARCHAR(50) NOT NULL,
	[Resume] NVARCHAR(4000),
	[Duration] INT,
	[ReleaseDate] DATE,
	[id_ProductionCompagny] BIGINT NOT NULL,
	CONSTRAINT [PK_Movie] PRIMARY KEY ([Id_Movie]),
	CONSTRAINT [FK_Movie_ProductionCompagny]
	FOREIGN KEY ([Id_ProductionCompagny]) REFERENCES [ProductionCompagny]([Id_ProductionCompagny])
	)

