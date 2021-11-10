USE [dryframing]
GO

/****** Object:  Table [dbo].[Production]    Script Date: 25/01/2019 02:07:18 È.Ù ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[Production](
	[id_PR] [int] NOT NULL,
	[value_PR] [nvarchar](20) NULL,
	[quality_PR] [dbo].[Quality] NULL,
	[date_PR] [date] NULL,
	[city_PR] [nvarchar](30) NULL,
	[type_PR] [nvarchar](20) NULL,
	[image_PR] [varbinary](max) NULL,
	[name_PR] [varchar](50) NULL,
	[id_MA] [dbo].[Id_] NULL,
	[id_CO] [dbo].[Id_] NULL,
 CONSTRAINT [PK_Production_1] PRIMARY KEY CLUSTERED 
(
	[id_PR] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO


