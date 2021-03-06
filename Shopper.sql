USE [Shopper]
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Administrator](
	[adAcc] [varchar](500) NOT NULL,
	[adPass] [varchar](500) NULL,
PRIMARY KEY CLUSTERED 
(
	[adAcc] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Categories](
	[cateID] [int] IDENTITY(1,1) NOT NULL,
	[cateName] [nvarchar](100) NULL,
	[catePhoto] [nvarchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[cateID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Comments](
	[commentID] [int] IDENTITY(1,1) NOT NULL,
	[proID] [varchar](50) NULL,
	[commentMessage] [nvarchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[commentID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Customers](
	[cusPhone] [varchar](20) NOT NULL,
	[cusFullName] [nvarchar](200) NULL,
	[cusEmail] [varchar](100) NULL,
	[cusAddress] [nvarchar](500) NULL,
PRIMARY KEY CLUSTERED 
(
	[cusPhone] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrderDetails](
	[orderID] [int] NOT NULL,
	[proID] [varchar](50) NOT NULL,
	[ordtsQuantity] [int] NULL,
	[ordtsThanhTien] [varchar](50) NULL,
 CONSTRAINT [PK_OrderDetails] PRIMARY KEY CLUSTERED 
(
	[orderID] ASC,
	[proID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Orders](
	[orderID] [int] IDENTITY(1,1) NOT NULL,
	[cusPhone] [varchar](20) NULL,
	[orderMessage] [nvarchar](max) NULL,
	[orderDateTime] [varchar](50) NULL,
	[orderStatus] [nvarchar](50) NULL,
 CONSTRAINT [PK_Orders] PRIMARY KEY CLUSTERED 
(
	[orderID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Producers](
	[pdcID] [int] IDENTITY(1,1) NOT NULL,
	[pdcName] [nvarchar](100) NULL,
	[pdcPhone] [varchar](20) NULL,
	[pdcEmail] [varchar](50) NULL,
	[pdcAddress] [nvarchar](max) NULL,
	[pdcPhoto] [nvarchar](max) NULL,
	[pdcInfo] [nvarchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[pdcID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Products](
	[proID] [varchar](50) NOT NULL,
	[pdcID] [int] NULL,
	[typeID] [int] NULL,
	[proName] [nvarchar](200) NULL,
	[proSize] [varchar](10) NULL,
	[proPrice] [varchar](10) NULL,
	[proDiscount] [int] NULL,
	[proPhoto] [nvarchar](max) NULL,
	[proUpdateDate] [varchar](50) NULL,
	[proDescription] [nvarchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[proID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductTypes](
	[typeID] [int] IDENTITY(1,1) NOT NULL,
	[cateID] [int] NULL,
	[typeName] [nvarchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[typeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Rates](
	[proID] [varchar](50) NOT NULL,
	[rateStar] [int] NULL,
 CONSTRAINT [PK_Rates] PRIMARY KEY CLUSTERED 
(
	[proID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Administrator] ([adAcc], [adPass]) VALUES (N'NguyenPhucHoi', N'Z8iwc6Uz2M+EpI1l6kLxPQ==')
SET IDENTITY_INSERT [dbo].[Categories] ON 

INSERT [dbo].[Categories] ([cateID], [cateName], [catePhoto]) VALUES (1, N'Quần-Áo', N'/Image/img (7).jpg')
INSERT [dbo].[Categories] ([cateID], [cateName], [catePhoto]) VALUES (2, N'Giày-dép', N'/Image/img (23).jpg')
INSERT [dbo].[Categories] ([cateID], [cateName], [catePhoto]) VALUES (3, N'Mũ(nón)', N'/Image/img (4).png')
INSERT [dbo].[Categories] ([cateID], [cateName], [catePhoto]) VALUES (4, N'giay the thao', N'/Image/img (10).jpg')
SET IDENTITY_INSERT [dbo].[Categories] OFF
SET IDENTITY_INSERT [dbo].[Comments] ON 

INSERT [dbo].[Comments] ([commentID], [proID], [commentMessage]) VALUES (1, N'MU001', N'đã đánh giá MU001')
INSERT [dbo].[Comments] ([commentID], [proID], [commentMessage]) VALUES (2, N'MU002', N'đã đánh giá MU002')
INSERT [dbo].[Comments] ([commentID], [proID], [commentMessage]) VALUES (3, N'MU003', N'đã đánh giá MU003')
INSERT [dbo].[Comments] ([commentID], [proID], [commentMessage]) VALUES (4, N'MU004', N'đã đánh giá MU004')
INSERT [dbo].[Comments] ([commentID], [proID], [commentMessage]) VALUES (5, N'CS001', N'đã đánh giá CS001')
INSERT [dbo].[Comments] ([commentID], [proID], [commentMessage]) VALUES (6, N'CS002', N'đã đánh giá CS002')
INSERT [dbo].[Comments] ([commentID], [proID], [commentMessage]) VALUES (7, N'CS003', N'đã đánh giá CS003')
INSERT [dbo].[Comments] ([commentID], [proID], [commentMessage]) VALUES (8, N'AK001', N'đã đánh giá AK001')
INSERT [dbo].[Comments] ([commentID], [proID], [commentMessage]) VALUES (9, N'AT001', N'đã đánh giá AT001')
INSERT [dbo].[Comments] ([commentID], [proID], [commentMessage]) VALUES (10, N'AT002', N'đã đánh giá AT002')
INSERT [dbo].[Comments] ([commentID], [proID], [commentMessage]) VALUES (11, N'AT003', N'đã đánh giá AT003')
SET IDENTITY_INSERT [dbo].[Comments] OFF
INSERT [dbo].[Customers] ([cusPhone], [cusFullName], [cusEmail], [cusAddress]) VALUES (N'0123345657', N'nghia', N'nghiabia@gmail.com', N'123sads')
INSERT [dbo].[Customers] ([cusPhone], [cusFullName], [cusEmail], [cusAddress]) VALUES (N'01234567891', N'Vũ Văn A', N'a@gmail.com', N'Nhà A')
INSERT [dbo].[Customers] ([cusPhone], [cusFullName], [cusEmail], [cusAddress]) VALUES (N'01234567892', N'Vũ Văn B', N'b@gmail.com', N'Nhà B')
INSERT [dbo].[Customers] ([cusPhone], [cusFullName], [cusEmail], [cusAddress]) VALUES (N'01234567893', N'Vũ Văn C', N'c@gmail.com', N'Nhà C')
INSERT [dbo].[Customers] ([cusPhone], [cusFullName], [cusEmail], [cusAddress]) VALUES (N'01234567894', N'Vũ Văn D', N'd@gmail.com', N'Nhà D')
INSERT [dbo].[Customers] ([cusPhone], [cusFullName], [cusEmail], [cusAddress]) VALUES (N'01234567895', N'Vũ Văn E', N'e@gmail.com', N'Nhà E')
INSERT [dbo].[Customers] ([cusPhone], [cusFullName], [cusEmail], [cusAddress]) VALUES (N'0384443556', N'huy van', N'huy@gmail.com', N'33 xo viet')
INSERT [dbo].[Customers] ([cusPhone], [cusFullName], [cusEmail], [cusAddress]) VALUES (N'12324456678', N'dieu', N'dieu@gmail.com', N'23 as')
INSERT [dbo].[Customers] ([cusPhone], [cusFullName], [cusEmail], [cusAddress]) VALUES (N'1234343546', N'sđs', N'asds@gmail.com', N'123 ád')
INSERT [dbo].[Customers] ([cusPhone], [cusFullName], [cusEmail], [cusAddress]) VALUES (N'123445678', N'nguyenphuchoi', N'h@gmail.com', N'123 abc')
INSERT [dbo].[Customers] ([cusPhone], [cusFullName], [cusEmail], [cusAddress]) VALUES (N'1234456789', N'nghiabia', N'nghia@gmail.com', N'123 abc')
INSERT [dbo].[Customers] ([cusPhone], [cusFullName], [cusEmail], [cusAddress]) VALUES (N'123456456', N'nguyenhoan', N'hosng@gmail.com', N'ffdgfdgd')
INSERT [dbo].[Customers] ([cusPhone], [cusFullName], [cusEmail], [cusAddress]) VALUES (N'1234567', N'sdfg', N'r@j.n', N'dsf')
INSERT [dbo].[Customers] ([cusPhone], [cusFullName], [cusEmail], [cusAddress]) VALUES (N'123456789', N'admin', N'ad@gmail.com', N'124 abc')
INSERT [dbo].[Customers] ([cusPhone], [cusFullName], [cusEmail], [cusAddress]) VALUES (N'1234568', N'hoang', N'hoang@gmail.com', N'123 abc ')
INSERT [dbo].[Customers] ([cusPhone], [cusFullName], [cusEmail], [cusAddress]) VALUES (N'13468976766', N'toan', N'toang@gmail.com', N'124 abc')
INSERT [dbo].[Customers] ([cusPhone], [cusFullName], [cusEmail], [cusAddress]) VALUES (N'2132545656', N'hoangphuc', N'phuc@gmail.com', N'dfhgfhf')
INSERT [dbo].[Customers] ([cusPhone], [cusFullName], [cusEmail], [cusAddress]) VALUES (N'225', N'fsd', N'dfg@d.c', N'dsf')
INSERT [dbo].[Customers] ([cusPhone], [cusFullName], [cusEmail], [cusAddress]) VALUES (N'234', N'df', N'd@h.c', N's')
INSERT [dbo].[Customers] ([cusPhone], [cusFullName], [cusEmail], [cusAddress]) VALUES (N'2345', N'v', N'w@f.b', N'df')
INSERT [dbo].[Customers] ([cusPhone], [cusFullName], [cusEmail], [cusAddress]) VALUES (N'23456', N'gh', N'g@m.c', N'd')
INSERT [dbo].[Customers] ([cusPhone], [cusFullName], [cusEmail], [cusAddress]) VALUES (N'234567', N'fg', N'f@g.n', N'ưer')
INSERT [dbo].[Customers] ([cusPhone], [cusFullName], [cusEmail], [cusAddress]) VALUES (N'2345678', N'jfjd', N'dss@c.c', N'd')
INSERT [dbo].[Customers] ([cusPhone], [cusFullName], [cusEmail], [cusAddress]) VALUES (N'2433567', N'sgmdg', N'dsf@gmaio.com', N'sgf')
INSERT [dbo].[Customers] ([cusPhone], [cusFullName], [cusEmail], [cusAddress]) VALUES (N'24545678643343', N'hoi abc', N'abc@gmail.com', N'123 ho bieu chanh')
INSERT [dbo].[Customers] ([cusPhone], [cusFullName], [cusEmail], [cusAddress]) VALUES (N'2456788', N'hoang', N'sdda@gmail', N'23ghh')
INSERT [dbo].[Customers] ([cusPhone], [cusFullName], [cusEmail], [cusAddress]) VALUES (N'32552', N'sf', N'f@g.d', N'fsd')
INSERT [dbo].[Customers] ([cusPhone], [cusFullName], [cusEmail], [cusAddress]) VALUES (N'3456', N'dssgh', N'g@hd.c', N'à')
INSERT [dbo].[Customers] ([cusPhone], [cusFullName], [cusEmail], [cusAddress]) VALUES (N'34567', N'v', N'd@g.v', N'34')
INSERT [dbo].[Customers] ([cusPhone], [cusFullName], [cusEmail], [cusAddress]) VALUES (N'345678', N'fsghfjsf', N'd@f.c', N'dgshf')
INSERT [dbo].[Customers] ([cusPhone], [cusFullName], [cusEmail], [cusAddress]) VALUES (N'3456789', N'hôi', N'hds@h.com', N'124 abc')
INSERT [dbo].[Customers] ([cusPhone], [cusFullName], [cusEmail], [cusAddress]) VALUES (N'35682983', N'hfjkls', N'sgjds@h.v', N'sghjdkg')
INSERT [dbo].[Customers] ([cusPhone], [cusFullName], [cusEmail], [cusAddress]) VALUES (N'36423', N'cx', N'zcz@h.c', N'12 ds')
INSERT [dbo].[Customers] ([cusPhone], [cusFullName], [cusEmail], [cusAddress]) VALUES (N'45637458', N'fghjf', N's@c.c', N'hsa')
INSERT [dbo].[Customers] ([cusPhone], [cusFullName], [cusEmail], [cusAddress]) VALUES (N'4567', N'fghj', N'gg@h.c', N'dfgh')
INSERT [dbo].[Customers] ([cusPhone], [cusFullName], [cusEmail], [cusAddress]) VALUES (N'6756758', N'ii8jioj', N'ioi@g.bn', N'536546')
INSERT [dbo].[OrderDetails] ([orderID], [proID], [ordtsQuantity], [ordtsThanhTien]) VALUES (4, N'AK001', 1, N'110000')
INSERT [dbo].[OrderDetails] ([orderID], [proID], [ordtsQuantity], [ordtsThanhTien]) VALUES (6, N'AT002', 1, N'130000')
INSERT [dbo].[OrderDetails] ([orderID], [proID], [ordtsQuantity], [ordtsThanhTien]) VALUES (7, N'AT001', 1, N'80000')
INSERT [dbo].[OrderDetails] ([orderID], [proID], [ordtsQuantity], [ordtsThanhTien]) VALUES (7, N'AT002', 2, N'260000')
INSERT [dbo].[OrderDetails] ([orderID], [proID], [ordtsQuantity], [ordtsThanhTien]) VALUES (9, N'AK001', 1, N'110000')
INSERT [dbo].[OrderDetails] ([orderID], [proID], [ordtsQuantity], [ordtsThanhTien]) VALUES (9, N'AT001', 1, N'80000')
INSERT [dbo].[OrderDetails] ([orderID], [proID], [ordtsQuantity], [ordtsThanhTien]) VALUES (14, N'AK001', 1, N'110000')
INSERT [dbo].[OrderDetails] ([orderID], [proID], [ordtsQuantity], [ordtsThanhTien]) VALUES (14, N'AT001', 1, N'80000')
INSERT [dbo].[OrderDetails] ([orderID], [proID], [ordtsQuantity], [ordtsThanhTien]) VALUES (16, N'CS002', 1, N'218500')
INSERT [dbo].[OrderDetails] ([orderID], [proID], [ordtsQuantity], [ordtsThanhTien]) VALUES (18, N'AT001', 1, N'80000')
INSERT [dbo].[OrderDetails] ([orderID], [proID], [ordtsQuantity], [ordtsThanhTien]) VALUES (19, N'CS002', 1, N'218500')
INSERT [dbo].[OrderDetails] ([orderID], [proID], [ordtsQuantity], [ordtsThanhTien]) VALUES (20, N'AT002', 1, N'130000')
INSERT [dbo].[OrderDetails] ([orderID], [proID], [ordtsQuantity], [ordtsThanhTien]) VALUES (20, N'CS002', 3, N'655500')
INSERT [dbo].[OrderDetails] ([orderID], [proID], [ordtsQuantity], [ordtsThanhTien]) VALUES (22, N'AK001', 1, N'110000')
INSERT [dbo].[OrderDetails] ([orderID], [proID], [ordtsQuantity], [ordtsThanhTien]) VALUES (23, N'AT002', 1, N'130000')
INSERT [dbo].[OrderDetails] ([orderID], [proID], [ordtsQuantity], [ordtsThanhTien]) VALUES (24, N'AT003', 1, N'170000')
INSERT [dbo].[OrderDetails] ([orderID], [proID], [ordtsQuantity], [ordtsThanhTien]) VALUES (25, N'AT002', 1, N'130000')
INSERT [dbo].[OrderDetails] ([orderID], [proID], [ordtsQuantity], [ordtsThanhTien]) VALUES (26, N'AT003', 1, N'170000')
INSERT [dbo].[OrderDetails] ([orderID], [proID], [ordtsQuantity], [ordtsThanhTien]) VALUES (27, N'AK001', 1, N'110000')
INSERT [dbo].[OrderDetails] ([orderID], [proID], [ordtsQuantity], [ordtsThanhTien]) VALUES (28, N'AT003', 2, N'340000')
INSERT [dbo].[OrderDetails] ([orderID], [proID], [ordtsQuantity], [ordtsThanhTien]) VALUES (29, N'AT003', 1, N'170000')
INSERT [dbo].[OrderDetails] ([orderID], [proID], [ordtsQuantity], [ordtsThanhTien]) VALUES (30, N'AT002', 1, N'130000')
INSERT [dbo].[OrderDetails] ([orderID], [proID], [ordtsQuantity], [ordtsThanhTien]) VALUES (31, N'AT003', 1, N'170000')
INSERT [dbo].[OrderDetails] ([orderID], [proID], [ordtsQuantity], [ordtsThanhTien]) VALUES (33, N'AT002', 1, N'130000')
INSERT [dbo].[OrderDetails] ([orderID], [proID], [ordtsQuantity], [ordtsThanhTien]) VALUES (34, N'AT002', 1, N'130000')
INSERT [dbo].[OrderDetails] ([orderID], [proID], [ordtsQuantity], [ordtsThanhTien]) VALUES (35, N'AT002', 1, N'130000')
INSERT [dbo].[OrderDetails] ([orderID], [proID], [ordtsQuantity], [ordtsThanhTien]) VALUES (36, N'AT003', 1, N'170000')
INSERT [dbo].[OrderDetails] ([orderID], [proID], [ordtsQuantity], [ordtsThanhTien]) VALUES (37, N'AT002', 1, N'130000')
INSERT [dbo].[OrderDetails] ([orderID], [proID], [ordtsQuantity], [ordtsThanhTien]) VALUES (38, N'AT003', 1, N'170000')
INSERT [dbo].[OrderDetails] ([orderID], [proID], [ordtsQuantity], [ordtsThanhTien]) VALUES (38, N'CS001', 1, N'288000')
INSERT [dbo].[OrderDetails] ([orderID], [proID], [ordtsQuantity], [ordtsThanhTien]) VALUES (39, N'CS001', 1, N'288000')
INSERT [dbo].[OrderDetails] ([orderID], [proID], [ordtsQuantity], [ordtsThanhTien]) VALUES (40, N'CS001', 1, N'288000')
INSERT [dbo].[OrderDetails] ([orderID], [proID], [ordtsQuantity], [ordtsThanhTien]) VALUES (41, N'AT002', 1, N'130000')
SET IDENTITY_INSERT [dbo].[Orders] ON 

INSERT [dbo].[Orders] ([orderID], [cusPhone], [orderMessage], [orderDateTime], [orderStatus]) VALUES (7, N'24545678643343', N'size xl', N'06/23/2019 2:16:40 PM', N'0')
INSERT [dbo].[Orders] ([orderID], [cusPhone], [orderMessage], [orderDateTime], [orderStatus]) VALUES (8, N'24545678643343', N'size xl', N'06/23/2019 2:23:35 PM', N'0')
INSERT [dbo].[Orders] ([orderID], [cusPhone], [orderMessage], [orderDateTime], [orderStatus]) VALUES (9, N'123456789', N'm', N'06/23/2019 2:24:21 PM', N'0')
INSERT [dbo].[Orders] ([orderID], [cusPhone], [orderMessage], [orderDateTime], [orderStatus]) VALUES (10, N'123456789', N'm', N'06/23/2019 2:25:04 PM', N'0')
INSERT [dbo].[Orders] ([orderID], [cusPhone], [orderMessage], [orderDateTime], [orderStatus]) VALUES (11, N'123456789', N'm', N'06/23/2019 2:55:53 PM', N'0')
INSERT [dbo].[Orders] ([orderID], [cusPhone], [orderMessage], [orderDateTime], [orderStatus]) VALUES (12, N'123456789', N'm', N'06/23/2019 3:32:24 PM', N'0')
INSERT [dbo].[Orders] ([orderID], [cusPhone], [orderMessage], [orderDateTime], [orderStatus]) VALUES (13, N'123456789', N'm', N'06/23/2019 3:33:21 PM', N'0')
INSERT [dbo].[Orders] ([orderID], [cusPhone], [orderMessage], [orderDateTime], [orderStatus]) VALUES (14, N'2456788', N'dfghk', N'06/23/2019 3:35:14 PM', N'0')
INSERT [dbo].[Orders] ([orderID], [cusPhone], [orderMessage], [orderDateTime], [orderStatus]) VALUES (15, N'2456788', N'dfghk', N'06/23/2019 3:36:02 PM', N'0')
INSERT [dbo].[Orders] ([orderID], [cusPhone], [orderMessage], [orderDateTime], [orderStatus]) VALUES (16, N'123456456', N'34547657', N'06/24/2019 8:01:30 PM', N'0')
INSERT [dbo].[Orders] ([orderID], [cusPhone], [orderMessage], [orderDateTime], [orderStatus]) VALUES (17, N'123456456', N'34547657', N'06/24/2019 8:01:31 PM', N'0')
INSERT [dbo].[Orders] ([orderID], [cusPhone], [orderMessage], [orderDateTime], [orderStatus]) VALUES (18, N'2132545656', N'size l', N'06/24/2019 8:09:05 PM', N'0')
INSERT [dbo].[Orders] ([orderID], [cusPhone], [orderMessage], [orderDateTime], [orderStatus]) VALUES (19, N'123445678', N'DGD', N'06/26/2019 8:47:06 AM', N'0')
INSERT [dbo].[Orders] ([orderID], [cusPhone], [orderMessage], [orderDateTime], [orderStatus]) VALUES (20, N'2433567', N'dfgd', N'06/26/2019 8:56:06 AM', N'0')
INSERT [dbo].[Orders] ([orderID], [cusPhone], [orderMessage], [orderDateTime], [orderStatus]) VALUES (21, N'2433567', N'toan', N'06/26/2019 8:59:18 AM', N'0')
INSERT [dbo].[Orders] ([orderID], [cusPhone], [orderMessage], [orderDateTime], [orderStatus]) VALUES (22, N'35682983', N'hhh', N'06/26/2019 9:17:54 AM', N'0')
INSERT [dbo].[Orders] ([orderID], [cusPhone], [orderMessage], [orderDateTime], [orderStatus]) VALUES (23, N'4567', N'sdfghj', N'06/26/2019 9:22:38 AM', N'0')
INSERT [dbo].[Orders] ([orderID], [cusPhone], [orderMessage], [orderDateTime], [orderStatus]) VALUES (24, N'345678', N'sfds', N'06/26/2019 10:14:03 AM', N'0')
INSERT [dbo].[Orders] ([orderID], [cusPhone], [orderMessage], [orderDateTime], [orderStatus]) VALUES (25, N'34567', N'mm', N'06/26/2019 10:23:50 AM', N'0')
INSERT [dbo].[Orders] ([orderID], [cusPhone], [orderMessage], [orderDateTime], [orderStatus]) VALUES (26, N'32552', N'dd', N'06/26/2019 10:48:03 AM', N'0')
INSERT [dbo].[Orders] ([orderID], [cusPhone], [orderMessage], [orderDateTime], [orderStatus]) VALUES (27, N'45637458', N'ds', N'06/26/2019 10:53:41 AM', N'0')
INSERT [dbo].[Orders] ([orderID], [cusPhone], [orderMessage], [orderDateTime], [orderStatus]) VALUES (28, N'2345678', N'ds', N'06/26/2019 11:00:12 AM', N'0')
INSERT [dbo].[Orders] ([orderID], [cusPhone], [orderMessage], [orderDateTime], [orderStatus]) VALUES (29, N'2345678', N'd', N'06/26/2019 11:03:48 AM', N'0')
INSERT [dbo].[Orders] ([orderID], [cusPhone], [orderMessage], [orderDateTime], [orderStatus]) VALUES (30, N'34567', N'sf', N'06/26/2019 11:11:32 AM', N'0')
INSERT [dbo].[Orders] ([orderID], [cusPhone], [orderMessage], [orderDateTime], [orderStatus]) VALUES (31, N'34567', N'g', N'06/26/2019 11:13:13 AM', N'0')
INSERT [dbo].[Orders] ([orderID], [cusPhone], [orderMessage], [orderDateTime], [orderStatus]) VALUES (32, N'34567', N'g', N'06/26/2019 11:19:07 AM', N'0')
INSERT [dbo].[Orders] ([orderID], [cusPhone], [orderMessage], [orderDateTime], [orderStatus]) VALUES (33, N'23456', N'gh', N'06/26/2019 11:20:19 AM', N'0')
INSERT [dbo].[Orders] ([orderID], [cusPhone], [orderMessage], [orderDateTime], [orderStatus]) VALUES (34, N'23456', N'ee', N'06/26/2019 11:44:11 AM', N'0')
INSERT [dbo].[Orders] ([orderID], [cusPhone], [orderMessage], [orderDateTime], [orderStatus]) VALUES (35, N'234567', N'sdfgh', N'06/26/2019 11:49:44 AM', N'0')
INSERT [dbo].[Orders] ([orderID], [cusPhone], [orderMessage], [orderDateTime], [orderStatus]) VALUES (36, N'3456', N'ds', N'06/26/2019 11:53:47 AM', N'0')
INSERT [dbo].[Orders] ([orderID], [cusPhone], [orderMessage], [orderDateTime], [orderStatus]) VALUES (37, N'2345', N'2', N'06/26/2019 12:00:42 PM', N'0')
INSERT [dbo].[Orders] ([orderID], [cusPhone], [orderMessage], [orderDateTime], [orderStatus]) VALUES (38, N'6756758', N'jkbghjg', N'06/26/2019 12:08:00 PM', N'0')
INSERT [dbo].[Orders] ([orderID], [cusPhone], [orderMessage], [orderDateTime], [orderStatus]) VALUES (39, N'1234567', N'asf', N'06/26/2019 12:21:54 PM', N'0')
INSERT [dbo].[Orders] ([orderID], [cusPhone], [orderMessage], [orderDateTime], [orderStatus]) VALUES (40, N'234', N's', N'06/26/2019 12:30:59 PM', N'0')
SET IDENTITY_INSERT [dbo].[Orders] OFF
SET IDENTITY_INSERT [dbo].[Producers] ON 

INSERT [dbo].[Producers] ([pdcID], [pdcName], [pdcPhone], [pdcEmail], [pdcAddress], [pdcPhoto], [pdcInfo]) VALUES (1, N'Adidas', N'0384443449', N'adidas@gmail.com', N'TpHCM', N'/Image/img (2).png', N'Thông tin tự gút gồ')
INSERT [dbo].[Producers] ([pdcID], [pdcName], [pdcPhone], [pdcEmail], [pdcAddress], [pdcPhoto], [pdcInfo]) VALUES (2, N'FILA', N'0384443449', N'fila@gmail.com', N'TpHCM', N'/Image/img (3).png', N'Thông tin tự gút gồ')
INSERT [dbo].[Producers] ([pdcID], [pdcName], [pdcPhone], [pdcEmail], [pdcAddress], [pdcPhoto], [pdcInfo]) VALUES (3, N'Versage', N'0384443449', N'versage@gmail.com', N'TpHCM', N'/Image/img (5).jpg', N'Thông tin tự gút gồ')
INSERT [dbo].[Producers] ([pdcID], [pdcName], [pdcPhone], [pdcEmail], [pdcAddress], [pdcPhoto], [pdcInfo]) VALUES (4, N'Chanel', N'0384443449', N'chanel@gmail.com', N'TpHCM', N'/Image/img (15).jpg', N'Thông tin tự gút gồ')
INSERT [dbo].[Producers] ([pdcID], [pdcName], [pdcPhone], [pdcEmail], [pdcAddress], [pdcPhoto], [pdcInfo]) VALUES (5, N'D&G', N'0384443449', N'dg@gmail.com', N'TpHCM', N'/Image/img (18).jpg', N'Thông tin tự gút gồ')
INSERT [dbo].[Producers] ([pdcID], [pdcName], [pdcPhone], [pdcEmail], [pdcAddress], [pdcPhoto], [pdcInfo]) VALUES (6, N'LV', N'0384443449', N'lv@gmail.com', N'TpHCM', N'/Image/img (21).jpg', N'Thông tin tự gút gồ')
INSERT [dbo].[Producers] ([pdcID], [pdcName], [pdcPhone], [pdcEmail], [pdcAddress], [pdcPhoto], [pdcInfo]) VALUES (7, N'Nike', N'01212692802', N'nike@gmail.com', N'TpHCM', N'/Image/img (26).jpg', N'Thông tin tự gút gồ')
INSERT [dbo].[Producers] ([pdcID], [pdcName], [pdcPhone], [pdcEmail], [pdcAddress], [pdcPhoto], [pdcInfo]) VALUES (8, N'Lacoste', N'01212692802', N'lacoste@gmail.com', N'TpHCM', N'/Image/img (30).jpg', N'Thông tin tự gút gồ')
SET IDENTITY_INSERT [dbo].[Producers] OFF
INSERT [dbo].[Products] ([proID], [pdcID], [typeID], [proName], [proSize], [proPrice], [proDiscount], [proPhoto], [proUpdateDate], [proDescription]) VALUES (N'AK001', 3, 5, N'Áo khoác nam', N'XL,XXL,L', N'110000', 0, N'/Image/img (3).jpg', N'10/08/2017 6:43:36 AM', N'Không có mô tả')
INSERT [dbo].[Products] ([proID], [pdcID], [typeID], [proName], [proSize], [proPrice], [proDiscount], [proPhoto], [proUpdateDate], [proDescription]) VALUES (N'AT001', 4, 2, N'Áo thun nữ sành điệu', N'S,M,L...', N'80000', 0, N'/Image/img (8).jpg', N'10/09/2017 6:43:36 AM', N'Không có mô tả')
INSERT [dbo].[Products] ([proID], [pdcID], [typeID], [proName], [proSize], [proPrice], [proDiscount], [proPhoto], [proUpdateDate], [proDescription]) VALUES (N'AT002', 3, 2, N'Áo body nam', N'L,XL,XXL', N'130000', 0, N'/Image/img (12).jpg', N'10/10/2017 6:43:36 AM', N'Không có mô tả')
INSERT [dbo].[Products] ([proID], [pdcID], [typeID], [proName], [proSize], [proPrice], [proDiscount], [proPhoto], [proUpdateDate], [proDescription]) VALUES (N'AT003', 8, 2, N'Áo nữ 100% cotton', N'S,M,L...', N'170000', 0, N'/Image/img (13).jpg', N'10/11/2017 6:43:36 AM', N'Không có mô tả')
INSERT [dbo].[Products] ([proID], [pdcID], [typeID], [proName], [proSize], [proPrice], [proDiscount], [proPhoto], [proUpdateDate], [proDescription]) VALUES (N'CS001', 5, 7, N'Đầm công sở nữ', N'S,M,...', N'320000', 10, N'/Image/img (2).jpg', N'10/05/2017 6:43:36 AM', N'Không có mô tả')
INSERT [dbo].[Products] ([proID], [pdcID], [typeID], [proName], [proSize], [proPrice], [proDiscount], [proPhoto], [proUpdateDate], [proDescription]) VALUES (N'CS002', 6, 7, N'Đồ công sở quần dài', N'M,S,L', N'230000', 5, N'/Image/img (4).jpg', N'10/06/2017 6:43:36 AM', N'Không có mô tả')
INSERT [dbo].[Products] ([proID], [pdcID], [typeID], [proName], [proSize], [proPrice], [proDiscount], [proPhoto], [proUpdateDate], [proDescription]) VALUES (N'CS003', 3, 7, N'Kiểu dáng học sinh', N'M,S,...', N'200000', 0, N'/Image/img (19).jpg', N'10/07/2017 6:43:36 AM', N'Không có mô tả')
INSERT [dbo].[Products] ([proID], [pdcID], [typeID], [proName], [proSize], [proPrice], [proDiscount], [proPhoto], [proUpdateDate], [proDescription]) VALUES (N'MU001', 1, 14, N'Mũ phớt nam', N'M,S,L,...', N'60000', 0, N'/Image/img (1).jpg', N'10/01/2017 6:43:36 AM', N'Không có mô tả')
INSERT [dbo].[Products] ([proID], [pdcID], [typeID], [proName], [proSize], [proPrice], [proDiscount], [proPhoto], [proUpdateDate], [proDescription]) VALUES (N'MU002', 2, 14, N'Mũ thời trang kiểu xã hội đen', N'M,S,...', N'82000', 0, N'/Image/img (20).jpg', N'10/02/2017 6:43:36 AM', N'Không có mô tả')
INSERT [dbo].[Products] ([proID], [pdcID], [typeID], [proName], [proSize], [proPrice], [proDiscount], [proPhoto], [proUpdateDate], [proDescription]) VALUES (N'MU003', 3, 14, N'Mũ thời trang FILA (đen)', N'XL,L,...', N'45000', 0, N'/Image/img (27).jpg', N'10/03/2017 6:43:36 AM', N'Không có mô tả')
INSERT [dbo].[Products] ([proID], [pdcID], [typeID], [proName], [proSize], [proPrice], [proDiscount], [proPhoto], [proUpdateDate], [proDescription]) VALUES (N'MU004', 4, 15, N'Mũ bảo hiểm honda', N'S,M,...', N'120000', 5, N'/Image/img (29).jpg', N'10/04/2017 6:43:36 AM', N'Không có mô tả')
INSERT [dbo].[Products] ([proID], [pdcID], [typeID], [proName], [proSize], [proPrice], [proDiscount], [proPhoto], [proUpdateDate], [proDescription]) VALUES (N'NK', 7, 16, N'giay chat luong cao ', N'xl', N'100000', 1, N'/Image/images.jpg', N'06/22/2019 1:42:28 PM', N'cực kỳ đẹp ')
SET IDENTITY_INSERT [dbo].[ProductTypes] ON 

INSERT [dbo].[ProductTypes] ([typeID], [cateID], [typeName]) VALUES (1, 1, N'Quần thun')
INSERT [dbo].[ProductTypes] ([typeID], [cateID], [typeName]) VALUES (2, 1, N'Áo thun')
INSERT [dbo].[ProductTypes] ([typeID], [cateID], [typeName]) VALUES (3, 1, N'Quần kaki')
INSERT [dbo].[ProductTypes] ([typeID], [cateID], [typeName]) VALUES (4, 1, N'Áo sơ mi')
INSERT [dbo].[ProductTypes] ([typeID], [cateID], [typeName]) VALUES (5, 1, N'Áo khoác')
INSERT [dbo].[ProductTypes] ([typeID], [cateID], [typeName]) VALUES (6, 1, N'Đồ bộ')
INSERT [dbo].[ProductTypes] ([typeID], [cateID], [typeName]) VALUES (7, 1, N'Đồ công sở')
INSERT [dbo].[ProductTypes] ([typeID], [cateID], [typeName]) VALUES (8, 1, N'Đồ ngủ')
INSERT [dbo].[ProductTypes] ([typeID], [cateID], [typeName]) VALUES (9, 1, N'Đồ lót')
INSERT [dbo].[ProductTypes] ([typeID], [cateID], [typeName]) VALUES (10, 2, N'Giày thể thao')
INSERT [dbo].[ProductTypes] ([typeID], [cateID], [typeName]) VALUES (11, 2, N'Giày thời trang')
INSERT [dbo].[ProductTypes] ([typeID], [cateID], [typeName]) VALUES (12, 2, N'Dép lê')
INSERT [dbo].[ProductTypes] ([typeID], [cateID], [typeName]) VALUES (13, 2, N'Dép có quai')
INSERT [dbo].[ProductTypes] ([typeID], [cateID], [typeName]) VALUES (14, 3, N'Mũ thời trang')
INSERT [dbo].[ProductTypes] ([typeID], [cateID], [typeName]) VALUES (15, 3, N'Mũ bảo hiểm')
INSERT [dbo].[ProductTypes] ([typeID], [cateID], [typeName]) VALUES (16, 4, N'nike')
SET IDENTITY_INSERT [dbo].[ProductTypes] OFF
INSERT [dbo].[Rates] ([proID], [rateStar]) VALUES (N'AK001', 5)
INSERT [dbo].[Rates] ([proID], [rateStar]) VALUES (N'AT001', 5)
INSERT [dbo].[Rates] ([proID], [rateStar]) VALUES (N'AT002', 5)
INSERT [dbo].[Rates] ([proID], [rateStar]) VALUES (N'AT003', 5)
INSERT [dbo].[Rates] ([proID], [rateStar]) VALUES (N'CS001', 5)
INSERT [dbo].[Rates] ([proID], [rateStar]) VALUES (N'CS002', 5)
INSERT [dbo].[Rates] ([proID], [rateStar]) VALUES (N'CS003', 5)
INSERT [dbo].[Rates] ([proID], [rateStar]) VALUES (N'MU001', 5)
INSERT [dbo].[Rates] ([proID], [rateStar]) VALUES (N'MU002', 5)
INSERT [dbo].[Rates] ([proID], [rateStar]) VALUES (N'MU003', 5)
INSERT [dbo].[Rates] ([proID], [rateStar]) VALUES (N'MU004', 5)
ALTER TABLE [dbo].[Comments]  WITH CHECK ADD FOREIGN KEY([proID])
REFERENCES [dbo].[Products] ([proID])
GO
ALTER TABLE [dbo].[OrderDetails]  WITH CHECK ADD  CONSTRAINT [FK__OrderDeta__proID__1ED998B2] FOREIGN KEY([proID])
REFERENCES [dbo].[Products] ([proID])
GO
ALTER TABLE [dbo].[OrderDetails] CHECK CONSTRAINT [FK__OrderDeta__proID__1ED998B2]
GO
ALTER TABLE [dbo].[Orders]  WITH CHECK ADD  CONSTRAINT [FK__Orders__cusPhone__1B0907CE] FOREIGN KEY([cusPhone])
REFERENCES [dbo].[Customers] ([cusPhone])
GO
ALTER TABLE [dbo].[Orders] CHECK CONSTRAINT [FK__Orders__cusPhone__1B0907CE]
GO
ALTER TABLE [dbo].[Products]  WITH CHECK ADD FOREIGN KEY([pdcID])
REFERENCES [dbo].[Producers] ([pdcID])
GO
ALTER TABLE [dbo].[Products]  WITH CHECK ADD FOREIGN KEY([typeID])
REFERENCES [dbo].[ProductTypes] ([typeID])
GO
ALTER TABLE [dbo].[ProductTypes]  WITH CHECK ADD FOREIGN KEY([cateID])
REFERENCES [dbo].[Categories] ([cateID])
GO
ALTER TABLE [dbo].[Rates]  WITH CHECK ADD FOREIGN KEY([proID])
REFERENCES [dbo].[Products] ([proID])
GO
