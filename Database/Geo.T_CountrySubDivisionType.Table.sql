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
/****** Object:  Table [Geo].[T_CountrySubDivisionType]    Script Date: 19/09/2017 01:14:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Geo].[T_CountrySubDivisionType](
	[CountrySubDivisionTypeId] [int] IDENTITY(1,1) NOT NULL,
	[CountryCode] [varchar](2) NULL,
	[Name] [varchar](100) NOT NULL,
	[PluralName] [varchar](100) NOT NULL,
	[Depth] [int] NOT NULL,
	[Status] [char](1) NOT NULL,
	[MainDivision] [bit] NOT NULL,
 CONSTRAINT [PK_CountrySubDivisionType] PRIMARY KEY CLUSTERED 
(
	[CountrySubDivisionTypeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [Geo].[T_CountrySubDivisionType]  WITH CHECK ADD  CONSTRAINT [FK_CountrySubDivisionType_Country] FOREIGN KEY([CountryCode])
REFERENCES [Geo].[T_Country] ([CountryCode])
GO
ALTER TABLE [Geo].[T_CountrySubDivisionType] CHECK CONSTRAINT [FK_CountrySubDivisionType_Country]
GO
