/****** Object:  Table [dbo].[Order]    Script Date: 2024/8/2 11:39:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Order](
	[Id] [varchar](50) NOT NULL,
	[Price] [decimal](18, 5) NOT NULL,
 CONSTRAINT [PK_Order] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OrderItem]    Script Date: 2024/8/2 11:39:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrderItem](
	[Id] [int] NOT NULL,
	[OrId] [varchar](50) NOT NULL,
	[ProductName] [nvarchar](50) NOT NULL,
	[Price] [decimal](18, 5) NOT NULL,
	[Count] [int] NOT NULL,
 CONSTRAINT [PK_OrderItem] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Order] ([Id], [Price]) VALUES (N'2024080211200001', CAST(100.00000 AS Decimal(18, 5)))
GO
INSERT [dbo].[OrderItem] ([Id], [OrId], [ProductName], [Price], [Count]) VALUES (1, N'2024080211200001', N'MyProduct', CAST(100.00000 AS Decimal(18, 5)), 1)
GO
