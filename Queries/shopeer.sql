USE [dryframing]
GO

/****** Object:  Table [dbo].[Shopeer]    Script Date: 25/01/2019 02:07:43 È.Ù ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Shopeer](
	[id_SH] [dbo].[Id_] NOT NULL,
	[fname_SH] [nvarchar](20) NULL,
	[lname_SH] [nvarchar](20) NULL,
	[addres_SH] [nvarchar](100) NULL,
	[phone_SH] [nvarchar](11) NULL,
	[city_SH] [nvarchar](20) NULL,
 CONSTRAINT [PK_Shopeer] PRIMARY KEY CLUSTERED 
(
	[id_SH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO


