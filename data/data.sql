CREATE DATABASE [Java_WebBanDoDien]
GO

USE [Java_WebBanDoDien]
GO
/****** Object:  Table [dbo].[Categories]    Script Date: 1/4/2020 6:57:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Categories](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NULL,
 CONSTRAINT [PK_Categories] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[OrderItems]    Script Date: 1/4/2020 6:57:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrderItems](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[OrderId] [int] NULL,
	[ProductId] [int] NULL,
	[Price] [decimal](18, 0) NULL,
	[Quantity] [int] NULL,
	[TotalPrice] [decimal](18, 0) NULL,
 CONSTRAINT [PK_OrderItems] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Orders]    Script Date: 1/4/2020 6:57:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Orders](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[OrderDate] [datetime] NULL,
	[ShipmentPrice] [decimal](18, 0) NULL,
	[ReceiveDate] [datetime] NULL,
	[CustomerName] [nvarchar](250) NULL,
	[CustomerPhone] [varchar](20) NULL,
	[CustomerAddress] [nvarchar](250) NULL,
	[CustomerEmail] [nvarchar](50) NULL,
 CONSTRAINT [PK_Orders] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Products]    Script Date: 1/4/2020 6:57:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Products](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](150) NULL,
	[Price] [decimal](18, 0) NULL,
	[PromotionPrice] [decimal](18, 0) NULL,
	[Image] [nvarchar](250) NULL,
	[Detail] [nvarchar](max) NULL,
	[Quantity] [int] NULL,
	[CategoryId] [int] NULL,
	[PromotionPercent] [int] NULL,
	[isProductNew] [bit] NULL,
 CONSTRAINT [PK_Products] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Users]    Script Date: 1/4/2020 6:57:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Users](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserName] [nvarchar](50) NULL,
	[Password] [nvarchar](50) NULL,
	[CreatedAt] [datetime] NULL,
	[Role] [int] NULL,
	[Address] [nvarchar](250) NULL,
	[Phone] [nvarchar](50) NULL,
	[Email] [nvarchar](50) NULL,
 CONSTRAINT [PK_Users] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET IDENTITY_INSERT [dbo].[Categories] ON 

INSERT [dbo].[Categories] ([Id], [Name]) VALUES (1, N'Nồi cơm điện')
INSERT [dbo].[Categories] ([Id], [Name]) VALUES (2, N'Nồi chiên')
INSERT [dbo].[Categories] ([Id], [Name]) VALUES (3, N'Lò vi sóng')
INSERT [dbo].[Categories] ([Id], [Name]) VALUES (4, N'Lò nướng điện')
INSERT [dbo].[Categories] ([Id], [Name]) VALUES (5, N'Vỉ nướng điện')
INSERT [dbo].[Categories] ([Id], [Name]) VALUES (6, N'Bình đun siêu tốc')
INSERT [dbo].[Categories] ([Id], [Name]) VALUES (7, N'Nồi áp suất')
INSERT [dbo].[Categories] ([Id], [Name]) VALUES (8, N'Quạt điện')
INSERT [dbo].[Categories] ([Id], [Name]) VALUES (9, N'Máy hút bụi')
INSERT [dbo].[Categories] ([Id], [Name]) VALUES (10, N'Máy sấy')
SET IDENTITY_INSERT [dbo].[Categories] OFF
SET IDENTITY_INSERT [dbo].[OrderItems] ON 

INSERT [dbo].[OrderItems] ([Id], [OrderId], [ProductId], [Price], [Quantity], [TotalPrice]) VALUES (12, 12, 32, CAST(140 AS Decimal(18, 0)), 1, CAST(140 AS Decimal(18, 0)))
INSERT [dbo].[OrderItems] ([Id], [OrderId], [ProductId], [Price], [Quantity], [TotalPrice]) VALUES (13, 12, 39, CAST(80 AS Decimal(18, 0)), 1, CAST(80 AS Decimal(18, 0)))
INSERT [dbo].[OrderItems] ([Id], [OrderId], [ProductId], [Price], [Quantity], [TotalPrice]) VALUES (14, 13, 27, CAST(25 AS Decimal(18, 0)), 1, CAST(25 AS Decimal(18, 0)))
SET IDENTITY_INSERT [dbo].[OrderItems] OFF
SET IDENTITY_INSERT [dbo].[Orders] ON 

INSERT [dbo].[Orders] ([Id], [OrderDate], [ShipmentPrice], [ReceiveDate], [CustomerName], [CustomerPhone], [CustomerAddress], [CustomerEmail]) VALUES (12, CAST(N'2020-01-04 18:50:35.420' AS DateTime), NULL, NULL, N'tuyen tuyen', N'0987654', N'222121', N'tuyen.hoangvan@powergatesoftware.net')
INSERT [dbo].[Orders] ([Id], [OrderDate], [ShipmentPrice], [ReceiveDate], [CustomerName], [CustomerPhone], [CustomerAddress], [CustomerEmail]) VALUES (13, CAST(N'2020-01-04 18:54:15.603' AS DateTime), NULL, NULL, N'lan anh 98', N'0987654', N'222121', N'tuyen.hoangvan@powergatesoftware.net')
SET IDENTITY_INSERT [dbo].[Orders] OFF
SET IDENTITY_INSERT [dbo].[Products] ON 

INSERT [dbo].[Products] ([Id], [Name], [Price], [PromotionPrice], [Image], [Detail], [Quantity], [CategoryId], [PromotionPercent], [isProductNew]) VALUES (22, N'Nồi Cơm Điện Tử Tiger JKT-S18W - 1.8L', CAST(707 AS Decimal(18, 0)), CAST(490 AS Decimal(18, 0)), N'https://salt.tikicdn.com/cache/200x200/media/catalog/product/4/9/4904710412541.u2769.d20161102.t162627.580511_1.jpg', N'Nồi cơm điện tử cao tầnTiger JKT-S18W được thiết kế dung tích 1.8 lít, tương đương 1.5 kg gạo, thích hợp cho gia đình 4 - 6 thành viên. Sản phẩm có tay xách rộng được làm từ chất liệu nhựa chắc chắn, bền bỉ, an toàn khi di chuyển từ nơi này sang nới khác. Nồi cơm điện tử cao tần Tiger JKT-S18W chính hãng giúp tô điểm không gian bếp nhờ chất liệu cao cấp, toát lên sự sang trọng, đẳng cấp. Cụ thể phần thân nồi được làm từ chất liệu inox có độ sáng bóng đẹp, màu nâu viền đen vô cùng hài hòa. Lòng nồi 5 lớp kim loại tráng 3 lớp men chống dính cao cấp, có tác dụng chống dính hiệu quả, giúp cơm nấu ngon hơn và dễ dàng vệ sinh sau khi sử dụng. Nồi trang bị tính năng Tacook là sự kết hợp hoàn hảo 2 trong 1 khi người nội trợ vừa có thể nấu cơm, vừa có thể hâm nóng lại thức ăn hoặc hấp bánh bao, hấp cách thủy, nấu xôi,… cùng một lúc giúp tiết kiệm thời gian và công sức hơn. Nồi tích hợp 5 chế độ nấu tự động: thường, gạo cứng, ít, hầm, hâm nóng, giúp người dùng có thể lựa chọn tùy vào nhu cầu nấu. Ngoài ra, bạn có thể sử dụng nồi để nấu soup, nấu cháo hay làm bánh bông lan (nhờ lớp chống dính không bám dính bột) cho gia đình. Với công nghệ Fuzzy Logic, chị em nội trợ không còn phải lo cơm mình nấu bị nhão hay không chín đều. Công nghệ Fuzzy Logic sẽ tự động điều chỉnh nhiệt độ và thời gian nấu hợp lý, để chất lượng cơm luôn được đảm bảo. Đặc biệt, nồi cơm điện tử cao tần JKT-S18W trang bị đĩa nhiệt trên nắp giúp giữ cơm ấm lâu và không cho hơi nước rơi trở lại trong nồi giúp cơm mềm, ngon hơn so với các loại nồi điện tử thông thường. Nắp thiết kế có thể tháo rời, nên chị em nội trợ có thể dễ dàng vệ sinh. Hoạt động với công suất mạnh lên đến 1198W và công nghệ từ tính hiện đại (IH), nồi cơm Tiger JKT-S18W giúp cơm chín đều, đảm bảo giữ nguyên dưỡng chất và vitamin có trong gạo. Ngoài ra, nhờ lớp men Ceramic chống dính, nhiệt làm nóng nồi nhanh nên cơm sẽ được nấu nhanh hơn, giúp chị em tiết kiệm chi phí điện năng và thời gian.', 100, 1, 30, 1)
INSERT [dbo].[Products] ([Id], [Name], [Price], [PromotionPrice], [Image], [Detail], [Quantity], [CategoryId], [PromotionPercent], [isProductNew]) VALUES (23, N'Nồi Cơm Điện Cuckoo CR-0671V (1L)', CAST(55 AS Decimal(18, 0)), CAST(37 AS Decimal(18, 0)), N'https://salt.tikicdn.com/cache/200x200/media/catalog/product/n/o/noi-com-dien-cuckoo-cr-0671v--1-0-lit.u4064.d20170410.t155956.56561.jpg', N'Nồi Cơm Điện Cuckoo CR-0671V có kiểu dáng nắp gài hiện đại, sang trọng kết hợp với gam màu trắng tím nổi bật và phần vỏ được làm bằng chất liệu nhựa tổng hợp cao cấp, bền bỉ cũng như dễ dàng lau chùi khi bám bẩn. Nồi cơm điện dung tích 1L, thích hợp dành cho gia đình ít người, có 2 - 4 thành viên. Đặc biệt, lòng nồi được làm bằng hợp kim nhôm tráng lớp chống dính cao cấp siêu bền, dễ chùi rửa và đảm bảo an toàn cho sức khỏe người dùng. Sản phẩm sử dụng cơ chế gia nhiệt 4 chiều với lớp bông thủy tinh giữ nhiệt có tác dụng làm nhiệt lượng tỏa đều và giữ lâu hơn để cơm luôn thơm ngon, nóng hổi. Sản phẩm có thiết kế tay cầm phía trên bằng nhựa tổng hợp không gây nóng và được gài chặt với phần thân nồi có thể nhấc lên hay di chuyển dễ dàng và an toàn. Nồi cơm điện được hoạt động mạnh mẽ với công suất 500W, giúp bạn nấu cơm nhanh chín, hạt cơm nở đều tơi xốp thơm ngon. Khi cơm chín, nồi tự động chuyển sang chế độ hâm tự động, vừa tiện lợi vừa giúp tiết kiệm điện đáng kể.', 100, 1, 32, 0)
INSERT [dbo].[Products] ([Id], [Name], [Price], [PromotionPrice], [Image], [Detail], [Quantity], [CategoryId], [PromotionPercent], [isProductNew]) VALUES (24, N'Nồi Cơm Tách Đường Magic Korea A-510 (1.5L)', CAST(325 AS Decimal(18, 0)), CAST(169 AS Decimal(18, 0)), N'https://salt.tikicdn.com/cache/200x200/ts/product/04/c3/8a/827a06776d00412e9e28b4d4c259e431.jpg', N'Nồi cơm tách đường Magic Korea - A510 có màu sắc trang nhã kết hợp với hoa văn tinh tế tạo nét đẹp hài hòa và sang trọng cho không gian nhà bếp. Lòng nồi bằng thép không gỉ chống dính an toàn, bền bỉ, dễ vệ sinh. Bạn sẽ không lo nấu cơm bị cháy khét hay dính vào thành và đáy nồi làm cho bạn làm sạch khó khăn, mất thời gian. Nồi cơm tách đường Magic Korea - A510 là sản phẩm có khả năng loại bỏ lượng đường thừa trong cơm khi nấu. Ở một nhiệt độ nhất định - được gọi là nhiệt độ "dẻo", nơi quá trình "dẻo hóa" của gạo bắt đầu xuất hiện - các phân tử tinh bột nhanh bắt đầu bị đẩy ra khỏi gạo và hòa vào trong nước, trong khi tinh bột chậm và các chất dinh dưỡng khác vẫn ở lại.
Tuy nhiên với các nồi nấu cơm truyền thống, lượng nước này lại được gạo hấp thụ hoặc bay hơi, vậy nên lượng tinh bột nhanh lại quay ngược trở lại nồi cơm của bạn. Vậy nên, cơ chế hoạt động của chiếc nồi đặc biệt này là đưa nhiệt độ lên và duy trì ở một mức nhất định, sau đó đẩy toàn bộ lượng nước dư thừa ra ngoài. Mục đích của toàn bộ quá trình là để cơm thành phẩm có tỉ lệ amylose so với amylopectin càng cao càng tốt. Nồi cơm tách đường Magic Korea - A510 giúp loại bỏ các tinh bột xấu trong gạo, loại bỏ đường trong quá trình nấu cơm. Sản phẩm giúp hạ đường huyết với người bị tiểu đường. Ngoài ra, nồi cơm tách đường còn giúp phòng ngữa các bệnh về: tiểu đường, tai biến, tim mạch do các tinh bột xấu trong gạo gây nên. - Model: A510
- Điện áp: 220V - 50 Hz
- Dung tích: 1,5L
- Công suất: 900W
Magic Korea là thương hiệu đến từ Hàn Quốc nhưng đã rất quen thuộc với người tiêu dùng Việt Nam. Sản phẩm của Magic phục vụ hầu hết các nhu cầu thiết yếu của cuộc sống từ thiết bị nhà bếp, thiết bị trong sinh hoạt gia đình đến đồ vui chơi trẻ em. Được sản xuất trên nền kỹ thuật công nghệ Hàn Quốc và quy trình quản lý hiện đại, các sản phẩm của Magic luôn có chất lượng vượt trội, tính thẩm mỹ cao, được người tiêu dùng yêu thích bởi tính năng nổi bật và thông minh. Với phương châm “Chung tay bảo vệ môi trường”, Magic cam kết luôn luôn sản xuất, cung ứng các sản phẩm chất lượng cao, chế độ bảo hành dài hạn nhằm đảm bảo lợi ích cao nhất cho khách hàng. ', 100, 1, 47, 0)
INSERT [dbo].[Products] ([Id], [Name], [Price], [PromotionPrice], [Image], [Detail], [Quantity], [CategoryId], [PromotionPercent], [isProductNew]) VALUES (25, N'Nồi Cơm Điện Nắp Rời Cơ Happy Cook HCD-061A (0.6L)', CAST(31 AS Decimal(18, 0)), CAST(20 AS Decimal(18, 0)), N'https://salt.tikicdn.com/cache/200x200/ts/product/cf/88/33/43e4fb6e09ba387ad00e0c7dde527739.jpg', N'Nồi Cơm Điện Nắp Rời Cơ Happy Cook HCD-061A với thiết kế nắp rời có màu sắc trang nhã cùng kiểu dáng gọn nhẹ, dễ dàng di chuyển, với dung tích 0.6L phù hợp cho gia đình có ít thành viên, thuận tiện cho bạn nấu những bữa ăn hàng ngày và góp phần tô điểm thêm phần sang trọng cho không gian nhà bếp của bạn.
		  Nồi cơm điện Happy Cook được hoạt động với công suất 300W, nồi cơm sẽ mang lại những hạt cơm thơm ngon, mềm dẻo chỉ sau 20 - 25 phút. Với tính năng này, bạn sẽ không phải mất nhiều công sức và thời gian để chuẩn bị bữa ăn cho cả gia đình.
		  Đặc biệt, lòng nồi được đúc từ chất liệu hợp kim nhôm dày 0.9mm giúp hấp thu nhiệt nhanh, tỏa nhiệt đều. Nồi còn được phủ thêm một lớp tráng men giúp chống dính hiệu quả, dễ dàng vệ sinh.
		  Bên cạnh đó, nồi cơm điện Happy Cook HCD-061A có khả năng tự động chuyển sang chế độ hâm cơm sau khi nấu chín giúp cơm của bạn luôn trong trạng thái thơm ngon và mềm dẻo. Với cấu tạo dây điện liền dễ dàng cất giữ.', 100, 1, 34, 0)
INSERT [dbo].[Products] ([Id], [Name], [Price], [PromotionPrice], [Image], [Detail], [Quantity], [CategoryId], [PromotionPercent], [isProductNew]) VALUES (26, N'Nồi Cơm Điện Tử Toshiba RC-18NMFVN(WT) (1.8L)', CAST(1345 AS Decimal(18, 0)), CAST(1050 AS Decimal(18, 0)), N'https://salt.tikicdn.com/cache/200x200/ts/product/75/03/fe/859087d66c2f949c15d32dae43fddecf.jpg', N'Nồi Cơm Điện Tử Toshiba RC-18NMFVN(WT) với thiết kế nắp liền, kiểu dáng hiện đại cùng tông màu tươi tắn sẽ khiến cho không gian nhà bếp của bạn thêm phần sang trọng và tiện nghi.
		  Nồi được thiết kế quai xách chắc chắn giúp bạn dễ dàng khuân chuyển mà không lo bị bỏng. Bên cạnh đó, với dung tích lên đến 1.8 lít, nồi thích hợp cho những gia đình từ 4 - 6 thành viên.
		  Nồi cơm điện tử Toshiba RC-18NMFVN(WT) có lòng nồi sử dụng chất liệu hợp kim cao cấp, tráng lớp Diamond Titanium, giúp cho cơm không bị bám dính hay cháy khét, từ đó công việc chùi rửa sau khi sử dụng cũng thuận tiện và ít tốn sức lực hơn.
		Chất liệu này còn gia tăng độ bền cho nồi, ngăn chặn trầy xước, rạn nứt khi bị va đập hay bị oxi hóa, mài mòn, từ đó đảm bảo cơm nấu được chín đều, thơm ngon và an toàn cho sức khỏe.
		Mặt trước của lòng nồi có thang đo chia vạch giúp bạn tùy chỉnh mực nước cho phù hợp để cơm chín ngon, không bị khô, nhão.
		Nồi có công suất lớn 800W cùng thiết kế 3 mâm nhiệt ở đáy, xung quanh thân và trên nắp tạo sự tuần hoàn nhiệt bao phủ khắp nồi, giúp cơm chín đều từ trong ra ngoài, tơi xốp, dẻo mềm, không bị khô hay nhão.
Mặt trước của nồi cơm điện tử Toshiba RC-18NMFVN(WT) trang bị bảng điều khiển điện tử với chỉ số hiển thị to rõ, nút bấm êm và chú thích chức năng rõ ràng, dễ hiểu giúp người dùng thao tác được dễ dàng.

Nồi còn có tính năng hẹn giờ: Giữ ấm đến 30 giờ, hẹn giờ nấu đến 24 giờ giúp người dùng linh hoạt lựa chọn thời gian nấu, đảm bảo cơm luôn ấm và thơm ngon.
Ngoài nấu cơm thông thường, bạn còn có thể sử dụng nồi cơm điện tử Toshiba RC-18NMFVN(WT) để hấp bánh bao, luộc trứng, nấu cháo, nấp súp, nấu canh,... nhằm đa dạng món ăn và bổ sung đầy đủ chất dinh dưỡng cho các bửa cơm hằng ngày của gia đình.
', 100, 1, 21, 0)
INSERT [dbo].[Products] ([Id], [Name], [Price], [PromotionPrice], [Image], [Detail], [Quantity], [CategoryId], [PromotionPercent], [isProductNew]) VALUES (27, N'Nồi Cơm Nắp Gài Toshiba RC-10JFM(H)VN (1L)', CAST(40 AS Decimal(18, 0)), CAST(25 AS Decimal(18, 0)), N'https://salt.tikicdn.com/cache/200x200/ts/product/5c/21/16/9109f019cac4bf251806c731543bf4e1.jpg', N'Nồi Cơm Nắp Gài Toshiba RC-10JFM(H)VN sở hữu kiểu dáng đẹp mắt, màu sắc nổi bật, phù hợp với mọi không gian nội thất nhà bếp. Thiết kế chốt gài trên nắp nồi tiện lợi, giúp bạn thuận tiện xách di chuyển đến nhiều vị trí khác nhau.
		  Nồi cơm điện Toshiba sở hữu dung tích 1L, thích hợp sử dụng cho gia đình đông người có từ 2-3 thành viên. Đảm bảo cung cấp cho cả gia đình bạn một bữa cơm thơm ngon, no căng bụng.
		  Lòng nồi được làm từ chất liệu hợp kim cao cấp, có phủ lớp chống dính, giúp cơm được nấu thơm ngon hơn và dễ dàng cho bạn khi chùi rửa. Chất liệu nồi bền, có khả năng chịu nhiệt, chịu lực cao, khó móp méo khi bị va chạm. Lớp men chống dính dày, khó bong và hoàn toàn an toàn cho người sử dụng.
			Nồi sử dụng công nghệ 3 mâm nhiệt, hơi nóng tỏa từ đáy, nắp và thân nồi giúp hạt cơm chín đều và đặc biệt là không lo cơm bị nhão cho bữa cơm gia đình thật thơm ngon.
			Đặc biệt, nồi cơm Toshiba còn được thiết kế với lớp vỏ ngoài đặc biệt cao cấp, giúp nhiệt độ luân chuyển xung quanh bên trong lòng nồi và làm tăng khả năng giữ ấm lên đến 12 giờ, giúp cơm luôn nóng mà không cần phải hâm lại nhiều lần.', 100, 1, 36, 1)
INSERT [dbo].[Products] ([Id], [Name], [Price], [PromotionPrice], [Image], [Detail], [Quantity], [CategoryId], [PromotionPercent], [isProductNew]) VALUES (28, N'Nồi Cơm Điện Tử Toshiba RC-10NMFVN (WT) (1 Lít)', CAST(110 AS Decimal(18, 0)), CAST(94 AS Decimal(18, 0)), N'https://salt.tikicdn.com/cache/200x200/ts/product/cc/64/10/72680f464327dd38716819e37833f2dc.jpg', N'Nồi Cơm Điện Tử Toshiba RC-10NMFVN (WT) với thiết kế nắp liền, kiểu dáng hiện đại cùng tông màu tươi tắn sẽ khiến cho không gian nhà bếp của bạn thêm phần sang trọng và tiện nghi.
Nồi Cơm Điện Tử Toshiba RC-10NMF(WT) VN được thiết kế với nhiều chế độ cho phép bạn chế biến nhiều món ăn khác nhau: Nấu cơm truyền thống, nấu cơm gạo lức, nấu cháo, làm bánh, cơm trộn,... Tất cả tích hợp trong 1 sản phẩm mang đến cho gia đình bạn sự tiện nghi và tiện dụng. Sản phẩm này rất thiết thực cho gia đình bận bịu, có trẻ sơ sinh hoặc gia đình lớn nhiều việc nội trợ.
Với công nghệ nấu 3D kết hợp với thiết kế mâm nhiệt lớn giúp nhiệt truyền đều từ dưới, trên và quanh thân nồi, không những làm hạt cơm chín đều mà còn làm cơm trở nên mềm dẻo hơn.
Bảng hiển thị bằng màn hình LCD to, rộng với các phím bấm nhẹ nhàng, dễ dàng thao tác, vận hành, giúp bạn dễ dàng quan sát quá trình nấu. Đặc biệt nồi còn hỗ trợ phím bấm ký tự giúp cho người khiếm thị có thể chọn chế độ nấu phù hợp.
Nồi có chức năng giữ nóng, tự động điều chỉnh nhiệt, có đèn báo chế độ nấu và hâm nóng giúp cơm luôn được thơm ngon, nóng hổi. lòng nồi tráng lớp men chống dính không ảnh hưởng đến thực phẩm. Ngoài ra, nồi còn có chức năng hẹn giờ nấu, và có âm báo sau khi kết thúc chương trình. Dây diện có thể tháo rời.
', 100, 1, 14, 0)
INSERT [dbo].[Products] ([Id], [Name], [Price], [PromotionPrice], [Image], [Detail], [Quantity], [CategoryId], [PromotionPercent], [isProductNew]) VALUES (29, N'Nồi Cơm Điện Tử Lòng Nồi Niêu Bluestone RCB-5939 (1.5L)', CAST(110 AS Decimal(18, 0)), CAST(55 AS Decimal(18, 0)), N'https://salt.tikicdn.com/cache/200x200/ts/product/b9/77/8c/a68eea5d4577445c771ef1faa8cd8014.jpg', N'Nồi Cơm Điện Tử Bluestone RCB-5939 với kiểu dáng gọn nhẹ, cùng màu sắc đơn giản không chỉ cho bạn những bữa cơm ngon mà còn tôn thêm vẻ sang trọng và hiện đại cho không gian bếp nhà bạn. Đặc biệt, phần vỏ nồi được làm bằng chất liệu nhựa có độ bền cao với khả năng chịu va đập và chịu nhiệt tốt.
		  Sản phẩm cấu tạo lòng nồi dày 1.5mm được phủ chất chống dính siêu bền và an toàn, giúp cơm chính nhanh, thơm ngon và giữ nóng lâu hơn, đồng thời đảm bảo độ dẻo cũng như hạt cơm sẽ không dính hoặc cháy, giúp bạn dễ dàng chùi rửa và vệ sinh. Thiết kế lòng nồi Niêu độc đáo, vàng, tạo dòng sôi tuần hoàn, giúp cơm chín đều và dẻo ngon hơn với công suất hoạt động lên đến 860W.
		Nồi cơm được tích hợp bảng điều khiển nút nhấn điện tử bằng tiếng Việt hiện đại với màn hình LED hiển thị rõ ràng, giúp bạn thao tác, theo dõi thời gian, các chức năng cũng như quá trình nấu được nhanh chóng. Kết hợp với 9 chế độ nấu được cài đặt sẵn (hấp/luộc, cháo, súp, ngũ cốc, bánh, nấu nhanh, nấu thường và hâm nóng).
		Tiện lợi hơn, nắp trong của nồi có thể tháo rời kết hợp với thiết kế tổ ong giúp hạn chế nước đọng trên bề mặt làm cơm nhão, dễ thiu. Và thiết kế van thoát hơi khép kín điều khiển quá trình thoát hơi nước và giúp giữ lại dưỡng chất trong hạt gạo. Trang bị dây điện tháo rời dễ dàng di chuyển và lưu trữ.
		', 100, 1, 49, 0)
INSERT [dbo].[Products] ([Id], [Name], [Price], [PromotionPrice], [Image], [Detail], [Quantity], [CategoryId], [PromotionPercent], [isProductNew]) VALUES (30, N'Nồi Cơm Điện Nắp Gài Sharp KS-19TJV''ST'' (1.8L)', CAST(35 AS Decimal(18, 0)), CAST(26 AS Decimal(18, 0)), N'https://salt.tikicdn.com/cache/200x200/ts/product/c0/eb/83/4f934c4e91f97668a3af907d2a80dead.jpg', N'Nồi Cơm Điện Nắp Gài Sharp KS-19TJV"ST" có dung tích lớn 1.8L, là sự lựa chọn hoàn hảo dành cho gia đình có từ 4-6 người ăn. Sản phẩm có thiết kế tinh tế, sang trọng cùng tính năng nổi bật giúp mang đến cho gia đình bạn những bữa cơm trắng thơm ngon, nóng hổi mà không mất quá nhiều thời gian, công sức chuẩn bị.
		  Nồi tùy thuộc vào dung tích nồi cơm điện mà mỗi sản phẩm có công suất khác nhau. Riêng đối với nồi cơm điện có dung tích 1.8 lít, Sharp đã có sự cải tiến công suất ưu việt từ 600W thành 700W nhằm tiết kiệm thời gian cũng như giúp cơm chính đều hơn ngay cả những vùng có điện áp thấp.
		  Nồi cơm điện Sharp KS-19TJV"ST" trang bị chế độ ủ ấm 3 chiều giữ ấm tới 12 giờ giúp bạn khỏi mất thời gian hâm cơm lại. Hộp chứa hơi nước lớn, tháo rời dễ dàng, tiện lợi cho việc lau chùi thường xuyên, giúp cơm dẻo và không bị ám mùi cơm cũ.
		  Đặc biệt lòng nồi được làm từ hợp kim nhôm phủ lớp chống dính bền bỉ, có thể hạn chế được cơm dính vào đáy nồi gây cháy khét, giúp người dùng dễ dàng vệ sinh chùi rửa hơn.
Vỏ nồi được làm kim loại phun sơn tĩnh điện chống gỉ sét, chịu nhiệt, chịu lực nên sẽ không bị móp méo nếu như lỡ bị va chạm mạnh, bên ngoài bề mặt sáng bóng phủ chất chống oxi hóa lâu bền với thời gian.
Nồi cơm sử dụng đĩa đun nóng quanh thân nồi giúp phân tán nhiệt đồng đều làm cơm chín đều hơn. Đĩa đun nóng ở đáy nồi có kích thước lớn giúp nấu cơm chín nhanh hơn. Kết hợp chất chống dính poly-flon giúp cơm không dính lên thành nồi tạo cháy lại để dàng vệ sinh nồi.', 100, 1, 26, 0)
INSERT [dbo].[Products] ([Id], [Name], [Price], [PromotionPrice], [Image], [Detail], [Quantity], [CategoryId], [PromotionPercent], [isProductNew]) VALUES (31, N'Nồi Cơm Điện Tử Philips HD3060 (0.7L)', CAST(100 AS Decimal(18, 0)), CAST(80 AS Decimal(18, 0)), N'https://salt.tikicdn.com/cache/200x200/ts/product/71/71/fd/bcdac13339c5ca7c4f4a6171d853bd19.jpg', N'Nồi Cơm Điện Tử Philips HD3060 (0.7L) - Đen phù hợp với những người độc thân hoặc gia đình nhỏ, không cần phải lo lắng vì còn cơm thừa nữa. Kiểu dáng nhỏ gọn chiếm ít không gian. Cảm biến chạm để dễ thao tác.
		  Chọn các chức năng hâm nóng và làm ấm bằng một lần chạm để có thức ăn nóng bất cứ lúc nào bạn muốn. Có thể đặt trước 24 giờ thời gian hoàn thành nấu ăn cho tất cả 6 menu. Hoàn thành sớm bữa sáng hoặc bữa tối để đỡ bận rộn hơn. Có thể điều chỉnh thời gian nấu nếu cần. Có thể điều chỉnh thời gian nấu súp, cháo và các món hầm từ 1-4 giờ và sữa chua từ 4-12 giờ. Ngoài ra còn có chức năng khóa trẻ em giúp bạn yên tâm hơn khi nấu ăn.
		  Nồi cơm điện tử được thiết kế với kiểu dáng đơn giản, cùng tông màu đen sang trọng giúp cho gian bếp nhà bạn đẹp mắt hơn, nồi còn được trang bị thêm bảng điều khiển cảm biến thông minh, hiển thị rõ ràng, thao tác đơn giản và cực nhạy.
		  Nồi cơm điện tử được phủ lớp chống dính cao cấp giúp cơm nở, chín đều, không bị dính vào đáy nồi nên không còn bất kì hạt cơm nào sót lại, vừa tiết kiệm vừa dễ dàng chùi rửa.
		  Nồi cơm điện có thể duy trì độ ấm và giữ ẩm tốt là nhờ vào thiết kế van áp suất nhỏ Hydrat hoá cho hiệu suất vượt trội giữ được độ dẻo thơm tự nhiên. Cùng chức năng hâm nóng nhanh chóng giúp mang đến sự ngon miệng cho cả nhà dù sáng, trưa hay chiều.
		  ', 100, 1, 19, 1)
INSERT [dbo].[Products] ([Id], [Name], [Price], [PromotionPrice], [Image], [Detail], [Quantity], [CategoryId], [PromotionPercent], [isProductNew]) VALUES (32, N'Nồi Chiên Không Dầu Philips HD9220/20', CAST(250 AS Decimal(18, 0)), CAST(140 AS Decimal(18, 0)), N'https://salt.tikicdn.com/cache/200x200/ts/product/ee/70/5c/2b59d7f9ae2638ae4fe26f2cd81c47f6.jpg', N'Nồi Chiên Không Dầu Philips HD9220/20 sở hữu thiết kế độc đáo với luồng khí được làm nóng rất cao lưu thông nhanh, thiết kế hình sao và cấu hình làm nóng tối ưu cho phép bạn rán nhiều món ăn ngon miệng khác nhau theo cách nhanh chóng, dễ dàng và lành mạnh cho sức khỏe mà không cần thêm dầu.
		  Nồi được áp dụng công nghệ Rapid Air độc đáo cho phép bạn rán, nướng bánh, nướng và quay những món ăn nhanh ngon nhất và những bữa ăn có ít chất béo hơn so với nồi chiên thông thường, bằng việc sử dụng ít dầu hoặc không có dầu. Nồi chiên không dầu Philips HD9220/20 với công nghệ Rapid Air cũng tạo ra ít mùi hơn so với nồi chiên thông thường, nồi dễ vệ sinh, an toàn và tiết kiệm cho việc sử dụng hàng ngày.
		  Đặc biệt với chức năng hẹn giờ tích hợp cho phép bạn đặt sẵn thời gian nấu lên đến 30 phút. Chức năng tự động tắt có cả chỉ báo âm thanh "sẵn sàng". Điều khiển nhiệt độ hoàn toàn có thể điều chỉnh cho phép bạn đặt trước nhiệt độ nấu ăn tốt nhất cho thức ăn lên đến 200 độ. Thưởng thức những miếng rán giòn, vàng ươm, món ăn nhanh, gà, thịt và nhiều món khác - tất cả đều được chế biến với thời gian và nhiệt độ phù hợp để cho kết quả tốt nhất.
		  Nồi thiết kế đa chức năng, không chỉ tuyệt vời khi rán, nồi chiên không dầu Philips HD9220/20 đổi mới với công nghệ Rapid Air còn cho phép bạn quay, nướng bánh và nướng những món ăn ưa thích.
		  Bên cạnh đó, sản phẩm có phần ngăn kéo ra được phủ lớp chống dính có thể tháo rời và giỏ thức ăn có thể rửa được bằng máy rửa chén, giúp vệ sinh dễ dàng.
		  ', 100, 2, 44, 1)
INSERT [dbo].[Products] ([Id], [Name], [Price], [PromotionPrice], [Image], [Detail], [Quantity], [CategoryId], [PromotionPercent], [isProductNew]) VALUES (33, N'Nồi Chiên Không Dầu Lock&Lock EJF351BLK (5.2L)', CAST(235 AS Decimal(18, 0)), CAST(117 AS Decimal(18, 0)), N'https://salt.tikicdn.com/cache/200x200/ts/product/2b/83/af/a0af003b498d3aa871b4b9791f87b0e4.jpg', N'Nồi Chiên Không Dầu Lock&Lock EJF351BLK thiết kế độc đáo của nồi chiên kết hợp luồng khí được làm nóng rất cao lưu thông nhanh, thiết kế hình sao và cấu hình làm nóng tối ưu cho phép bạn rán nhiều món ăn ngon miệng khác nhau theo cách nhanh chóng, dễ dàng và lành mạnh cho sức khỏe mà không cần thêm dầu.
		  Dung tích nồi chiên Lock&lock 5.2L phù hợp để bạn chiên thực phẩm ăn trong ngày cho gia đình khoảng 6-8 người. Với dung tích này, bạn có thể chế biến các món như: Cánh gà chiên, đùi gà chiên, khoai tây/ khoai lang chiên,… hoặc chiên nguyên cả con gà.
		  Bạn có thể tháo rời lòng nồi ra khỏi giỏ chiên bằng cách chạm vào nút ở phía trên tay cầm, giúp trọng lượng tay cầm nhẹ hơn, bạn dễ dàng xoay trở và sắp xếp thức ăn cũng như vệ sinh lòng lồi.
		  Được trang bị công nghệ điều khiển cơ bền bỉ và dễ dàng thao tác sử dụng, có vỏ ngoài được làm từ chất liệu nhựa bền đẹp, chịu nhiệt tốt và dễ dàng lau chùi khi bị bám bẩn.
		  Công nghệ chiên không dầu mới cho phép bạn chiên rán, nướng và quay thực phẩm nhanh chóng, ít chất béo hơn so với nồi chiên thông thường nhờ việc sử dụng ít dầu hoặc không dùng dầu, cũng tạo ra ít mùi hơn và ít chất béo hơn an toàn cho sức khỏe, giảm thiểu nguy cơ mắc các bệnh béo phì, mỡ má thừa lipid.
		  Công nghệ chiên chân không, làm nóng 360 độ làm chín thực phẩm bằng cách đốt nóng không khí bên trong nồi, kết hợp quạt thổi giúp lan tỏa luồng khí nóng luân chuyển nhanh và mạnh đều khắp bề mặt thực phẩm. Nhờ đó, mà thực phẩm khi bạn chiên bằng nồi chiên không dầu sẽ được chín vàng đều, thơm ngon hơn so với chiên rán thông thường.
		  Nồi chiên không dầu Lock&Lock EJF351BLK có ngăn kéo phủ lớp chống dính có thể tháo rời giúp việc vệ sinh máy trở nên dễ dàng. Chức năng hẹn giờ tích hợp cho phép bạn đặt sẵn thời gian nấu lên đến 30 phút. Điều khiển nhiệt độ có thể điều chỉnh cho phép bạn đặt trước nhiệt độ nấu phù hợp với thức ăn lên đến 200 độ C.
		  ', 100, 2, 50, 0)
INSERT [dbo].[Products] ([Id], [Name], [Price], [PromotionPrice], [Image], [Detail], [Quantity], [CategoryId], [PromotionPercent], [isProductNew]) VALUES (34, N'Nồi Chiên Không Dầu Lock&Lock EJF351WHT (5.2L) (Trắng)', CAST(235 AS Decimal(18, 0)), CAST(215 AS Decimal(18, 0)), N'https://salt.tikicdn.com/cache/200x200/ts/product/e2/f1/f5/9febdaad574944d01ae89a16fcbc6f7e.jpg', N'Nồi Chiên Không Dầu Lock&Lock EJF351WHT thiết kế độc đáo của nồi chiên kết hợp luồng khí được làm nóng rất cao lưu thông nhanh, thiết kế hình sao và cấu hình làm nóng tối ưu cho phép bạn rán nhiều món ăn ngon miệng khác nhau theo cách nhanh chóng, dễ dàng và lành mạnh cho sức khỏe mà không cần thêm dầu.
		  Dung tích nồi chiên Lock&lock 5.2L phù hợp để bạn chiên thực phẩm ăn trong ngày cho gia đình khoảng 6-8 người. Với dung tích này, bạn có thể chế biến các món như: Cánh gà chiên, đùi gà chiên, khoai tây/ khoai lang chiên,… hoặc chiên nguyên cả con gà.
		  Bạn có thể tháo rời lòng nồi ra khỏi giỏ chiên bằng cách chạm vào nút ở phía trên tay cầm, giúp trọng lượng tay cầm nhẹ hơn, bạn dễ dàng xoay trở và sắp xếp thức ăn cũng như vệ sinh lòng nồi.
		  Được trang bị công nghệ điều khiển cơ bền bỉ và dễ dàng thao tác sử dụng, có vỏ ngoài được làm từ chất liệu nhựa bền đẹp, chịu nhiệt tốt và dễ dàng lau chùi khi bị bám bẩn.
		  Công nghệ chiên không dầu mới cho phép bạn chiên rán, nướng và quay thực phẩm nhanh chóng, ít chất béo hơn so với nồi chiên thông thường nhờ việc sử dụng ít dầu hoặc không dùng dầu, cũng tạo ra ít mùi hơn và ít chất béo hơn an toàn cho sức khỏe, giảm thiểu nguy cơ mắc các bệnh béo phì, mỡ má thừa lipid.
		  Công nghệ chiên chân không, làm nóng 360 độ làm chín thực phẩm bằng cách đốt nóng không khí bên trong nồi, kết hợp quạt thổi giúp lan tỏa luồng khí nóng luân chuyển nhanh và mạnh đều khắp bề mặt thực phẩm. Nhờ đó, mà thực phẩm khi bạn chiên bằng nồi chiên không dầu sẽ được chín vàng đều, thơm ngon hơn so với chiên rán thông thường.
		  Nồi chiên không dầu Lock&Lock EJF351WHT có ngăn kéo phủ lớp chống dính có thể tháo rời và giỏ thức ăn có thể rửa được bằng máy rửa chén, giúp việc vệ sinh máy trở nên dễ dàng. Chức năng hẹn giờ tích hợp cho phép bạn đặt sẵn thời gian nấu lên đến 30 phút. Điều khiển nhiệt độ có thể điều chỉnh cho phép bạn đặt trước nhiệt độ nấu phù hợp với thức ăn lên đến 200 độ C.
		  ', 100, 2, 8, 0)
INSERT [dbo].[Products] ([Id], [Name], [Price], [PromotionPrice], [Image], [Detail], [Quantity], [CategoryId], [PromotionPercent], [isProductNew]) VALUES (35, N'Nồi Chiên Không Dầu Điện Tử Philips HD9643 - Đen (0.8kg)', CAST(312 AS Decimal(18, 0)), CAST(220 AS Decimal(18, 0)), N'https://salt.tikicdn.com/cache/200x200/ts/product/f5/a2/10/96495a6b2e034f6049c831ba4bcf2cf4.jpg', N'Nồi Chiên Không Khí Philips HD9643 được sản xuất theo công nghệ Tubostar với bề mặt chống dính cao cấp, mang đến cho bạn những món ăn chiên thật thơm ngon và hoàn hảo.
			Với công nghệ hiện đại này, tất cả nguyên liệu được đun nóng bằng luồng nhiệt luân chuyển ổn định và được nấu chín cùng một lúc, đảm bảo thức ăn giòn ở bên ngoài và mềm ở bên trong cùng với vỏ ngoài chín vàng thật đẹp mắt mà không cần dùng dầu ăn hoặc dùng rất ít dầu. Sản phẩm hứa hẹn sẽ là một quà tặng đặc biệt dành cho chị em nội trợ.
			Giỏ Quick Clean của Philips Airfryer sử dụng lưới chống dính có thể tháo rời, giúp cho việc làm sạch máy trở nên nhanh chóng và dễ dàng hơn. Ngoài ra, ngăn kéo phủ lớp chống dính có thể tháo rời để vệ sinh dễ dàng. Philips Airfryer với công nghệ TurboStar sẽ giúp bạn và gia đình tránh được mùi dầu rán so với nhựng loại nồi chiên thông thường.
			Với nồi chiên không khí Philips, bạn sẽ không cần phải làm nóng trước vì bếp luôn ở chế độ sẵn sàng. Máy khởi động nhanh hơn và duy trì vận tốc cao trên toàn bộ quá trình nấu nướng, giúp bạn tiết kiệm thời gian nấu nướng mỗi ngày.
			Philips Airfryer được cài đặt sẵn chế độ nấu tự động với những món ăn phổ biến nhất như khoai tây chiên đông lạnh, thịt, cá và đùi gà. Nhờ vậy, bạn có thể dễ dàng nấu thức ăn chỉ với một lần nhấn nút. Bạn chỉ cần xoay nút Quick Control thông minh là có thể cài đặt nhiệt độ phù hợp, sau đó xoay lần nữa để cài đặt thời gian và nhấn nút để bắt đầu nấu. Rất nhanh chóng và tiện lợi.
			Công nghệ TurboStar độc đáo xoáy không khí nóng liên tục qua toàn bộ khoang nấu, tạo ra sự phân phối nhiệt đồng đều khắp giỏ chứa thực phẩm. Nồi chiên không dầu Philips HD9643 đạt được luồng khí tối ưu nhất để chiên thực phẩm chín đều hơn 50%.
			Không chỉ tuyệt vời khi chiên rán, Philips Airfryer cải tiến với công nghệ TurboStar còn cho phép bạn nướng thịt, nướng bánh và quay những thực phẩm ưa thích trong một lần duy nhất và giữ ấm cho mọi thời điểm dùng bữa trong ngày.
		', 100, 2, 29, 0)
INSERT [dbo].[Products] ([Id], [Name], [Price], [PromotionPrice], [Image], [Detail], [Quantity], [CategoryId], [PromotionPercent], [isProductNew]) VALUES (36, N'Nồi Chiên Không Dầu Perfect GLA 609 (4L)', CAST(115 AS Decimal(18, 0)), CAST(47 AS Decimal(18, 0)), N'https://salt.tikicdn.com/cache/200x200/media/catalog/product/1/_/1.u5386.d20170926.t171143.816203.jpg', N'Nồi chiên không dầu Perfect GLA 609 sở hữu kiểu dáng đẹp mắt cùng màu sắc trang nhã, không chỉ hỗ trợ tối đa cho công việc bếp núc mà còn góp phần mang đến phong cách sang trọng, hiện đại cho không gian bếp nhà bạn.
		   Sản phẩm được thiết kế với lớp vỏ nhựa PP chịu nhiệt, lòng nồi được làm từ chất liệu ceramic, ngăn chiên bằng thép không gỉ phủ 3 lớp chống dính giúp thức ăn khi chế biến không bị dính nồi, hạn chế cháy khét, đồng thời dễ lau rửa sau khi dùng.
		   Đặc biệt, nồi chiên không khí sử dụng công nghệ đốt nóng chân không Rapid Air, phần quạt phía trên của nồi thổi ra luồng không khí nóng, sau đó dòng khí nóng lên đến 200 độ C sẽ lưu chuyển tuần hoàn ở tốc độ nhanh và mạnh quanh vỉ, chiên giòn đều thức ăn bằng không khí thay vì dầu mỡ như bình thường.
		   Thiết bị được thiết kế để chiên, nướng thực phẩm mà không cần dầu mỡ. Nhờ vậy, nồi giúp giảm đến 80% lượng chất béo so với việc chiên, nướng bằng dầu mỡ thông thường nên bạn có thể thoải mái thưởng thức các món chiên, nướng mà không lo bị béo phì, cao huyết áp hay mắc các bệnh về tim mạch.
		   Thiết bị có dung tích 4L, công suất 1400W giúp chiên thức ăn nhanh chóng, chỉ mất từ 12 - 18 phút để chiên nướng thực phẩm so với các loại lò nướng khác trên thị trường thì thời gian 35 - 40 phút, do đó nồi chiên không khí Perfect giúp tiết kiệm 50% thời gian đun nấu, lượng điện năng tiêu thụ vì vậy cũng tiết kiêm được nửa so với bình thường.
		   Nồi được thiết kế ngăn chiên dạng kín với đặc điểm không sử dụng dầu mỡ khi nấu, không còn trình trạng bám mùi vào tóc và quần áo. Sản phẩm còn được tích hợp chức năng lọc mùi, khi chiên với nhiệt độ cao thì mùi của thực phẩm được hút ra bên ngoài, không bị tích tụ lại bên trong khoảng hẹp của lòng nồi, giúp thức ăn có hương vị thơm ngon và không bị nồng.
Sản phẩm dùng để làm các món chiên, nướng đa dạng như: Khoai tây chiên, cánh gà nướng, khoai lang nướng, thịt nướng và làm bỏng ngô, hâm nóng lại đồ ăn. Sản phẩm sử dụng bộ lọc khói giúp làm giảm thiểu tối đa khói khi chiên, nướng thực phẩm. Nồi chiên không dầu Perfect là sự lựa chọn đúng đắn, giúp bạn tiết kiệm thời gian và chi phí mua sắm.
Perfect GLA 609 cho phép bạn thao tác đơn giản, chỉ cần cho đồ ăn đã được tẩm ướp trước vào khay rồi chỉnh thời gian và nhiệt độ chiên nướng là bạn đã có ngay những món ăn yêu thích. Đặc biệt, nồi chiên không dầu Perfect có thể chế biến được rất nhiều món ăn như gà nướng, thịt nướng, khoai tây chiên, thậm chí là các món như bỏng ngô hay làm bánh. Sản phẩm sử dụng bảng điều khiển bằng nút vặn, chỉ cần xoay nhẹ để khởi động và thay đổi chế độ, điều chỉnh vô cùng linh hoạt.


', 100, 2, 59, 0)
INSERT [dbo].[Products] ([Id], [Name], [Price], [PromotionPrice], [Image], [Detail], [Quantity], [CategoryId], [PromotionPercent], [isProductNew]) VALUES (37, N'Nồi Chiên Không Dầu Điện Tử Lock&Lock EJF357BLK (5.2 Lít)', CAST(241 AS Decimal(18, 0)), CAST(109 AS Decimal(18, 0)), N'https://salt.tikicdn.com/cache/200x200/ts/product/07/2a/9f/f827733c48227f3779e6c829a4177bf4.jpg', N'Nồi Chiên Không Dầu Magic Korea A-84 với thiết kế hiện đại, gam màu đen sang trọng, kiểu dáng nhỏ gọn kết hợp các đường nét cong nhẹ nhàng và tinh tế, tạo nên 1 sản phẩm đẹp ngoài sự mong đợi. Nồi có dung tích siêu lớn lên đến 4.4L, giúp bạn thoải mái chiên nướng nhiều thực phẩm hơn so với nhưng nồi chiên dung tích nhỏ khác.
		  Đặc biệt với cơ chế hoạt động sử dụng công nghệ đót nóng châng không Rapid Air, phần quạt phía trên phần trong nồi sẽ thổi ra luồng không khí nóng, sau đó dòng khí nóng lên đến 200 độ C này sẽ lưu chuyển tuàn hoàn ở tốc độ nhanh và mạnh quanh vỉ thức ăn để chiên giòn đều thức ăn bằng không khí thay vì dầu mỡ như bình thường. Còn những loại thực phẩm có mỡ có thể giảm tới 80% lượng hất béo so với kiểu chiên thông thường trên chảo mà vẫn đảm bảo hương vị thơm ngon tự nhiên.
		  Nồi chiên được hoạt động với công suất lên đến 1400W giúp chiên rán và làm chín khối lượng thực phẩm lớn và những thực phẩm lâu chín nhất như gà nguyên một khoảng thời gian ngắn hơn, giúp tiết kiệm 30% thời gian nấu, cho nên lượng điện năng tiêu thụ cũng tiết kiệm được 1/2 so với bình thường.
		  Bên cạnh đó với tính năng lọc mùi giảm khói, bạn sẽ không phải lo ngại thức ăn bị lẫn mùi vị của nhau. Khi chiên với nhiệt độ cao thì mùi của thực phẩm được hút ra bên ngoài, không bị tích tụ lại bên trong khoảng hẹp của lòng nồi nên thực phẩm sau khi chế biến sẽ có mùi vị thơm ngon hơn và không bị nồng. Hơn nữa bộ lọc mùi và đặc điểm không sử dụng dầu mỡ của nồi chiên không dầu giúp bạn nấu nướng được sạch sẽ hơn, sau khi nấu bạn sẽ không còn tình trạng quần áo hay đầu tóc am mùi của thức ăn nữa, khu vực bếp ăn cũng sẽ không bị bắn những vệt dầu bẩn cứng đầu.
		  Ngoài khả năng làm các món chiên rán như gà chiên, chả giò, nem chua rán, khoai tây chiên, tôm lăn bột, khoai lang hay thậm chí làm bỏng ngôản phẩm còn có thể tận dụng để nướng bánh sandwich, bánh quy ròn, sấy khô thực phẩm như mít sấy, hoa quả sấy, cơm dừa sấy, bất cứ lúc nào chỉ với 2 nút điều chỉnh.
		  Nồi được làm bằng chất liệu nhựa PP cao cấp có khả năng chịu nhiệt và chịu lực cao làm sản phẩm trở nên sang trọng và tạo cảm giác sạch sẽ vệ sinh hơn, phần lòng nồi bằng chất liệu thép không gỉ phủ thêm 3 lớp chống dính thích hợp nấu nướng mọi loại thực phẩm mà không gây kết dính. Dễ dàng vệ sinh với thiết kế khay rán phủ lớp chống dính bên trong giúp bạn có thể tháo ra và lau rửa rất nhẹ nhàng.', 100, 2, 54, 1)
INSERT [dbo].[Products] ([Id], [Name], [Price], [PromotionPrice], [Image], [Detail], [Quantity], [CategoryId], [PromotionPercent], [isProductNew]) VALUES (38, N'Nồi Chiên Không Dầu Bluestone AFB-5859 - 3.3L', CAST(125 AS Decimal(18, 0)), CAST(85 AS Decimal(18, 0)), N'https://salt.tikicdn.com/cache/200x200/ts/product/2a/0d/b8/c9d72c596af14225f7a0246395c7656d.jpg', N'Nồi chiên không dầu Bluestone AFB-5859 được thiết kế với dung tích lên đến 3.3 lít giúp bạn có thể chiên thức ăn với khối lượng lớn dành cho nhiều người. Ngoài ra với dung tích hơn 3 lít, sản phẩm còn giúp bạn có thể thực hiện những món ăn ở dạng nguyên con như gà, vị Bên trong sản phẩm có kèm tờ hướng dẫn chế biến các món ăn.
			Nồi chiên Bluestone AFB-5859 ứng dụng công nghệ Rapid Air tiên tiến, độc đáo cho phép bạn chiên, rán món ăn không dầu hoặc ít dầu một cách nhanh chóng, gọn lẹ. Đặc biệt, công nghệ này tạo ra ít mùi hơn so với các nồi chiên thông thường không gây khó chịu cho người xung quanh.
			Sản phẩm trang bị chức năng điều chỉnh nhiệt độ lên tới 200 bằng núm xoay dễ dàng thao tác, nhờ đó bạn có thể tùy chỉnh phụ thuộc vào món ăn và sở thích của mình để cho món nướng hoàn hảo nhất.
			Ngoài ra, bộ hẹn giờ có tín hiệu sẵn sàng và tính năng tự động ngắt giúp bạn linh động hơn trong việc nấu nướng, tiết kiệm thời gian để làm việc khác cùng lúc.
			Nồi chiên có thiết kế độc đáo, nhỏ gọn, tông đen tuyền mang đến sự sang trọng cho không gian sử dụng.
			Phụ kiện của sản phẩm có thể rửa được trong máy rửa chén. Ngoài ra, sảm phẩm còn kèm sách dạy nấu ăn gồm rất nhiều công thức, lời khuyên và mẹo chế biến.
			', 100, 2, 32, 0)
INSERT [dbo].[Products] ([Id], [Name], [Price], [PromotionPrice], [Image], [Detail], [Quantity], [CategoryId], [PromotionPercent], [isProductNew]) VALUES (39, N'Lò Vi Sóng Điện Tử Có Nướng Sharp R-G272VN-S', CAST(110 AS Decimal(18, 0)), CAST(80 AS Decimal(18, 0)), N'https://salt.tikicdn.com/cache/200x200/ts/product/87/61/40/db3db9f35d74e62ca00af719942218b1.jpg', N'Bạn đang muốn mua một chiếc lò vi sóng nhưng chưa biết mua loại nào và mua của hãng nào? Lò Vi Sóng Điện Tử Có Nướng Sharp R-G272VN-S sẽ là sự lựa chọn lý tưởng cho bạn. Lò có nút ấn thông minh, hỗ trợ thêm chế độ nướng tiện dụng và chức rã đông nhanh theo trọng lượng. Bạn và những người thân yêu có thể dễ dàng thưởng thức những bữa cơm gia đình đầy dinh dưỡng mà không tốn nhiều thời gian và công sức.
		  R-G272VN (S) với dung tích 20L, không gian rộng rãi phù hợp chế biến những món ăn hoặc hâm đồ ăn với nhiều hộp đựng thức ăn có kích thước khác nhau cùng một lúc.
		  Lò có 4 chức năng chính là nấu, nướng, hâm và rã đông, ngoài ra lò còn có thêm 8 chế độ nấu tự động gồm nấu bắp rang, khoai tây, nướng bánh pizza, hải sản, thịt. Với mức công suất lò đến 800W nấu ăn nhanh chóng, là công cụ hỗ trợ tốt nhất của người nội trợ khi nấu ăn.
		  Chức năng nấu kết hợp với vi sóng và nướng, giúp bạn đơn giản hóa quá trình nấu từ 2 xuống còn 1 giai đoạn mà không cần dừng lại để điều chỉnh thêm. Công suất nướng 1000W chế biến thức ăn nhanh hơn mà vẫn giữ được vị ngon của món nướng.
		  Bảng điều khiển được trang bị  màn hình hiển thị rõ ràng và hệ thống các phím bấm điện tử đi kèm với hướng dẫn chi tiết dễ sử dụng để chỉnh thời gian, hay chọn chế độ nấu tự động một cách nhanh chóng.
		  Cửa mở thiết kế nút ấn, thao tác đơn giản, thích hợp cho mọi người đều sử dụng được
		  Bạn có thể đặt chế độ hẹn giờ thích hợp cho từng món ăn, tối đa là 99 phút để lò chạy tự động, trong khi đó bạn có thể tranh thủ dọn dẹp nhà cửa, khi đến thời gian kết thúc lò sẽ có chuông báo, giúp bạn tiết kiệm thời gian trong việc nấu nướng.
		  ', 100, 3, 27, 1)
INSERT [dbo].[Products] ([Id], [Name], [Price], [PromotionPrice], [Image], [Detail], [Quantity], [CategoryId], [PromotionPercent], [isProductNew]) VALUES (40, N'Lò Vi Sóng Hơi Nước Sharp AX-1600VN(R) - 31L (Đỏ Đen)', CAST(940 AS Decimal(18, 0)), CAST(700 AS Decimal(18, 0)), N'https://salt.tikicdn.com/cache/200x200/media/catalog/product/a/x/ax-1600vn.u579.d20160627.t155641.jpg', N'Lò Vi Sóng Hơi Nước Sharp AX-1600VN(R) - 31L (Đỏ Đen) hoạt động với công suất 800W giúp lò có thể thực hiện chương trình nấu nướng thực phẩm nhanh hơn, giúp bạn tiết kiệm được thời gian đồng thời góp phần tiết kiệm điện năng tiêu thụ.
		  Được trang bị với 34 chức năng nấu cùng màn hình hiển thị LCD bạn có thể sử dụng để nấu, nướng, rã đông, hâm, nướng đối lưu, hấp bằng cách điều chỉnh chương trình cho lò vi sóng bằng núm xoay và bàn phím điều khiển điện tử được lắp đặt sẵn. Với những tính năng này, lò vi sóng sẽ góp phần mang đến sự tiện dụng cho chị em nội trợ và sự phong phú trong bữa ăn gia đình.
			Lò Vi Sóng Hơi Nước Sharp AX-1600VN(R) - 31L (Đỏ Đen) sử dụng công nghệ inverter giúp động hoạt động êm ái, tiết kiệm điện năng tiêu thụ giúp người nội trợ không phải lo ngại vấn đề hóa đơn điện cuối tháng.
			Khoang lò được tráng Flourine chống dính hiệu quả, chống oxy hóa và giúp ngăn chặn mùi và dầu bám dính lại bên trong lò đảm bảo vấn đề an toàn vệ sinh thực phẩm.

Khi hoạt động, lò vi sóng với chức năng loại bỏ mỡ và giả muối có trong thực phẩm mang đến những món ăn thơm ngon, an toàn cho sức khỏe.

Ngoài ra, lò vi sóng còn có chức năng lưu giữ hương vị và duy trì chất dinh dưỡng có trong thực phẩm nhằm cung cấp dưỡng chất cho cơ thể trong từng bữa ăn gia đình bạn.
Lò vi sóng được thiết kế với dung tích khoang lò 31 lít giúp người nội trợ thoải mái và dễ dàng hơn với công việc nấu nướng.
Với chức năng vệ sinh khoang lò bằng hơi nước sẽ giúp người sử dụng thuận tiện hơn với công việc vệ sinh và bảo trì lò.', 100, 3, 25, 0)
INSERT [dbo].[Products] ([Id], [Name], [Price], [PromotionPrice], [Image], [Detail], [Quantity], [CategoryId], [PromotionPercent], [isProductNew]) VALUES (41, N'Lò Vi Sóng Điện Tử Sharp R-29D2(G)VN (22L)', CAST(165 AS Decimal(18, 0)), CAST(125 AS Decimal(18, 0)), N'https://salt.tikicdn.com/cache/200x200/media/catalog/product/2/9/29d2g-1.u2751.d20160824.t172601.358888.jpg', N'Lò Vi Sóng Sharp R-29D2(G)VN có thiết kế với kiểu dáng vuông vức cùng lớp sơn tĩnh điện màu đen vô cùng sang trọng, chắc chắn sẽ làm nổi bật không gian bếp nhà bạn. Với dung tích lên đến 22L, bạn có thể thoải mái sử dụng để nấu nướng thật nhiều món ăn thơm ngon nhất cho người thân trong gia đình.
		  Bảng điều khiển được đặt ngay trên mặt lò với màu nền nổi bật, các phím điều khiển cảm ứng có hình ảnh minh họa rõ ràng sẽ giúp bạn dễ dàng sử dụng ngay từ lần đầu tiên.
		  Ngoài chức năng hâm nóng thức ăn, lò vi sóng Sharp R-29D2(G)VN còn hỗ trợ 5 chế độ khác như: Mì ăn liền, Rau củ, Rã đông, Cơm, Thức uống.
		  Nhờ công nghệ cảm biến thông minh, R-29D2(G)VN có khả năng nhận biết độ ẩm của thực phẩm để đưa ra mức thời gian và nhiệt độ nấu hoặc hâm nóng thức ăn phù hợp, bạn sẽ không còn phải lo lắng thức ăn sẽ bị cháy khét hoặc chưa đủ nóng vì không chỉnh đúng thời gian.
		  ', 100, 3, 24, 0)
INSERT [dbo].[Products] ([Id], [Name], [Price], [PromotionPrice], [Image], [Detail], [Quantity], [CategoryId], [PromotionPercent], [isProductNew]) VALUES (42, N'Lò Vi Sóng Sharp R-205VN(S) - 20L', CAST(85 AS Decimal(18, 0)), CAST(68 AS Decimal(18, 0)), N'https://salt.tikicdn.com/cache/200x200/ts/product/4f/25/95/a569eb6c41f6fb2b1d42c5433441fb8b.jpg', N'Thiết kế nhỏ gọn với những đường nét tính tế và hiện đại, không chỉ giúp tiết kiệm tối đa không gian phòng mà còn tô điểm thêm vẻ ưa nhìn cho căn bế của bạn. Bên cạnh đó, cửa lò còn được thiết kế nút ấn mở dễ thao tác cho bạn sử dụng thật dễ dàng và nhanh chóng.
		  Khoang lò có dung tích phổ thông 20L , phù hợp cho việc chế biến đa dạng các món ăn hay kết hợp nhiều món ăn cùng lúc. Với sự tiện ích này, đây chắc chắn sẽ là sự lựa chọn phù hợp cho những gia đình đông người và bận rộn.
		  3 chức năng nấu, hâm và rã đông tiện dụng, giúp bạn nấu chín và chế biến thực phẩm dễ dàng và nhanh chóng. Với 3 chức năng tiện lợi này, bạn sẽ chỉ cần vài phút cho 1 món ăn nóng hổi mà vẫn giữ lại được trọn vẹn hương vị của món ăn.
			Công suất tối đa 800W giúp tiết kiệm tối đa thời gian nấu nướng. Ngoài ra, với nhiều mức điều chỉnh công suất khác nhau, bạn có thể dễ dàng lựa chọn mức công suất phù hợp với mục đích sử dụng hay yêu cầu chế biến món ăn, cho hiệu quả sử dụng tối ưu nhất.
			Ngoài các mức công suất khác nhau, lò còn có chế độ cài đặt thời gian tiện lợi phù hợp với từng món ăn khác nhau, giúp món ăn không bị cháy, khét hay khô. Bạn có thể hẹn giời tối đa lên tới 35 phút.
		Hệ thống núm xoay cơ tiện dụng giúp điều chỉnh chế độ nhẹ nhàng. Với núm xoay cơ thao tác đơn giản, bạn có thể dễ dàng điều chỉnh đến chế độ, công suất và thời gian thật phù hợp, cho chất lượng và hương vị món ăn hoàn hảo.
		Cụm điều khiển vặn xoay có tiếng Việt chỉ dẫn trên từng nút, giúp hạn chế thao tác sai. Cho nên lò vi sóng Sharp R-205VN(S) hoàn toàn thân thiện với người sử dụng cho dù có là người lớn tuổi
Lò có chức năng tự động cài đặt rã đông theo trọng lượng thực phẩm, giúp rã đông nhanh mà không làm mất chất dinh dưỡng có trong thực phẩm, đồng thời hạn chế tối đa các hiện tượng rã đông không hết hay không đều.
', 100, 3, 19, 0)
SET IDENTITY_INSERT [dbo].[Products] OFF
ALTER TABLE [dbo].[OrderItems]  WITH CHECK ADD  CONSTRAINT [FK_OrderItems_Orders] FOREIGN KEY([OrderId])
REFERENCES [dbo].[Orders] ([Id])
GO
ALTER TABLE [dbo].[OrderItems] CHECK CONSTRAINT [FK_OrderItems_Orders]
GO
ALTER TABLE [dbo].[OrderItems]  WITH CHECK ADD  CONSTRAINT [FK_OrderItems_Products] FOREIGN KEY([ProductId])
REFERENCES [dbo].[Products] ([Id])
GO
ALTER TABLE [dbo].[OrderItems] CHECK CONSTRAINT [FK_OrderItems_Products]
GO
ALTER TABLE [dbo].[Products]  WITH CHECK ADD  CONSTRAINT [FK_Products_Categories] FOREIGN KEY([CategoryId])
REFERENCES [dbo].[Categories] ([Id])
GO
ALTER TABLE [dbo].[Products] CHECK CONSTRAINT [FK_Products_Categories]
GO
/****** Object:  StoredProcedure [dbo].[Usp_GetBestSeller]    Script Date: 1/4/2020 6:57:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[Usp_GetBestSeller]
AS	
	SELECT P.* 
	FROM dbo.Products P
	INNER JOIN (
		SELECT OT.ProductId, SUM(OT.Quantity) AS Quantity
		FROM dbo.OrderItems OT
		GROUP BY OT.ProductId
	) PQ ON PQ.ProductId = P.Id
	ORDER BY PQ.Quantity
GO
/****** Object:  StoredProcedure [dbo].[Usp_GetCategoriesBestSeller]    Script Date: 1/4/2020 6:57:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROC [dbo].[Usp_GetCategoriesBestSeller]
AS 
	SELECT C.* 
	FROM dbo.Categories C
	INNER JOIN (
		SELECT P.CategoryId, SUM(PQ.Quantity) AS Quantity
		FROM dbo.Products P
		INNER JOIN (
			SELECT OT.ProductId, SUM(OT.Quantity) AS Quantity
			FROM dbo.OrderItems OT
			GROUP BY OT.ProductId
		) PQ ON PQ.ProductId = P.Id
		INNER JOIN dbo.Categories C ON C.Id = P.CategoryId
		GROUP BY P.CategoryId
	) CQ ON CQ.CategoryId = C.Id
GO
/****** Object:  StoredProcedure [dbo].[Usp_GetProductsBestSellerByCategory]    Script Date: 1/4/2020 6:57:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[Usp_GetProductsBestSellerByCategory]
@CategoryId INT
AS	
	SELECT P.* 
	FROM dbo.Products P
	INNER JOIN (
		SELECT OT.ProductId, SUM(OT.Quantity) AS Quantity
		FROM dbo.OrderItems OT
		GROUP BY OT.ProductId
	) PQ ON PQ.ProductId = P.Id
	WHERE P.CategoryId = @CategoryId
	ORDER BY PQ.Quantity
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC Usp_SearchProduct
@Search nvarchar(250),
@CategoryId int
AS 
	IF @CategoryId = 0
	BEGIN
		SELECT * 
		FROM dbo.Products 
		WHERE Name LIKE N'%'+ @Search +'%'
	END
	ELSE
	BEGIN
		SELECT * 
		FROM dbo.Products 
		WHERE Name LIKE N'%'+ @Search +'%'
		AND CategoryId = @CategoryId
	END