/*    ==Scripting Parameters==

    Source Server Version : SQL Server 2016 (13.0.4206)
    Source Database Engine Edition : Microsoft SQL Server Express Edition
    Source Database Engine Type : Standalone SQL Server

    Target Server Version : SQL Server 2017
    Target Database Engine Edition : Microsoft SQL Server Standard Edition
    Target Database Engine Type : Standalone SQL Server
*/
USE [BeenThere]
GO
/****** Object:  Table [Geo].[T_Country]    Script Date: 19/09/2017 01:14:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Geo].[T_Country](
	[CountryCode] [varchar](2) NOT NULL,
	[CountryCode3] [varchar](3) NOT NULL,
	[Name] [varchar](100) NOT NULL,
	[Status] [char](1) NOT NULL,
	[FlagUrl] [varchar](255) NULL,
	[CapitalPinLocation] [geography] NOT NULL,
	[Poligon] [geography] NOT NULL,
 CONSTRAINT [PK_T_Country] PRIMARY KEY CLUSTERED 
(
	[CountryCode] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
