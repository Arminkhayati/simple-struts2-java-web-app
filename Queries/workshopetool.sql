USE [dryframing]
GO

/****** Object:  Table [dbo].[WorkshopeTool]    Script Date: 25/01/2019 02:08:18 È.Ù ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[WorkshopeTool](
	[id_WO] [dbo].[Id_] NOT NULL,
	[name_WO] [varchar](50) NULL,
	[owner_WO] [varchar](50) NULL,
	[address_WO] [varchar](100) NULL,
	[date_WO] [varchar](10) NULL,
	[phone_WO] [varchar](11) NULL,
 CONSTRAINT [PK_Toolworkshope] PRIMARY KEY CLUSTERED 
(
	[id_WO] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO


