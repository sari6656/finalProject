USE [MalkiSari]
GO
/****** Object:  Table [dbo].[Categories]    Script Date: 24/07/2019 17:59:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Categories](
	[codeCategory] [int] IDENTITY(1,1) NOT NULL,
	[nameCategory] [nvarchar](30) NULL,
 CONSTRAINT [PK__Categori__D41A01F603317E3D] PRIMARY KEY CLUSTERED 
(
	[codeCategory] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Category_to_shop]    Script Date: 24/07/2019 17:59:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Category_to_shop](
	[codeCTS] [int] IDENTITY(1,1) NOT NULL,
	[codeShop] [int] NOT NULL,
	[codeCategory] [int] NOT NULL,
 CONSTRAINT [PK__Category__9EEB588C07020F21] PRIMARY KEY CLUSTERED 
(
	[codeCTS] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Searches]    Script Date: 24/07/2019 17:59:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Searches](
	[codeSearch] [int] IDENTITY(1,1) NOT NULL,
	[codeUser] [int] NOT NULL,
	[nameProduct] [nvarchar](30) NULL,
	[codeCategory] [int] NOT NULL,
	[status] [int] NOT NULL,
	[codeShop] [int] NULL,
 CONSTRAINT [PK__Searches__DAB09389108B795B] PRIMARY KEY CLUSTERED 
(
	[codeSearch] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Shops]    Script Date: 24/07/2019 17:59:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Shops](
	[codeShop] [int] IDENTITY(1,1) NOT NULL,
	[nameShop] [nvarchar](20) NOT NULL,
	[passwordShop] [varchar](4) NOT NULL,
	[phoneShop] [varchar](10) NULL,
	[mailShop] [nvarchar](30) NULL,
	[latitude] [float] NOT NULL,
	[longitude] [float] NOT NULL,
	[fromHour] [varchar](5) NULL,
	[toHour] [varchar](5) NULL,
	[addressString] [nvarchar](100) NOT NULL,
 CONSTRAINT [PK__Shops__709F00427F60ED59] PRIMARY KEY CLUSTERED 
(
	[codeShop] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Users]    Script Date: 24/07/2019 17:59:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Users](
	[codeUser] [int] IDENTITY(1,1) NOT NULL,
	[nameUser] [nvarchar](20) NOT NULL,
	[phoneUser] [varchar](10) NULL,
	[mailUser] [nvarchar](30) NOT NULL,
	[passwordUser] [varchar](10) NOT NULL,
 CONSTRAINT [PK__Users__66CA1DB50CBAE877] PRIMARY KEY CLUSTERED 
(
	[codeUser] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Categories] ON 

INSERT [dbo].[Categories] ([codeCategory], [nameCategory]) VALUES (1, N'בגדי נשים')
INSERT [dbo].[Categories] ([codeCategory], [nameCategory]) VALUES (2, N'בגדי ילדים')
INSERT [dbo].[Categories] ([codeCategory], [nameCategory]) VALUES (3, N'כלי נגינה')
INSERT [dbo].[Categories] ([codeCategory], [nameCategory]) VALUES (4, N'מכשירי כתיבה')
INSERT [dbo].[Categories] ([codeCategory], [nameCategory]) VALUES (5, N'אוכל')
INSERT [dbo].[Categories] ([codeCategory], [nameCategory]) VALUES (6, N'מוצרי מזון')
INSERT [dbo].[Categories] ([codeCategory], [nameCategory]) VALUES (7, N'כלי בית')
INSERT [dbo].[Categories] ([codeCategory], [nameCategory]) VALUES (8, N'כלי גינה')
INSERT [dbo].[Categories] ([codeCategory], [nameCategory]) VALUES (9, N'מוצרי אפייה')
INSERT [dbo].[Categories] ([codeCategory], [nameCategory]) VALUES (10, N'תכשיטים')
INSERT [dbo].[Categories] ([codeCategory], [nameCategory]) VALUES (12, N'אומנות')
INSERT [dbo].[Categories] ([codeCategory], [nameCategory]) VALUES (13, N'אופניים וציוד רכיבה')
INSERT [dbo].[Categories] ([codeCategory], [nameCategory]) VALUES (14, N'אספנות')
INSERT [dbo].[Categories] ([codeCategory], [nameCategory]) VALUES (15, N'ביגוד ואופנה')
INSERT [dbo].[Categories] ([codeCategory], [nameCategory]) VALUES (16, N'חגים')
INSERT [dbo].[Categories] ([codeCategory], [nameCategory]) VALUES (17, N'יודאיקה')
INSERT [dbo].[Categories] ([codeCategory], [nameCategory]) VALUES (18, N'כלי נגינה')
INSERT [dbo].[Categories] ([codeCategory], [nameCategory]) VALUES (19, N'כלי עבודה')
INSERT [dbo].[Categories] ([codeCategory], [nameCategory]) VALUES (20, N'כלים סנטריים')
INSERT [dbo].[Categories] ([codeCategory], [nameCategory]) VALUES (21, N'לבית ולמשפחה')
INSERT [dbo].[Categories] ([codeCategory], [nameCategory]) VALUES (22, N'לגינה ולחצר')
INSERT [dbo].[Categories] ([codeCategory], [nameCategory]) VALUES (23, N'לתינוק ולילד')
INSERT [dbo].[Categories] ([codeCategory], [nameCategory]) VALUES (24, N'מוצרי חשמל')
INSERT [dbo].[Categories] ([codeCategory], [nameCategory]) VALUES (25, N'מוצרי טבק')
INSERT [dbo].[Categories] ([codeCategory], [nameCategory]) VALUES (26, N'מחשבים וציוד נלווה')
INSERT [dbo].[Categories] ([codeCategory], [nameCategory]) VALUES (27, N'מנויים וכרטיסים')
INSERT [dbo].[Categories] ([codeCategory], [nameCategory]) VALUES (28, N'מצלמות וצילום')
INSERT [dbo].[Categories] ([codeCategory], [nameCategory]) VALUES (29, N'סטוקים')
INSERT [dbo].[Categories] ([codeCategory], [nameCategory]) VALUES (30, N'סטריאו ובידור')
INSERT [dbo].[Categories] ([codeCategory], [nameCategory]) VALUES (31, N'סלולרי')
INSERT [dbo].[Categories] ([codeCategory], [nameCategory]) VALUES (32, N'ספורט ימי ')
INSERT [dbo].[Categories] ([codeCategory], [nameCategory]) VALUES (33, N'ציוד למטייל ולמתגייס')
INSERT [dbo].[Categories] ([codeCategory], [nameCategory]) VALUES (34, N'ציוד לעסקים')
INSERT [dbo].[Categories] ([codeCategory], [nameCategory]) VALUES (35, N'ציוד רפואי\סיעודי')
INSERT [dbo].[Categories] ([codeCategory], [nameCategory]) VALUES (36, N'קונסולות משחק')
INSERT [dbo].[Categories] ([codeCategory], [nameCategory]) VALUES (37, N'קוסמטיקה וטיפוח')
INSERT [dbo].[Categories] ([codeCategory], [nameCategory]) VALUES (38, N'ריהוט')
INSERT [dbo].[Categories] ([codeCategory], [nameCategory]) VALUES (40, N'מוצרי חלב')
INSERT [dbo].[Categories] ([codeCategory], [nameCategory]) VALUES (41, N'יד שניה')
INSERT [dbo].[Categories] ([codeCategory], [nameCategory]) VALUES (42, N'שעונים ותכשיטים')
INSERT [dbo].[Categories] ([codeCategory], [nameCategory]) VALUES (43, N'תיירות ונופש')
INSERT [dbo].[Categories] ([codeCategory], [nameCategory]) VALUES (44, N'פרחים')
INSERT [dbo].[Categories] ([codeCategory], [nameCategory]) VALUES (45, N'בגדי גברים')
INSERT [dbo].[Categories] ([codeCategory], [nameCategory]) VALUES (46, N'בגדי תינוקים')
SET IDENTITY_INSERT [dbo].[Categories] OFF
SET IDENTITY_INSERT [dbo].[Category_to_shop] ON 

INSERT [dbo].[Category_to_shop] ([codeCTS], [codeShop], [codeCategory]) VALUES (6, 14, 26)
INSERT [dbo].[Category_to_shop] ([codeCTS], [codeShop], [codeCategory]) VALUES (7, 14, 30)
INSERT [dbo].[Category_to_shop] ([codeCTS], [codeShop], [codeCategory]) VALUES (8, 14, 31)
INSERT [dbo].[Category_to_shop] ([codeCTS], [codeShop], [codeCategory]) VALUES (9, 14, 28)
INSERT [dbo].[Category_to_shop] ([codeCTS], [codeShop], [codeCategory]) VALUES (13, 16, 4)
INSERT [dbo].[Category_to_shop] ([codeCTS], [codeShop], [codeCategory]) VALUES (14, 16, 12)
INSERT [dbo].[Category_to_shop] ([codeCTS], [codeShop], [codeCategory]) VALUES (15, 16, 29)
INSERT [dbo].[Category_to_shop] ([codeCTS], [codeShop], [codeCategory]) VALUES (21, 18, 1)
INSERT [dbo].[Category_to_shop] ([codeCTS], [codeShop], [codeCategory]) VALUES (22, 18, 2)
INSERT [dbo].[Category_to_shop] ([codeCTS], [codeShop], [codeCategory]) VALUES (23, 18, 10)
INSERT [dbo].[Category_to_shop] ([codeCTS], [codeShop], [codeCategory]) VALUES (24, 18, 15)
INSERT [dbo].[Category_to_shop] ([codeCTS], [codeShop], [codeCategory]) VALUES (25, 18, 23)
INSERT [dbo].[Category_to_shop] ([codeCTS], [codeShop], [codeCategory]) VALUES (44, 17, 5)
INSERT [dbo].[Category_to_shop] ([codeCTS], [codeShop], [codeCategory]) VALUES (45, 17, 6)
INSERT [dbo].[Category_to_shop] ([codeCTS], [codeShop], [codeCategory]) VALUES (46, 17, 9)
INSERT [dbo].[Category_to_shop] ([codeCTS], [codeShop], [codeCategory]) VALUES (47, 17, 29)
INSERT [dbo].[Category_to_shop] ([codeCTS], [codeShop], [codeCategory]) VALUES (48, 17, 40)
INSERT [dbo].[Category_to_shop] ([codeCTS], [codeShop], [codeCategory]) VALUES (49, 17, 4)
INSERT [dbo].[Category_to_shop] ([codeCTS], [codeShop], [codeCategory]) VALUES (50, 17, 16)
INSERT [dbo].[Category_to_shop] ([codeCTS], [codeShop], [codeCategory]) VALUES (51, 17, 44)
INSERT [dbo].[Category_to_shop] ([codeCTS], [codeShop], [codeCategory]) VALUES (56, 1, 9)
INSERT [dbo].[Category_to_shop] ([codeCTS], [codeShop], [codeCategory]) VALUES (57, 1, 8)
INSERT [dbo].[Category_to_shop] ([codeCTS], [codeShop], [codeCategory]) VALUES (79, 11, 7)
INSERT [dbo].[Category_to_shop] ([codeCTS], [codeShop], [codeCategory]) VALUES (80, 11, 8)
INSERT [dbo].[Category_to_shop] ([codeCTS], [codeShop], [codeCategory]) VALUES (81, 11, 19)
INSERT [dbo].[Category_to_shop] ([codeCTS], [codeShop], [codeCategory]) VALUES (87, 15, 5)
INSERT [dbo].[Category_to_shop] ([codeCTS], [codeShop], [codeCategory]) VALUES (88, 15, 6)
INSERT [dbo].[Category_to_shop] ([codeCTS], [codeShop], [codeCategory]) VALUES (89, 15, 9)
INSERT [dbo].[Category_to_shop] ([codeCTS], [codeShop], [codeCategory]) VALUES (90, 15, 40)
INSERT [dbo].[Category_to_shop] ([codeCTS], [codeShop], [codeCategory]) VALUES (91, 15, 44)
INSERT [dbo].[Category_to_shop] ([codeCTS], [codeShop], [codeCategory]) VALUES (93, 2, 17)
INSERT [dbo].[Category_to_shop] ([codeCTS], [codeShop], [codeCategory]) VALUES (94, 13, 3)
INSERT [dbo].[Category_to_shop] ([codeCTS], [codeShop], [codeCategory]) VALUES (95, 13, 30)
SET IDENTITY_INSERT [dbo].[Category_to_shop] OFF
SET IDENTITY_INSERT [dbo].[Shops] ON 

INSERT [dbo].[Shops] ([codeShop], [nameShop], [passwordShop], [phoneShop], [mailShop], [latitude], [longitude], [fromHour], [toHour], [addressString]) VALUES (1, N'מלכי נגינה', N'123', N'0556789223', N'malka789223@gmail.com', 32.0884274, 34.836800499999981, N'08:00', N'18:30', N'הושע 14, בני ברק, ישראל')
INSERT [dbo].[Shops] ([codeShop], [nameShop], [passwordShop], [phoneShop], [mailShop], [latitude], [longitude], [fromHour], [toHour], [addressString]) VALUES (2, N'שרי', N'450', N'0556789223', N'sari0556772365@gmail.com', 32.0819798, 34.832418899999993, N'10:00', N'13:30', N'הרב דסלר 10, בני ברק, ישראל')
INSERT [dbo].[Shops] ([codeShop], [nameShop], [passwordShop], [phoneShop], [mailShop], [latitude], [longitude], [fromHour], [toHour], [addressString]) VALUES (4, N'malka greenwald', N'1111', N'0556772365', N'hiigf@gmail.com', 12, 12, N'null', NULL, N'a')
INSERT [dbo].[Shops] ([codeShop], [nameShop], [passwordShop], [phoneShop], [mailShop], [latitude], [longitude], [fromHour], [toHour], [addressString]) VALUES (7, N'yeloow', N'147', N'0258025825', N'y@gmail.com', 66, 22, NULL, NULL, N'a')
INSERT [dbo].[Shops] ([codeShop], [nameShop], [passwordShop], [phoneShop], [mailShop], [latitude], [longitude], [fromHour], [toHour], [addressString]) VALUES (8, N'יש', N'222', N'0258745874', N'yesh@gmail.com', 56455.1254, 565.323, NULL, NULL, N'a')
INSERT [dbo].[Shops] ([codeShop], [nameShop], [passwordShop], [phoneShop], [mailShop], [latitude], [longitude], [fromHour], [toHour], [addressString]) VALUES (10, N'כל בו', N'1234', N'023959955', N'1234@gmail.com', 8253.86568, 8523.66, N'05:00', N'07:00', N'a')
INSERT [dbo].[Shops] ([codeShop], [nameShop], [passwordShop], [phoneShop], [mailShop], [latitude], [longitude], [fromHour], [toHour], [addressString]) VALUES (11, N'טמבור', N'369', N'0528547896', N't@gmail.com', 32.086637, 34.829819999999927, N'07:00', N'17:00', N'רבי עקיבא 65, בני ברק, ישראל')
INSERT [dbo].[Shops] ([codeShop], [nameShop], [passwordShop], [phoneShop], [mailShop], [latitude], [longitude], [fromHour], [toHour], [addressString]) VALUES (12, N'בגדים לכל', N'4444', N'0502587458', N'b@gmail.com', 9848.256, 595.95959, N'10:00', N'22:00', N'a')
INSERT [dbo].[Shops] ([codeShop], [nameShop], [passwordShop], [phoneShop], [mailShop], [latitude], [longitude], [fromHour], [toHour], [addressString]) VALUES (13, N'מוזיקלי', N'4747', N'036154785', N'm@gmail.com', 32.4718343, 34.995714700000008, N'15:00', N'17:30', N'רחוב ירושלים 5, פרדס חנה כרכור, ישראל')
INSERT [dbo].[Shops] ([codeShop], [nameShop], [passwordShop], [phoneShop], [mailShop], [latitude], [longitude], [fromHour], [toHour], [addressString]) VALUES (14, N'סלולרכל', N'9999', N'036478596', N's@gmail.com', 12852.8555, 485325, N'10:00', N'15:30', N'aa')
INSERT [dbo].[Shops] ([codeShop], [nameShop], [passwordShop], [phoneShop], [mailShop], [latitude], [longitude], [fromHour], [toHour], [addressString]) VALUES (15, N'מכולת אלי', N'9696', N'0504187458', N'eli@gmail.com', 32.0820479, 34.831475899999987, N'06:00', N'16:30', N'הרב דסלר 3, בני ברק, ישראל')
INSERT [dbo].[Shops] ([codeShop], [nameShop], [passwordShop], [phoneShop], [mailShop], [latitude], [longitude], [fromHour], [toHour], [addressString]) VALUES (16, N'לגן ולמורה', N'321', N'036198745', N'citygan@gmail.com', 32.0799384, 34.832990099999961, N'11:00', N'21:00', N'a')
INSERT [dbo].[Shops] ([codeShop], [nameShop], [passwordShop], [phoneShop], [mailShop], [latitude], [longitude], [fromHour], [toHour], [addressString]) VALUES (17, N'נתיב החסד', N'8888', N'0528746696', N'native@gmail.com', 32.082249400000009, 34.838375499999984, N'07:30', N'21:30', N'הרב מלצר 15, בני ברק, ישראל')
INSERT [dbo].[Shops] ([codeShop], [nameShop], [passwordShop], [phoneShop], [mailShop], [latitude], [longitude], [fromHour], [toHour], [addressString]) VALUES (18, N'בזאר שטראוס', N'000', N'0521478521', N'shtraus@gmail.com', 32.0867993, 34.830027599999994, N'11:00', N'21:00', N'a')
SET IDENTITY_INSERT [dbo].[Shops] OFF
SET IDENTITY_INSERT [dbo].[Users] ON 

INSERT [dbo].[Users] ([codeUser], [nameUser], [phoneUser], [mailUser], [passwordUser]) VALUES (1, N'sari', N'0556772365', N'sari0556772365@gmail.com', N'123')
INSERT [dbo].[Users] ([codeUser], [nameUser], [phoneUser], [mailUser], [passwordUser]) VALUES (2, N'malki', N'0556789223', N'malka789223@gmail.com', N'456')
SET IDENTITY_INSERT [dbo].[Users] OFF
ALTER TABLE [dbo].[Category_to_shop]  WITH CHECK ADD  CONSTRAINT [fk_constraint1] FOREIGN KEY([codeShop])
REFERENCES [dbo].[Shops] ([codeShop])
GO
ALTER TABLE [dbo].[Category_to_shop] CHECK CONSTRAINT [fk_constraint1]
GO
ALTER TABLE [dbo].[Category_to_shop]  WITH CHECK ADD  CONSTRAINT [fk_constraint2] FOREIGN KEY([codeCategory])
REFERENCES [dbo].[Categories] ([codeCategory])
GO
ALTER TABLE [dbo].[Category_to_shop] CHECK CONSTRAINT [fk_constraint2]
GO
ALTER TABLE [dbo].[Searches]  WITH CHECK ADD  CONSTRAINT [fk_constraint5] FOREIGN KEY([codeCategory])
REFERENCES [dbo].[Categories] ([codeCategory])
GO
ALTER TABLE [dbo].[Searches] CHECK CONSTRAINT [fk_constraint5]
GO
ALTER TABLE [dbo].[Searches]  WITH CHECK ADD  CONSTRAINT [fk_constraint6] FOREIGN KEY([codeUser])
REFERENCES [dbo].[Users] ([codeUser])
GO
ALTER TABLE [dbo].[Searches] CHECK CONSTRAINT [fk_constraint6]
GO
ALTER TABLE [dbo].[Searches]  WITH CHECK ADD  CONSTRAINT [fk_constraint7] FOREIGN KEY([codeShop])
REFERENCES [dbo].[Shops] ([codeShop])
GO
ALTER TABLE [dbo].[Searches] CHECK CONSTRAINT [fk_constraint7]
GO
