GO
SET IDENTITY_INSERT [dbo].[Categories] ON 
GO
INSERT [dbo].[Categories] ([CategoryID], [CategoryCode], [CategoryName]) VALUES (1, N'PB100', N'Power Bank')
GO
INSERT [dbo].[Categories] ([CategoryID], [CategoryCode], [CategoryName]) VALUES (2, N'EPH2', N'Earphone')
GO
INSERT [dbo].[Categories] ([CategoryID], [CategoryCode], [CategoryName]) VALUES (3, N'MCSSD', N'Memory Card')
GO
INSERT [dbo].[Categories] ([CategoryID], [CategoryCode], [CategoryName]) VALUES (4, N'WCAV', N'Wireless Charger')
GO
INSERT [dbo].[Categories] ([CategoryID], [CategoryCode], [CategoryName]) VALUES (5, N'UC2', N'Micro-USB Connector')
GO
INSERT [dbo].[Categories] ([CategoryID], [CategoryCode], [CategoryName]) VALUES (6, N'TCC', N'Type-C Cable')
GO
SET IDENTITY_INSERT [dbo].[Categories] OFF
GO
SET IDENTITY_INSERT [dbo].[Companies] ON 
GO
INSERT [dbo].[Companies] ([CompanyID], [CompanyName]) VALUES (1, N'Ambrane')
GO
INSERT [dbo].[Companies] ([CompanyID], [CompanyName]) VALUES (2, N'Sony')
GO
INSERT [dbo].[Companies] ([CompanyID], [CompanyName]) VALUES (3, N'Syska')
GO
INSERT [dbo].[Companies] ([CompanyID], [CompanyName]) VALUES (4, N'SanDisk')
GO
INSERT [dbo].[Companies] ([CompanyID], [CompanyName]) VALUES (5, N'Samsung')
GO
SET IDENTITY_INSERT [dbo].[Companies] OFF
GO
SET IDENTITY_INSERT [dbo].[Products] ON 
GO
INSERT [dbo].[Products] ([ProductID], [ProductName], [Price], [CategoryID], [CompanyID]) VALUES (1, N'10000 mAh Power Bank', 32, 1, 1)
GO
INSERT [dbo].[Products] ([ProductID], [ProductName], [Price], [CategoryID], [CompanyID]) VALUES (2, N'22000 mAh Power Bank', 55, 1, 3)
GO
INSERT [dbo].[Products] ([ProductID], [ProductName], [Price], [CategoryID], [CompanyID]) VALUES (3, N'128 GB Memory Card', 77, 3, 2)
GO
INSERT [dbo].[Products] ([ProductID], [ProductName], [Price], [CategoryID], [CompanyID]) VALUES (4, N'1 TB Memory Card', 45, 3, 5)

GO
INSERT [dbo].[Products] ([ProductID], [ProductName], [Price], [CategoryID], [CompanyID]) VALUES (5, N'5V-9V variable Charger', 62, 4, 5)


GO
INSERT [dbo].[Products] ([ProductID], [ProductName], [Price], [CategoryID], [CompanyID]) VALUES (6, N'Bass Booster EarPhone', 12, 2, 2)


GO
INSERT [dbo].[Products] ([ProductID], [ProductName], [Price], [CategoryID], [CompanyID]) VALUES (7, N'USB to Micro USB Connector', 18, 5, 4)

GO
INSERT [dbo].[Products] ([ProductID], [ProductName], [Price], [CategoryID], [CompanyID]) VALUES (8, N'USB to USB Type-C Datacable', 16, 6, 4)



GO
SET IDENTITY_INSERT [dbo].[Products] OFF
GO
SET IDENTITY_INSERT [dbo].[Orders] ON 
GO
INSERT [dbo].[Orders] ([OrderID], [ProductID], [Quantity], [CustomerName], [ContactNo], [OrderDate]) VALUES (1, 1, 2, N'Mahesh Goyal ', N'9963458250', CAST(N'2020-11-22T00:21:00.0000000' AS DateTime2))
GO
SET IDENTITY_INSERT [dbo].[Orders] OFF
GO

GO
SET IDENTITY_INSERT [dbo].[Products] OFF
GO
SET IDENTITY_INSERT [dbo].[Orders] ON 
GO
INSERT [dbo].[Orders] ([OrderID], [ProductID], [Quantity], [CustomerName], [ContactNo], [OrderDate]) VALUES (2, 4, 1, N'Abhishek ', N'6400115253', CAST(N'2020-11-23T00:23:00.0000000' AS DateTime2))
GO
SET IDENTITY_INSERT [dbo].[Orders] OFF
GO


GO
SET IDENTITY_INSERT [dbo].[Products] OFF
GO
SET IDENTITY_INSERT [dbo].[Orders] ON 
GO
INSERT [dbo].[Orders] ([OrderID], [ProductID], [Quantity], [CustomerName], [ContactNo], [OrderDate]) VALUES (3, 6, 1, N'Sumit ', N'6963635285', CAST(N'2020-11-25T00:20:00.0000000' AS DateTime2))
GO
SET IDENTITY_INSERT [dbo].[Orders] OFF
GO