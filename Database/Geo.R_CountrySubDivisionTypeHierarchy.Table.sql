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
/****** Object:  Table [Geo].[R_CountrySubDivisionTypeHierarchy]    Script Date: 19/09/2017 01:14:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Geo].[R_CountrySubDivisionTypeHierarchy](
	[CountrySubDivisionTypeHierarchyId] [int] IDENTITY(1,1) NOT NULL,
	[CountrySubDivisionTypeId] [int] NOT NULL,
	[ParentCountrySubDivisionTypeId] [int] NULL,
	[Status] [char](1) NOT NULL,
 CONSTRAINT [PK_CountrySubDivisionTypeHierarchy] PRIMARY KEY CLUSTERED 
(
	[CountrySubDivisionTypeHierarchyId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [Geo].[R_CountrySubDivisionTypeHierarchy]  WITH CHECK ADD  CONSTRAINT [FK_CountrySubDivisionTypeHierarchy_CountrySubDivisionType] FOREIGN KEY([CountrySubDivisionTypeId])
REFERENCES [Geo].[T_CountrySubDivisionType] ([CountrySubDivisionTypeId])
GO
ALTER TABLE [Geo].[R_CountrySubDivisionTypeHierarchy] CHECK CONSTRAINT [FK_CountrySubDivisionTypeHierarchy_CountrySubDivisionType]
GO
ALTER TABLE [Geo].[R_CountrySubDivisionTypeHierarchy]  WITH CHECK ADD  CONSTRAINT [FK_CountrySubDivisionTypeHierarchy_ParentCountrySubDivisionType] FOREIGN KEY([ParentCountrySubDivisionTypeId])
REFERENCES [Geo].[T_CountrySubDivisionType] ([CountrySubDivisionTypeId])
GO
ALTER TABLE [Geo].[R_CountrySubDivisionTypeHierarchy] CHECK CONSTRAINT [FK_CountrySubDivisionTypeHierarchy_ParentCountrySubDivisionType]
GO
