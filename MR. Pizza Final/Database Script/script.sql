USE [master]
GO
/****** Object:  Database [Shopping]    Script Date: 1/16/2018 4:35:43 PM ******/
CREATE DATABASE [Shopping]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Shopping', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL11.MSSQLSERVER\MSSQL\DATA\Shopping.mdf' , SIZE = 5120KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'Shopping_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL11.MSSQLSERVER\MSSQL\DATA\Shopping_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [Shopping] SET COMPATIBILITY_LEVEL = 110
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Shopping].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Shopping] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Shopping] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Shopping] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Shopping] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Shopping] SET ARITHABORT OFF 
GO
ALTER DATABASE [Shopping] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [Shopping] SET AUTO_CREATE_STATISTICS ON 
GO
ALTER DATABASE [Shopping] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Shopping] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Shopping] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Shopping] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Shopping] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Shopping] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Shopping] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Shopping] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Shopping] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Shopping] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Shopping] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Shopping] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Shopping] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Shopping] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Shopping] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Shopping] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Shopping] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [Shopping] SET  MULTI_USER 
GO
ALTER DATABASE [Shopping] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Shopping] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Shopping] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Shopping] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
USE [Shopping]
GO
/****** Object:  Table [dbo].[cart_product]    Script Date: 1/16/2018 4:35:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[cart_product](
	[o_id] [int] IDENTITY(1,1) NOT NULL,
	[user_id] [int] NULL,
	[user_name] [varchar](100) NULL,
	[product_id] [varchar](1000) NULL,
	[Product_name] [varchar](1000) NULL,
	[brand] [varchar](100) NULL,
	[image] [varchar](1000) NULL,
	[quantity] [int] NULL,
	[price] [int] NULL,
 CONSTRAINT [PK_cart_product] PRIMARY KEY CLUSTERED 
(
	[o_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[login_data]    Script Date: 1/16/2018 4:35:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[login_data](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [varchar](80) NOT NULL,
	[fullname] [varchar](80) NULL,
	[password] [varchar](80) NULL,
	[role] [varchar](10) NULL,
	[address] [varchar](120) NULL,
	[mobile_no] [varchar](15) NULL,
	[email] [varchar](80) NULL,
	[answer] [varchar](80) NULL,
PRIMARY KEY CLUSTERED 
(
	[name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[main_order]    Script Date: 1/16/2018 4:35:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[main_order](
	[order_id] [int] IDENTITY(1,1) NOT NULL,
	[user_id] [int] NULL,
	[user_name] [varchar](100) NULL,
	[product_id] [varchar](100) NULL,
	[email_address] [varchar](50) NULL,
	[mobile_no] [varchar](10) NULL,
	[payment_type] [varchar](30) NULL,
	[address] [varchar](1500) NULL,
 CONSTRAINT [PK_main_order] PRIMARY KEY CLUSTERED 
(
	[order_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[main_product]    Script Date: 1/16/2018 4:35:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[main_product](
	[P_ID] [int] IDENTITY(1,1) NOT NULL,
	[Product_name] [varchar](500) NULL,
	[MRP] [int] NULL,
	[Our_Prize] [int] NULL,
	[Discount] [int] NULL,
	[Brand] [varchar](100) NULL,
	[Brand_image] [varchar](500) NULL,
	[Type_of_product] [varchar](100) NULL,
	[Imagepath1] [varchar](500) NULL,
	[Imagepath2] [varchar](500) NULL,
	[Imagepath3] [varchar](500) NULL,
	[Imagepath4] [varchar](500) NULL,
	[Detail] [varchar](1500) NULL,
	[stock] [int] NULL,
	[new_arrival] [int] NULL,
	[best_seller] [int] NULL,
	[best_offer] [int] NULL,
 CONSTRAINT [PK_main_product] PRIMARY KEY CLUSTERED 
(
	[P_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[cart_product] ON 

INSERT [dbo].[cart_product] ([o_id], [user_id], [user_name], [product_id], [Product_name], [brand], [image], [quantity], [price]) VALUES (5, 0, N'', N'48', N'BBQ Chicken Classic Large', N'12 inch', N'~/Product/1e79b288-56b8-4003-a72e-ad4cec03209f.jpg', 1, 1500)
INSERT [dbo].[cart_product] ([o_id], [user_id], [user_name], [product_id], [Product_name], [brand], [image], [quantity], [price]) VALUES (6, 1, N'admin', N'48', N'BBQ Chicken Classic Large', N'12 inch', N'~/Product/1e79b288-56b8-4003-a72e-ad4cec03209f.jpg', 1, 1500)
INSERT [dbo].[cart_product] ([o_id], [user_id], [user_name], [product_id], [Product_name], [brand], [image], [quantity], [price]) VALUES (7, 1, N'admin', N'61', N'Grilled Cheese Pizza', N'12 inch', N'~/Product/7808b911-7266-4829-ad7a-b3fd451f0b43.jpg', 1, 1800)
INSERT [dbo].[cart_product] ([o_id], [user_id], [user_name], [product_id], [Product_name], [brand], [image], [quantity], [price]) VALUES (8, 0, N'', N'61', N'Grilled Cheese Pizza', N'12 inch', N'~/Product/7808b911-7266-4829-ad7a-b3fd451f0b43.jpg', 1, 1800)
SET IDENTITY_INSERT [dbo].[cart_product] OFF
SET IDENTITY_INSERT [dbo].[login_data] ON 

INSERT [dbo].[login_data] ([id], [name], [fullname], [password], [role], [address], [mobile_no], [email], [answer]) VALUES (1, N'admin', N'System Admin', N'admin', N'admin', N'dhaka', N'1111111111', N'admin@email.com', N'blue')
INSERT [dbo].[login_data] ([id], [name], [fullname], [password], [role], [address], [mobile_no], [email], [answer]) VALUES (4, N'kaiser', N'Shahed Kaiser', N'123456', N'user', N'dhaka', N'0000000000', N'shahedxy@gmail.com', N'black')
SET IDENTITY_INSERT [dbo].[login_data] OFF
SET IDENTITY_INSERT [dbo].[main_order] ON 

INSERT [dbo].[main_order] ([order_id], [user_id], [user_name], [product_id], [email_address], [mobile_no], [payment_type], [address]) VALUES (3, 1, N'admin', N'48', N'admin@email.com', N'1111111111', N'Cash', N'dhaka')
SET IDENTITY_INSERT [dbo].[main_order] OFF
SET IDENTITY_INSERT [dbo].[main_product] ON 

INSERT [dbo].[main_product] ([P_ID], [Product_name], [MRP], [Our_Prize], [Discount], [Brand], [Brand_image], [Type_of_product], [Imagepath1], [Imagepath2], [Imagepath3], [Imagepath4], [Detail], [stock], [new_arrival], [best_seller], [best_offer]) VALUES (48, N'BBQ Chicken Classic Large', 1500, 1200, 300, N'12 inch', N'~/Product/1e79b288-56b8-4003-a72e-ad4cec03209f.jpg', N'ChickenPizza', N'~/Product_Img/74262.jpg', N'~/Product_Img/179732_640x428.jpg', N'~/Product_Img/BBQ_Chicken_Pizza_600.jpg', N'~/Product_Img/bbq-chicken-pizza.jpg', N'Finely cut chicken breast pieces blended in BBQ flavored sauce topped with red onion rings and fresh garden capsicum,mushroom and black olive', 12, 1, 1, 1)
INSERT [dbo].[main_product] ([P_ID], [Product_name], [MRP], [Our_Prize], [Discount], [Brand], [Brand_image], [Type_of_product], [Imagepath1], [Imagepath2], [Imagepath3], [Imagepath4], [Detail], [stock], [new_arrival], [best_seller], [best_offer]) VALUES (49, N'Chicken Fajita Pizza Large', 1400, 1300, 100, N'12 inch', N'~/Product/bbq-chicken-pizza-after-cooking-12-minutes-copy.jpg', N'ChickenPizza', N'~/Product_Img/buffalo-chicken-pizza.jpg', N'~/Product_Img/Chicken-Pizza_exps30800_FM143298B03_11_8bC_RMS.jpg', N'~/Product_Img/chicken-pizza-ck-642258-x.jpg', N'~/Product_Img/Ground-Beef-and-Green-Olives-Pizza-12.jpg', N'Succulent pieces of chicken cooked with fajita spices,topped with green capsicum,fresh onions,black olives,cilantro and fresh mozarella cheese', 18, 1, 1, 1)
INSERT [dbo].[main_product] ([P_ID], [Product_name], [MRP], [Our_Prize], [Discount], [Brand], [Brand_image], [Type_of_product], [Imagepath1], [Imagepath2], [Imagepath3], [Imagepath4], [Detail], [stock], [new_arrival], [best_seller], [best_offer]) VALUES (50, N'Chicken Tandoori Pizza Large', 1800, 1500, 300, N'12 inch', N'~/Product/tandoorichickenhero.jpg', N'ChickenPizza', N'~/Product_Img/sweet-chili-garlic-chicken-pizza-22.jpg', N'~/Product_Img/pizza-with-ground-beef.jpg', N'~/Product_Img/Ground-Beef-and-Green-Olives-Pizza-12.jpg', N'~/Product_Img/chicken-pizza-ck-642258-x.jpg', N'Tender pieces of chicken breast fillet flavored with original tandoori seasoning and topped with red onion rings and fresh green cilantro', 10, 1, 1, 1)
INSERT [dbo].[main_product] ([P_ID], [Product_name], [MRP], [Our_Prize], [Discount], [Brand], [Brand_image], [Type_of_product], [Imagepath1], [Imagepath2], [Imagepath3], [Imagepath4], [Detail], [stock], [new_arrival], [best_seller], [best_offer]) VALUES (51, N'Grilled Chicken Pizza', 1500, 1200, 300, N'12 inch', N'~/Product/Ground-Beef-and-Green-Olives-Pizza-12.jpg', N'ChickenPizza', N'~/Product_Img/BBQ_Chicken_Pizza_600.jpg', N'~/Product_Img/179732_640x428.jpg', N'~/Product_Img/sweet-chili-garlic-chicken-pizza-22.jpg', N'~/Product_Img/1e79b288-56b8-4003-a72e-ad4cec03209f.jpg', N'Finely cut pieces of grilled chicken mixed with onions,green bell pepper and diced tomatoes', 12, 1, 1, 1)
INSERT [dbo].[main_product] ([P_ID], [Product_name], [MRP], [Our_Prize], [Discount], [Brand], [Brand_image], [Type_of_product], [Imagepath1], [Imagepath2], [Imagepath3], [Imagepath4], [Detail], [stock], [new_arrival], [best_seller], [best_offer]) VALUES (56, N'Pepperoni', 1345, 1200, 145, N'8 inch', N'~/Product/beef-pepperoni-pizza.png', N'BeefPizza', N'~/Product_Img/1024_upper_7092.jpg', N'~/Product_Img/Ground-Beef-and-Green-Olives-Pizza-12 (1).jpg', N'~/Product_Img/e9cb9507-51e3-4d64-a175-0f2da78f84c5.jpg', N'~/Product_Img/meat-lovers--pizza.jpg', N'Premium pizza smothered with loads of pepperoni and assorted with two layers of 100% pure mozzarella cheese', 12, 1, 1, 1)
INSERT [dbo].[main_product] ([P_ID], [Product_name], [MRP], [Our_Prize], [Discount], [Brand], [Brand_image], [Type_of_product], [Imagepath1], [Imagepath2], [Imagepath3], [Imagepath4], [Detail], [stock], [new_arrival], [best_seller], [best_offer]) VALUES (57, N'Zesty Hot Pizza Large', 1200, 1000, 200, N'8 inch', N'~/Product/Sirloin-Pizza-LargeSFW.jpg', N'BeefPizza', N'~/Product_Img/e9cb9507-51e3-4d64-a175-0f2da78f84c5.jpg', N'~/Product_Img/beef-pepperoni-pizza.png', N'~/Product_Img/16942-1.jpeg', N'~/Product_Img/SpicyOrangeBeefPizza.jpg', N'It is a kind of pizza for the spice lovers,blended with loads of spice,tasty beef,finely cut onion,tomatoes, green chili and tons of mozzarella cheese', 18, 1, 1, 1)
INSERT [dbo].[main_product] ([P_ID], [Product_name], [MRP], [Our_Prize], [Discount], [Brand], [Brand_image], [Type_of_product], [Imagepath1], [Imagepath2], [Imagepath3], [Imagepath4], [Detail], [stock], [new_arrival], [best_seller], [best_offer]) VALUES (58, N'Meaty Max Pizza Large', 1500, 1400, 100, N'12 inch', N'~/Product/e9cb9507-51e3-4d64-a175-0f2da78f84c5.jpg', N'BeefPizza', N'~/Product_Img/beef-pepperoni-pizza.png', N'~/Product_Img/meat-lovers--pizza.jpg', N'~/Product_Img/16942-1.jpeg', N'~/Product_Img/1024_upper_7092.jpg', N'With tons of pepperoni,Italian sausage,beef and loads of cheddar and mozzarella cheese on your favorite crust', 10, 1, 1, 1)
INSERT [dbo].[main_product] ([P_ID], [Product_name], [MRP], [Our_Prize], [Discount], [Brand], [Brand_image], [Type_of_product], [Imagepath1], [Imagepath2], [Imagepath3], [Imagepath4], [Detail], [stock], [new_arrival], [best_seller], [best_offer]) VALUES (59, N'Pizza Margherita', 1200, 1000, 200, N'8 inch', N'~/Product/Cheese-Pizza (1).jpg', N'CheesePizza', N'~/Product_Img/1c17d8fe-0583-49a6-9001-62a51cb09669.jpg', N'~/Product_Img/threecheesepizza1_bakedbyrachel.jpg', N'~/Product_Img/mmmmm.jpg', N'~/Product_Img/Veg-Double-Cheese-Pizza.jpg', N'Steak sauce and topped with sliced Beef Steak.', 18, 1, 1, 1)
INSERT [dbo].[main_product] ([P_ID], [Product_name], [MRP], [Our_Prize], [Discount], [Brand], [Brand_image], [Type_of_product], [Imagepath1], [Imagepath2], [Imagepath3], [Imagepath4], [Detail], [stock], [new_arrival], [best_seller], [best_offer]) VALUES (60, N'Grilled Cheese Pizza', 1800, 1600, 200, N'12 inch', N'~/Product/7808b911-7266-4829-ad7a-b3fd451f0b43.jpg', N'ChickenPizza', N'~/Product_Img/mmmmm.jpg', N'~/Product_Img/threecheesepizza1_bakedbyrachel.jpg', N'~/Product_Img/Veg-Double-Cheese-Pizza.jpg', N'~/Product_Img/1c17d8fe-0583-49a6-9001-62a51cb09669.jpg', N'What could be better than combining the two ultimate comfort foods: grilled cheese and pizza?', 12, 1, 1, 1)
INSERT [dbo].[main_product] ([P_ID], [Product_name], [MRP], [Our_Prize], [Discount], [Brand], [Brand_image], [Type_of_product], [Imagepath1], [Imagepath2], [Imagepath3], [Imagepath4], [Detail], [stock], [new_arrival], [best_seller], [best_offer]) VALUES (61, N'Grilled Cheese Pizza', 1800, 1500, 300, N'12 inch', N'~/Product/7808b911-7266-4829-ad7a-b3fd451f0b43.jpg', N'CheesePizza', N'~/Product_Img/threecheesepizza1_bakedbyrachel.jpg', N'~/Product_Img/mmmmm.jpg', N'~/Product_Img/1c17d8fe-0583-49a6-9001-62a51cb09669.jpg', N'~/Product_Img/mushroom-cream-cheese-pizza_1980x1320-119613-1.jpg', N'What could be better than combining the two ultimate comfort foods: grilled cheese and pizza?', 13, 1, 1, 1)
SET IDENTITY_INSERT [dbo].[main_product] OFF
USE [master]
GO
ALTER DATABASE [Shopping] SET  READ_WRITE 
GO
