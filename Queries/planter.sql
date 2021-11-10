USE [dryframing]
GO

/****** Object:  Table [dbo].[Planter]    Script Date: 25/01/2019 02:06:26 È.Ù ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[Planter](
	[id_pL] [dbo].[id] NOT NULL,
	[fname_pL] [nvarchar](20) NULL,
	[lname_pL] [nvarchar](20) NULL,
	[phone_pL] [nvarchar](11) NULL,
	[sex_pL] [dbo].[Jenciat_] NULL,
	[address_pL] [text] NULL,
	[city_pL] [nvarchar](30) NULL,
	[national_pL] [nvarchar](10) NULL,
	[zip_PL] [varchar](10) NULL,
	[password_PL] [varchar](10) NULL,
 CONSTRAINT [PK_Planter_1] PRIMARY KEY CLUSTERED 
(
	[id_pL] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO


