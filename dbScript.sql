CREATE TABLE [dbo].[Movie](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](400) NOT NULL,
	[Actors] [nvarchar](400) NOT NULL
) ON [PRIMARY]
GO