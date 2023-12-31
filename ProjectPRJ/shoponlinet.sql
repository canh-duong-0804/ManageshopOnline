USE [shopOnline]
GO
/****** Object:  Table [dbo].[Categories]    Script Date: 8/5/2023 11:09:14 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Categories](
	[category_id] [int] IDENTITY(1,1) NOT NULL,
	[category_name] [nvarchar](30) NULL,
PRIMARY KEY CLUSTERED 
(
	[category_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[order]    Script Date: 8/5/2023 11:09:14 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[order](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[date] [date] NOT NULL,
	[cid] [int] NULL,
	[totalmoney] [money] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[order_line]    Script Date: 8/5/2023 11:09:14 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[order_line](
	[oid] [int] IDENTITY(1,1) NOT NULL,
	[pid] [int] NULL,
	[quantity] [float] NOT NULL,
	[price] [float] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[oid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Product]    Script Date: 8/5/2023 11:09:14 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Product](
	[product_id] [int] IDENTITY(1,1) NOT NULL,
	[category_id] [int] NULL,
	[name] [nvarchar](max) NULL,
	[images] [nvarchar](max) NULL,
	[description] [nvarchar](max) NULL,
	[price] [money] NULL,
	[sell_ID] [int] NULL,
	[Quantity] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[product_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Users]    Script Date: 8/5/2023 11:09:14 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Users](
	[user_id] [int] IDENTITY(1,1) NOT NULL,
	[account] [nvarchar](30) NULL,
	[password] [nvarchar](30) NULL,
	[admin] [nvarchar](20) NULL,
	[username] [nvarchar](30) NULL,
	[gender] [bit] NULL,
	[email] [nvarchar](30) NULL,
	[phone] [nvarchar](20) NULL,
	[isSell] [int] NULL,
	[isAdmin] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[user_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Categories] ON 

INSERT [dbo].[Categories] ([category_id], [category_name]) VALUES (1, N'Rifles')
INSERT [dbo].[Categories] ([category_id], [category_name]) VALUES (2, N'Knife')
INSERT [dbo].[Categories] ([category_id], [category_name]) VALUES (3, N'Pistols')
INSERT [dbo].[Categories] ([category_id], [category_name]) VALUES (4, N'Gloves')
SET IDENTITY_INSERT [dbo].[Categories] OFF
GO
SET IDENTITY_INSERT [dbo].[order] ON 

INSERT [dbo].[order] ([id], [date], [cid], [totalmoney]) VALUES (1, CAST(N'2023-03-20' AS Date), 1, 13.0000)
INSERT [dbo].[order] ([id], [date], [cid], [totalmoney]) VALUES (2, CAST(N'2023-03-20' AS Date), 3, 300.0000)
INSERT [dbo].[order] ([id], [date], [cid], [totalmoney]) VALUES (3, CAST(N'2023-03-20' AS Date), 3, 2040.0000)
INSERT [dbo].[order] ([id], [date], [cid], [totalmoney]) VALUES (4, CAST(N'2023-03-20' AS Date), 3, 236.0000)
INSERT [dbo].[order] ([id], [date], [cid], [totalmoney]) VALUES (5, CAST(N'2023-03-20' AS Date), 3, 600.0000)
INSERT [dbo].[order] ([id], [date], [cid], [totalmoney]) VALUES (6, CAST(N'2023-03-20' AS Date), 1, 1500.0000)
INSERT [dbo].[order] ([id], [date], [cid], [totalmoney]) VALUES (7, CAST(N'2023-03-20' AS Date), 1, 0.0000)
INSERT [dbo].[order] ([id], [date], [cid], [totalmoney]) VALUES (8, CAST(N'2023-03-21' AS Date), 1, 268.0000)
INSERT [dbo].[order] ([id], [date], [cid], [totalmoney]) VALUES (9, CAST(N'2023-03-21' AS Date), 1, 7920.0000)
INSERT [dbo].[order] ([id], [date], [cid], [totalmoney]) VALUES (10, CAST(N'2023-07-21' AS Date), 1, 952.0000)
INSERT [dbo].[order] ([id], [date], [cid], [totalmoney]) VALUES (11, CAST(N'2023-07-21' AS Date), 5, 5840.0000)
INSERT [dbo].[order] ([id], [date], [cid], [totalmoney]) VALUES (12, CAST(N'2023-07-28' AS Date), 1, 2400.0000)
INSERT [dbo].[order] ([id], [date], [cid], [totalmoney]) VALUES (13, CAST(N'2023-08-04' AS Date), 1, 0.0000)
SET IDENTITY_INSERT [dbo].[order] OFF
GO
SET IDENTITY_INSERT [dbo].[order_line] ON 

INSERT [dbo].[order_line] ([oid], [pid], [quantity], [price]) VALUES (1, 2, 2, 59)
INSERT [dbo].[order_line] ([oid], [pid], [quantity], [price]) VALUES (2, 5, 2, 300)
INSERT [dbo].[order_line] ([oid], [pid], [quantity], [price]) VALUES (3, 5, 5, 300)
INSERT [dbo].[order_line] ([oid], [pid], [quantity], [price]) VALUES (4, 4, 1, 268)
INSERT [dbo].[order_line] ([oid], [pid], [quantity], [price]) VALUES (5, 9, 4, 1980)
INSERT [dbo].[order_line] ([oid], [pid], [quantity], [price]) VALUES (6, 2, 4, 118)
INSERT [dbo].[order_line] ([oid], [pid], [quantity], [price]) VALUES (7, 3, 2, 240)
INSERT [dbo].[order_line] ([oid], [pid], [quantity], [price]) VALUES (8, 4, 5, 268)
INSERT [dbo].[order_line] ([oid], [pid], [quantity], [price]) VALUES (9, 3, 5, 240)
INSERT [dbo].[order_line] ([oid], [pid], [quantity], [price]) VALUES (10, 5, 3, 300)
INSERT [dbo].[order_line] ([oid], [pid], [quantity], [price]) VALUES (11, 7, 1, 2400)
INSERT [dbo].[order_line] ([oid], [pid], [quantity], [price]) VALUES (12, 3, 10, 240)
SET IDENTITY_INSERT [dbo].[order_line] OFF
GO
SET IDENTITY_INSERT [dbo].[Product] ON 

INSERT [dbo].[Product] ([product_id], [category_id], [name], [images], [description], [price], [sell_ID], [Quantity]) VALUES (2, 1, N'AK-47 | Vulcan', N'https://csgoskins.gg/social-images/eyJpbWFnZV91cmwiOiJodHRwczpcL1wvY2RuLmNzZ29za2lucy5nZ1wvcHVibGljXC91aWhcL2Zsb2F0c1wvYUhSMGNITTZMeTlqWkc0dVkzTm5iM05yYVc1ekxtZG5MM0IxWW14cFl5OXBiV0ZuWlhNdlpteHZZWFJ6TDNZeEwyRnJMVFEzTFhaMWJHTmhiaTh6TG5CdVp3LS1cL2F1dG9cL2F1dG9cLzg1XC9ub3RyaW1cLzM0OTU3ZjU3ZjUyZmY3MjY3YWMyMjVmZGQxY2IyZDU4LnBuZyIsImFzcGVjdF9yYXRpbyI6MS4zMzMzMzMzMzMzMzMzMzMzLCJzaWciOiJkYzM1NDBhZjNhMWZkNWU3ZDBjOGUwNDg0YzMzNjlkMyJ9.png', N'AK-47 | Vulcan was added to the Workshop on December 13, 2013, and appeared in the game on May 1, 2014, as part of The Huntsman Collection, which was released alongside “The Hunt Begins” update. The skin was created by jim´s.', 59.0000, 1, 5)
INSERT [dbo].[Product] ([product_id], [category_id], [name], [images], [description], [price], [sell_ID], [Quantity]) VALUES (3, 1, N'M4A4 | Poseidon', N'https://dgvdyislmj77y.cloudfront.net/eyJidWNrZXQiOiJ0cmFkZWl0LXdpa2kiLCJrZXkiOiJpbWFnZXMvaXRlbXMvbTRhNC1wb3NlaWRvbi0tZmFjdG9yeS1uZXcucG5nIiwiZWRpdHMiOnsicmVzaXplIjp7IndpZHRoIjoxMjAwLCJoZWlnaHQiOjEyMDAsImZpdCI6ImNvbnRhaW4iLCJiYWNrZ3JvdW5kIjoiIzI3MjczZiJ9LCJmbGF0dGVuIjp7ImJhY2tncm91bmQiOiIjMjcyNzNmIn0sIm92ZXJsYXlXaXRoIjp7ImJ1Y2tldCI6InRyYWRlaXQtd2lraSIsImtleSI6IndhdGVybWFyay1sb2dvLnBuZyIsIm9wdGlvbnMiOnsiZ3Jhdml0eSI6InNvdXRod2VzdCJ9fX19', N'M4A4 | Poseidon was added to the game on May 26, 2015, as part of The Gods and Monsters Collection, which was released alongside the start of Operation Bloodhound.', 120.0000, 1, 10)
INSERT [dbo].[Product] ([product_id], [category_id], [name], [images], [description], [price], [sell_ID], [Quantity]) VALUES (4, 1, N'M4A1-S | Welcome to the Jungle', N'https://csgoskins.gg/social-images/eyJpbWFnZV91cmwiOiJodHRwczpcL1wvY2RuLmNzZ29za2lucy5nZ1wvcHVibGljXC91aWhcL2Zsb2F0c1wvYUhSMGNITTZMeTlqWkc0dVkzTm5iM05yYVc1ekxtZG5MM0IxWW14cFl5OXBiV0ZuWlhNdlpteHZZWFJ6TDNZeEwyMDBZVEV0Y3kxM1pXeGpiMjFsTFhSdkxYUm9aUzFxZFc1bmJHVXZNeTV3Ym1jLVwvYXV0b1wvYXV0b1wvODVcL25vdHJpbVwvY2U0MWU4Y2UwMzU5YjhhOGMwZjVhZTg1N2U4MTZhYjkucG5nIiwiYXNwZWN0X3JhdGlvIjoxLjkxMDgyODAyNTQ3NzcwNywic2lnIjoiNjQxMWY5NTdmOWRhNmQxYzNjMDEyYWEyZjQxMDRjN2IifQ--.png', N'M4A1-S | Welcome to the Jungle was added to the game on December 3, 2020, as part of The Ancient Collection, which was released alongside the start of Operation Broken Fang.', 134.0000, 1, 4)
INSERT [dbo].[Product] ([product_id], [category_id], [name], [images], [description], [price], [sell_ID], [Quantity]) VALUES (5, 1, N'AWP | Gungnir', N'https://dgvdyislmj77y.cloudfront.net/eyJidWNrZXQiOiJ0cmFkZWl0LXdpa2kiLCJrZXkiOiJpbWFnZXMvaXRlbXMvYXdwLWd1bmduaXItLWZhY3RvcnktbmV3LnBuZyIsImVkaXRzIjp7InJlc2l6ZSI6eyJ3aWR0aCI6MTIwMCwiaGVpZ2h0IjoxMjAwLCJmaXQiOiJjb250YWluIiwiYmFja2dyb3VuZCI6IiMyNzI3M2YifSwiZmxhdHRlbiI6eyJiYWNrZ3JvdW5kIjoiIzI3MjczZiJ9LCJvdmVybGF5V2l0aCI6eyJidWNrZXQiOiJ0cmFkZWl0LXdpa2kiLCJrZXkiOiJ3YXRlcm1hcmstbG9nby5wbmciLCJvcHRpb25zIjp7ImdyYXZpdHkiOiJzb3V0aHdlc3QifX19fQ==', N'AWP | Gungnir was added to the game on November 18, 2019, as part of The Norse Collection, which was released alongside the start of Operation Shattered Web.', 150.0000, 1, 0)
INSERT [dbo].[Product] ([product_id], [category_id], [name], [images], [description], [price], [sell_ID], [Quantity]) VALUES (6, 2, N'Karambit | Doppler Sapphire', N'https://s-wiki.cs.money/wiki_sLfXhlc_preview.png', N'Karambit | Doppler Sapphire (Kara Sap) was added to the game on January 8, 2015, alongside the “Full Spectrum” update. The skin is available in all “Chroma” cases.', 1030.0000, 1, 10)
INSERT [dbo].[Product] ([product_id], [category_id], [name], [images], [description], [price], [sell_ID], [Quantity]) VALUES (7, 2, N' M9 Bayonet | Gamma Doppler Emerald', N'https://s-wiki.cs.money/wiki_0836f5bd8d7c730984a21fc64563a13c_preview.png', N'M9 Bayonet | Gamma Doppler Emerald (M9 Emerald) was added to the game on June 15, 2016, alongside the “Gamma Exposure” update. The skin is available in all “Gamma” cases.', 1200.0000, 1, 9)
INSERT [dbo].[Product] ([product_id], [category_id], [name], [images], [description], [price], [sell_ID], [Quantity]) VALUES (8, 2, N'Butterfly Knife | Doppler Ruby', N'https://lootknife.gg/wp-content/uploads/2022/06/1587-2_butterfly-ruby-1a.jpg', N'Butterfly Knife | Doppler Ruby (BFK Ruby) was added to the game on March 15, 2017, alongside the "Take a trip to the Canals" update. The skin is available in cases "Spectrum" and "Spectrum 2".', 2000.0000, 1, 10)
INSERT [dbo].[Product] ([product_id], [category_id], [name], [images], [description], [price], [sell_ID], [Quantity]) VALUES (9, 2, N'Nomad Knife | Fade
', N'https://s-wiki.cs.money/wiki_62360b1605edb68adf8538311b0f1202_preview.png', N'Nomad Knife | Fade was added to the game on November 18, 2019, as part of The Shattered Web Case, which was released alongside the start of Operation Shattered Web.', 990.0000, 1, 6)
INSERT [dbo].[Product] ([product_id], [category_id], [name], [images], [description], [price], [sell_ID], [Quantity]) VALUES (10, 3, N'Five-SeveN | Hyper Beast', N'https://csgoskins.gg/social-images/eyJpbWFnZV91cmwiOiJodHRwczpcL1wvY2RuLmNzZ29za2lucy5nZ1wvcHVibGljXC91aWhcL2Zsb2F0c1wvYUhSMGNITTZMeTlqWkc0dVkzTm5iM05yYVc1ekxtZG5MM0IxWW14cFl5OXBiV0ZuWlhNdlpteHZZWFJ6TDNZeEwyWnBkbVV0YzJWMlpXNHRhSGx3WlhJdFltVmhjM1F2TXk1d2JtYy1cL2F1dG9cL2F1dG9cLzg1XC9ub3RyaW1cL2UxNzk0ZDFlZWEzZGEzMGY0ZjM1YTczODIwMmJhZDkwLnBuZyIsImFzcGVjdF9yYXRpbyI6MS45MTA4MjgwMjU0Nzc3MDcsInNpZyI6ImZmNmYzNTBkMWQyMWEzMWRjZDcxMTY0NzMwNmRjMWNjIn0-.png', N'Five-SeveN | Hyper Beast was added to the game on May 23, 2017, as part of The Hydra Collection, which was released alongside the start of Operation Hydra. The skin was created by Renegade. and Baddrock.', 12.0000, 1, 10)
INSERT [dbo].[Product] ([product_id], [category_id], [name], [images], [description], [price], [sell_ID], [Quantity]) VALUES (12, 3, N'Tec-9 | Brass', N'https://csgoskins.gg/social-images/eyJpbWFnZV91cmwiOiJodHRwczpcL1wvY2RuLmNzZ29za2lucy5nZ1wvcHVibGljXC91aWhcL2Zsb2F0c1wvYUhSMGNITTZMeTlqWkc0dVkzTm5iM05yYVc1ekxtZG5MM0IxWW14cFl5OXBiV0ZuWlhNdlpteHZZWFJ6TDNZeEwzUmxZeTA1TFdKeVlYTnpMek11Y0c1blwvYXV0b1wvYXV0b1wvODVcL25vdHJpbVwvMDVlOWJlYjE0ZmViMGFhNTUzOWIwYTY2MDE3NWNjNjcucG5nIiwiYXNwZWN0X3JhdGlvIjoxLjkxMDgyODAyNTQ3NzcwNywic2lnIjoiNTRlN2Y0M2JlMDdiNDZhNDQ1NzYzZDY5MGI1YTI1YjAifQ--.png', N'Nune', 54.0000, 1, 10)
INSERT [dbo].[Product] ([product_id], [category_id], [name], [images], [description], [price], [sell_ID], [Quantity]) VALUES (13, 3, N'USP-S | Printstream
', N'https://www.csgodatabase.com/images/skins/USP-S_Printstream.png', N'USP-S | Printstream was added to the game on July 1, 2022, as part of The Recoil Collection, which was released alongside A New Cassssssse update. The skin was created by JTPNZ', 121.0000, 1, 10)
INSERT [dbo].[Product] ([product_id], [category_id], [name], [images], [description], [price], [sell_ID], [Quantity]) VALUES (16, 4, N'Moto Gloves | Spearmint
', N'https://csgoskins.gg/social-images/eyJpbWFnZV91cmwiOiJodHRwczpcL1wvY2RuLmNzZ29za2lucy5nZ1wvcHVibGljXC91aWhcL3Byb2R1Y3RzXC9hSFIwY0hNNkx5OWpaRzR1WTNObmIzTnJhVzV6TG1kbkwzQjFZbXhwWXk5cGJXRm5aWE12Y0hKdlpIVmpkSE12WVRFNVl6YzBNMkl3WkdNMU5HTmpPVFpoTnpNNE1EbGxZbU01T1RBd1lXTXZjR3hoZVhOcFpHVXVjRzVuXC8xNTAwXC9hdXRvXC84NVwvbm90cmltXC8yNjEyNjUwYzVlN2UxODJmODdkNzQxYjBjNzU4ZGMxNy5wbmciLCJhc3BlY3RfcmF0aW8iOjEsInNpZyI6IjVkODQ0Yzg3MzU1NDU4MjQ2NDQwOGMzZDljNDRiMWFiIn0-.png', N'Moto Gloves | Spearmint were added to the game on November 28, 2016. The gloves are available in The Glove Case and The Operation Hydra Case.', 500.0000, 1, 10)
INSERT [dbo].[Product] ([product_id], [category_id], [name], [images], [description], [price], [sell_ID], [Quantity]) VALUES (18, 2, N' Paracord Knife | Fade', N'https://csgoskins.gg/social-images/eyJpbWFnZV91cmwiOiJodHRwczpcL1wvY2RuLmNzZ29za2lucy5nZ1wvcHVibGljXC91aWhcL2Zsb2F0c1wvYUhSMGNITTZMeTlqWkc0dVkzTm5iM05yYVc1ekxtZG5MM0IxWW14cFl5OXBiV0ZuWlhNdlpteHZZWFJ6TDNZeEwzQmhjbUZqYjNKa0xXdHVhV1psTFhWeVltRnVMVzFoYzJ0bFpDODJMbkJ1WnctLVwvYXV0b1wvYXV0b1wvODVcL25vdHJpbVwvZDA0MWMwM2RkY2JhZDA1MzJlZDcxM2RmOTljODE3NmEucG5nIiwiYXNwZWN0X3JhdGlvIjoxLjkxMDgyODAyNTQ3NzcwNywic2lnIjoiNGE0ZGJhZTZlOWMwZGE0OGJkY2ZiMzQ0OTA1Y2Y5YTEifQ--.png', N'Paracord Knife | Fade was added to the game on November 18, 2019, as part of The Shattered Web Case, which was released alongside the start of Operation Shattered Web.', 1200.0000, 1, 10)
INSERT [dbo].[Product] ([product_id], [category_id], [name], [images], [description], [price], [sell_ID], [Quantity]) VALUES (20, 3, N'R8 Revolver | Banana Cannon', N'https://steamcdn-a.akamaihd.net/apps/730/icons/econ/default_generated/weapon_revolver_gs_r8_banana_light_large.50f0b729a36a405d48b41d58463234dbbd15b9cf.png', N'R8 Revolver | The Banana Cannon was added to the game on February 10, 2023, as part of the Revolution Collection, which was released alongside the Case, Capsule, Kit, Oh My! update. The skin was created by 123.', 8.0000, 1, 10)
INSERT [dbo].[Product] ([product_id], [category_id], [name], [images], [description], [price], [sell_ID], [Quantity]) VALUES (21, 1, N'SG 553 | Hazard Pay', N'https://e7.pngegg.com/pngimages/82/298/png-clipart-counter-strike-global-offensive-counter-strike-source-sig-sg-553-weapon-video-game-weapon-video-game-assault-rifle.png', N'https://e7.pngegg.com/pngimages/82/298/png-clipart-counter-strike-global-offensive-counter-strike-source-sig-sg-553-weapon-video-game-weapon-video-game-assault-rifle.png', 13.0000, 1, 10)
INSERT [dbo].[Product] ([product_id], [category_id], [name], [images], [description], [price], [sell_ID], [Quantity]) VALUES (22, 4, N'Specialist Gloves | Field Agent', N'https://csgoskins.gg/social-images/eyJpbWFnZV91cmwiOiJodHRwczpcL1wvY2RuLmNzZ29za2lucy5nZ1wvcHVibGljXC91aWhcL3Byb2R1Y3RzXC9hSFIwY0hNNkx5OWpaRzR1WTNObmIzTnJhVzV6TG1kbkwzQjFZbXhwWXk5cGJXRm5aWE12Y0hKdlpIVmpkSE12TlRBNFptWXdOalJrWW1ObE56SXlZbVpsWXpJek5UVTNOVEkyWWpobFl6TXZjR3hoZVhOcFpHVXVjRzVuXC8xNTAwXC9hdXRvXC84NVwvbm90cmltXC81NWZhNmYzZTJlMTVhZmQ4ZDgzNjE3MjJjMTA0NzE2OC5wbmciLCJhc3BlY3RfcmF0aW8iOjEsInNpZyI6IjQzZGU0MmZiMzNlNGEzYzAyMmFiY2NmYjYxM2IwMDA5In0-.png', N'Specialist Gloves | Field Agent were added to the game on December 3, 2020. The gloves are available in the Operation Broken Fang Case.', 1211.0000, 1, 10)
INSERT [dbo].[Product] ([product_id], [category_id], [name], [images], [description], [price], [sell_ID], [Quantity]) VALUES (23, 3, N'Dual Berettas | Duelist', N'https://w7.pngwing.com/pngs/438/876/png-transparent-counter-strike-global-offensive-dual-berettas-dualing-dragons-glock-18-cobalt-quartz-others.png', N'Dual Berettas | Duelist was added to the game on May 26, 2015, as part of The Chop Shop Collection, which was released alongside the start of Operation Bloodhound.', 87.0000, 1, 10)
INSERT [dbo].[Product] ([product_id], [category_id], [name], [images], [description], [price], [sell_ID], [Quantity]) VALUES (24, 4, N'Mom gloves', N'https://png.pngtree.com/element_our/20200610/ourlarge/pngtree-rubber-kitchen-gloves-image_2247648.jpg', N'Chuyen su dung de rua bat dua ', 100000000.0000, 1, NULL)
SET IDENTITY_INSERT [dbo].[Product] OFF
GO
SET IDENTITY_INSERT [dbo].[Users] ON 

INSERT [dbo].[Users] ([user_id], [account], [password], [admin], [username], [gender], [email], [phone], [isSell], [isAdmin]) VALUES (1, N'admin', N'123', N'ninh', N'ninhnori', 1, N'huhduhus@gmail.com', N'093828184', 1, 1)
INSERT [dbo].[Users] ([user_id], [account], [password], [admin], [username], [gender], [email], [phone], [isSell], [isAdmin]) VALUES (2, N'admin1', N'123', N'duong', N'adam', 0, N'jfjfjdjijfifj@gmail.com', N'038874744', 0, 1)
INSERT [dbo].[Users] ([user_id], [account], [password], [admin], [username], [gender], [email], [phone], [isSell], [isAdmin]) VALUES (3, N'mena', N'123', N'men', N'menaso', 1, N'kokdokdsok@gmail.com', N'013049219', 0, 0)
INSERT [dbo].[Users] ([user_id], [account], [password], [admin], [username], [gender], [email], [phone], [isSell], [isAdmin]) VALUES (4, N'abc', N'123', N'aaa', N'hungngu', 1, N'hunggay@gmail.com', N'69696969', 0, 0)
INSERT [dbo].[Users] ([user_id], [account], [password], [admin], [username], [gender], [email], [phone], [isSell], [isAdmin]) VALUES (5, N'duong', N'123', N'admin', N'duongthanh', 0, N'jijsadij@gmail.com', N'1288181', 0, 0)
INSERT [dbo].[Users] ([user_id], [account], [password], [admin], [username], [gender], [email], [phone], [isSell], [isAdmin]) VALUES (6, N'anh', N'123', NULL, NULL, NULL, N'jsjjajaj@gmail.com', NULL, NULL, NULL)
INSERT [dbo].[Users] ([user_id], [account], [password], [admin], [username], [gender], [email], [phone], [isSell], [isAdmin]) VALUES (7, N'anhduy', N'1234', NULL, NULL, NULL, N'jijdijisjdi@gmail.com', NULL, NULL, NULL)
INSERT [dbo].[Users] ([user_id], [account], [password], [admin], [username], [gender], [email], [phone], [isSell], [isAdmin]) VALUES (8, N'hung', N'123', NULL, NULL, NULL, N'jisjdididjj@gmail.com', NULL, NULL, NULL)
INSERT [dbo].[Users] ([user_id], [account], [password], [admin], [username], [gender], [email], [phone], [isSell], [isAdmin]) VALUES (9, N'nam', N'123', N'admin', N'ashduhd', 1, N'djiajiji@gmail.com', N'2981818', 0, 0)
INSERT [dbo].[Users] ([user_id], [account], [password], [admin], [username], [gender], [email], [phone], [isSell], [isAdmin]) VALUES (10, N'duy', N'chutchut', NULL, NULL, NULL, N'hueanhbeo@gmail.com', NULL, NULL, NULL)
INSERT [dbo].[Users] ([user_id], [account], [password], [admin], [username], [gender], [email], [phone], [isSell], [isAdmin]) VALUES (11, N'mama', N'123', NULL, NULL, NULL, N'sisiis@gmail.com', NULL, NULL, NULL)
INSERT [dbo].[Users] ([user_id], [account], [password], [admin], [username], [gender], [email], [phone], [isSell], [isAdmin]) VALUES (12, N'trang2k', N'123', NULL, NULL, NULL, N'djai@gmail.com', NULL, NULL, NULL)
INSERT [dbo].[Users] ([user_id], [account], [password], [admin], [username], [gender], [email], [phone], [isSell], [isAdmin]) VALUES (13, N'minh2k', N'123', NULL, NULL, NULL, N'sadjisdji@gmail.com', NULL, NULL, NULL)
INSERT [dbo].[Users] ([user_id], [account], [password], [admin], [username], [gender], [email], [phone], [isSell], [isAdmin]) VALUES (14, N'hung2k', N'123', NULL, NULL, NULL, N'asdjiji@gmail.com', NULL, NULL, NULL)
INSERT [dbo].[Users] ([user_id], [account], [password], [admin], [username], [gender], [email], [phone], [isSell], [isAdmin]) VALUES (15, N'long2k', N'123', NULL, NULL, NULL, N'fjijiji@gmail.com', NULL, NULL, NULL)
INSERT [dbo].[Users] ([user_id], [account], [password], [admin], [username], [gender], [email], [phone], [isSell], [isAdmin]) VALUES (16, N'manh2k', N'123', NULL, NULL, NULL, N'sdjijijI@gmail.com', NULL, NULL, NULL)
INSERT [dbo].[Users] ([user_id], [account], [password], [admin], [username], [gender], [email], [phone], [isSell], [isAdmin]) VALUES (17, N'linh', N'123', NULL, NULL, NULL, N'sdjijdiji@gmai.com', NULL, NULL, NULL)
SET IDENTITY_INSERT [dbo].[Users] OFF
GO
ALTER TABLE [dbo].[order]  WITH CHECK ADD FOREIGN KEY([cid])
REFERENCES [dbo].[Users] ([user_id])
GO
ALTER TABLE [dbo].[order_line]  WITH CHECK ADD FOREIGN KEY([pid])
REFERENCES [dbo].[Product] ([product_id])
GO
ALTER TABLE [dbo].[order_line]  WITH CHECK ADD  CONSTRAINT [FK_order_line_order] FOREIGN KEY([oid])
REFERENCES [dbo].[order] ([id])
GO
ALTER TABLE [dbo].[order_line] CHECK CONSTRAINT [FK_order_line_order]
GO
ALTER TABLE [dbo].[Product]  WITH CHECK ADD  CONSTRAINT [FK_Product_Categories] FOREIGN KEY([category_id])
REFERENCES [dbo].[Categories] ([category_id])
GO
ALTER TABLE [dbo].[Product] CHECK CONSTRAINT [FK_Product_Categories]
GO
