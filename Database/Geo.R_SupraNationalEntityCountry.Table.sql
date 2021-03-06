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
/****** Object:  Table [Geo].[R_SupraNationalEntityCountry]    Script Date: 19/09/2017 01:14:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Geo].[R_SupraNationalEntityCountry](
	[SupraNationalEntityId] [int] NOT NULL,
	[CountryCode] [varchar](2) NOT NULL,
	[Status] [char](1) NOT NULL
) ON [PRIMARY]
GO
ALTER TABLE [Geo].[R_SupraNationalEntityCountry]  WITH CHECK ADD  CONSTRAINT [FK_R_SupraNationalEntityCountry_T_Country] FOREIGN KEY([CountryCode])
REFERENCES [Geo].[T_Country] ([CountryCode])
GO
ALTER TABLE [Geo].[R_SupraNationalEntityCountry] CHECK CONSTRAINT [FK_R_SupraNationalEntityCountry_T_Country]
GO
ALTER TABLE [Geo].[R_SupraNationalEntityCountry]  WITH CHECK ADD  CONSTRAINT [FK_R_SupraNationalEntityCountry_T_SupraNationalEntity] FOREIGN KEY([SupraNationalEntityId])
REFERENCES [Geo].[T_SupraNationalEntity] ([SupraNationalEntityId])
GO
ALTER TABLE [Geo].[R_SupraNationalEntityCountry] CHECK CONSTRAINT [FK_R_SupraNationalEntityCountry_T_SupraNationalEntity]
GO
