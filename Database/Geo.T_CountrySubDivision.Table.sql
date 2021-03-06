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
/****** Object:  Table [Geo].[T_CountrySubDivision]    Script Date: 19/09/2017 01:14:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Geo].[T_CountrySubDivision](
	[CountrySubDivisionId] [bigint] IDENTITY(1,1) NOT NULL,
	[CountrySubDivisionTypeId] [int] NOT NULL,
	[CountryCode] [varchar](2) NOT NULL,
	[Name] [varchar](100) NOT NULL,
	[PinLocation] [geography] NOT NULL,
	[Poligon] [geography] NOT NULL,
	[FlagUrl] [varchar](255) NULL,
	[Status] [char](1) NOT NULL,
 CONSTRAINT [PK_CountrySubDivision] PRIMARY KEY CLUSTERED 
(
	[CountrySubDivisionId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [Geo].[T_CountrySubDivision]  WITH CHECK ADD  CONSTRAINT [FK_CountrySubDivision_Country] FOREIGN KEY([CountryCode])
REFERENCES [Geo].[T_Country] ([CountryCode])
GO
ALTER TABLE [Geo].[T_CountrySubDivision] CHECK CONSTRAINT [FK_CountrySubDivision_Country]
GO
ALTER TABLE [Geo].[T_CountrySubDivision]  WITH CHECK ADD  CONSTRAINT [FK_CountrySubDivision_CountrySubDivisionType] FOREIGN KEY([CountrySubDivisionTypeId])
REFERENCES [Geo].[T_CountrySubDivisionType] ([CountrySubDivisionTypeId])
GO
ALTER TABLE [Geo].[T_CountrySubDivision] CHECK CONSTRAINT [FK_CountrySubDivision_CountrySubDivisionType]
GO
