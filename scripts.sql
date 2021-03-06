CREATE DATABASE best-eats

USE [best_eats]
GO
/****** Object:  Table [dbo].[cuisines]    Script Date: 7/13/2016 4:41:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[cuisines](
	[name] [varchar](255) NULL,
	[id] [int] IDENTITY(1,1) NOT NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[restaurants]    Script Date: 7/13/2016 4:41:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[restaurants](
	[name] [varchar](255) NULL,
	[cuisine_id] [int] NULL,
	[phone_number] [varchar](20) NULL,
	[id] [int] IDENTITY(1,1) NOT NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[reviews]    Script Date: 7/13/2016 4:41:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[reviews](
	[comment] [text] NULL,
	[id] [int] IDENTITY(1,1) NOT NULL,
	[restaurant_id] [int] NULL,
	[rating] [int] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET IDENTITY_INSERT [dbo].[cuisines] ON 

INSERT [dbo].[cuisines] ([name], [id]) VALUES (N'Indian', 1)
INSERT [dbo].[cuisines] ([name], [id]) VALUES (N'Thai', 2)
INSERT [dbo].[cuisines] ([name], [id]) VALUES (N'Italian', 3)
INSERT [dbo].[cuisines] ([name], [id]) VALUES (N'American', 4)
INSERT [dbo].[cuisines] ([name], [id]) VALUES (N'French', 5)
SET IDENTITY_INSERT [dbo].[cuisines] OFF
