USE [dryframing]
GO

/****** Object:  Table [dbo].[Pakege]    Script Date: 25/01/2019 01:59:27 ب.ظ ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Pakege](
	[id_PA] [dbo].[Id_] NOT NULL,
	[number_PA] [dbo].[Id_] NULL,
	[value_PA] [decimal](18, 0) NULL,
	[price_PA] [decimal](18, 0) NULL,
	[id_SH] [dbo].[Id_] NULL,
 CONSTRAINT [PK_Pakege] PRIMARY KEY CLUSTERED 
(
	[id_PA] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

ALTER TABLE [dbo].[Pakege]  WITH CHECK ADD  CONSTRAINT [FK_Pakege_Shopeer] FOREIGN KEY([id_SH])
REFERENCES [dbo].[Shopeer] ([id_SH])
ON UPDATE CASCADE
ON DELETE CASCADE
GO

ALTER TABLE [dbo].[Pakege] CHECK CONSTRAINT [FK_Pakege_Shopeer]
GO


