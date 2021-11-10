USE [dryframing]
GO

/****** Object:  Table [dbo].[Toolsproduction]    Script Date: 25/01/2019 02:08:01 È.Ù ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[Toolsproduction](
	[id_TO] [dbo].[Id_] NOT NULL,
	[color_TO] [nvarchar](20) NULL,
	[price_TO] [nvarchar](30) NULL,
	[number_TO] [int] NULL,
	[quality_TO] [dbo].[Quality] NULL,
	[made_TO] [nvarchar](20) NULL,
	[image_TO] [varbinary](max) NULL,
	[name_TO] [varchar](50) NULL,
	[id_CO] [dbo].[Id_] NULL,
	[Id_MA] [dbo].[Id_] NULL,
 CONSTRAINT [PK_Toolsproduction] PRIMARY KEY CLUSTERED 
(
	[id_TO] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO

ALTER TABLE [dbo].[Toolsproduction]  WITH CHECK ADD  CONSTRAINT [FK_Toolsproduction_Controlling] FOREIGN KEY([id_CO])
REFERENCES [dbo].[Controlling] ([id_CO])
ON UPDATE CASCADE
ON DELETE CASCADE
GO

ALTER TABLE [dbo].[Toolsproduction] CHECK CONSTRAINT [FK_Toolsproduction_Controlling]
GO


