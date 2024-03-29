USE [master]
GO
/****** Object:  Database [Hospital]    Script Date: 10.08.2019 16:39:35 ******/
CREATE DATABASE [Hospital]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Hospital', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\Hospital.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'Hospital_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\Hospital_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [Hospital] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Hospital].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Hospital] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Hospital] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Hospital] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Hospital] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Hospital] SET ARITHABORT OFF 
GO
ALTER DATABASE [Hospital] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Hospital] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Hospital] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Hospital] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Hospital] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Hospital] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Hospital] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Hospital] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Hospital] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Hospital] SET  ENABLE_BROKER 
GO
ALTER DATABASE [Hospital] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Hospital] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Hospital] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Hospital] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Hospital] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Hospital] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Hospital] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Hospital] SET RECOVERY FULL 
GO
ALTER DATABASE [Hospital] SET  MULTI_USER 
GO
ALTER DATABASE [Hospital] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Hospital] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Hospital] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Hospital] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [Hospital] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'Hospital', N'ON'
GO
ALTER DATABASE [Hospital] SET QUERY_STORE = OFF
GO
USE [Hospital]
GO
/****** Object:  Table [dbo].[Admin]    Script Date: 10.08.2019 16:39:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Admin](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](255) NULL,
	[Username] [nvarchar](255) NULL,
	[Password] [nvarchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Allergies]    Script Date: 10.08.2019 16:39:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Allergies](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[NameAz] [nvarchar](255) NULL,
	[NameEng] [nvarchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Appointments]    Script Date: 10.08.2019 16:39:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Appointments](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](255) NULL,
	[Time] [datetime] NULL,
	[Phone] [nvarchar](255) NULL,
	[DoctorId] [int] NULL,
	[DepartmentId] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Departments]    Script Date: 10.08.2019 16:39:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Departments](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[NameAz] [nvarchar](255) NULL,
	[NameEng] [nvarchar](255) NULL,
	[Icon] [nvarchar](255) NULL,
	[Photo] [nvarchar](255) NULL,
	[DesAz] [nvarchar](255) NULL,
	[DesEng] [nvarchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Doctors]    Script Date: 10.08.2019 16:39:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Doctors](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](255) NULL,
	[Surname] [nvarchar](255) NULL,
	[Phone] [nvarchar](255) NULL,
	[Address] [nvarchar](255) NULL,
	[WorkHours] [nvarchar](255) NULL,
	[Salary] [int] NULL,
	[DepartmentId] [int] NULL,
	[DesAz] [nvarchar](255) NULL,
	[DesEng] [nvarchar](255) NULL,
	[Photo] [nvarchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Gallery]    Script Date: 10.08.2019 16:39:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Gallery](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[NameAz] [nvarchar](255) NULL,
	[NameEng] [nvarchar](255) NULL,
	[Photo] [nvarchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Messages]    Script Date: 10.08.2019 16:39:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Messages](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](255) NULL,
	[Email] [nvarchar](255) NULL,
	[Phone] [nvarchar](255) NULL,
	[Message] [nvarchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Nurses]    Script Date: 10.08.2019 16:39:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Nurses](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](255) NULL,
	[Surname] [nvarchar](255) NULL,
	[Phone] [nvarchar](255) NULL,
	[Address] [nvarchar](255) NULL,
	[WorkHours] [nvarchar](255) NULL,
	[Salary] [int] NULL,
	[DoctorId] [int] NULL,
	[DepartmentId] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Patients]    Script Date: 10.08.2019 16:39:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Patients](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](255) NULL,
	[Surname] [nvarchar](255) NULL,
	[Phone] [nvarchar](255) NULL,
	[Address] [nvarchar](255) NULL,
	[Birthday] [date] NULL,
	[Payment] [int] NULL,
	[InspectionDate] [date] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Settings]    Script Date: 10.08.2019 16:39:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Settings](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Address] [nvarchar](255) NULL,
	[Email] [nvarchar](255) NULL,
	[Phone] [nvarchar](255) NULL,
	[WorkHours] [nvarchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Vaccines]    Script Date: 10.08.2019 16:39:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Vaccines](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Admin] ON 

INSERT [dbo].[Admin] ([Id], [Name], [Username], [Password]) VALUES (1, N'Rauf Allahverdiyev', N'rauf', N'8B26A2BAACC2118AFC1860C842CD2A9C')
SET IDENTITY_INSERT [dbo].[Admin] OFF
SET IDENTITY_INSERT [dbo].[Allergies] ON 

INSERT [dbo].[Allergies] ([Id], [NameAz], [NameEng]) VALUES (2, N'Allergiya 1', N'Allergy 1')
INSERT [dbo].[Allergies] ([Id], [NameAz], [NameEng]) VALUES (3, N'Allergiya 2', N'Allergy 2')
SET IDENTITY_INSERT [dbo].[Allergies] OFF
SET IDENTITY_INSERT [dbo].[Appointments] ON 

INSERT [dbo].[Appointments] ([Id], [Name], [Time], [Phone], [DoctorId], [DepartmentId]) VALUES (1, N'Rauf Allahverdiyev', CAST(N'2019-08-03T00:00:00.000' AS DateTime), N'+994 50 850 75 75', 1, 3)
INSERT [dbo].[Appointments] ([Id], [Name], [Time], [Phone], [DoctorId], [DepartmentId]) VALUES (2, N'Rauf Allahverdiyev', CAST(N'2019-08-04T00:00:00.000' AS DateTime), N'+994 50 850 75 75', 1, 1)
INSERT [dbo].[Appointments] ([Id], [Name], [Time], [Phone], [DoctorId], [DepartmentId]) VALUES (3, N'John Doe', CAST(N'2019-08-31T00:00:00.000' AS DateTime), N'+1 (555) 500-0000', 1, 3)
INSERT [dbo].[Appointments] ([Id], [Name], [Time], [Phone], [DoctorId], [DepartmentId]) VALUES (4, N'Adam Smith', CAST(N'2019-09-01T00:00:00.000' AS DateTime), N'+123333', 2, 1)
INSERT [dbo].[Appointments] ([Id], [Name], [Time], [Phone], [DoctorId], [DepartmentId]) VALUES (5, N'rrrrrrrrrrrrrrrrr', CAST(N'2019-08-18T00:00:00.000' AS DateTime), N'+994 50 850 75 75', 1, 1)
SET IDENTITY_INSERT [dbo].[Appointments] OFF
SET IDENTITY_INSERT [dbo].[Departments] ON 

INSERT [dbo].[Departments] ([Id], [NameAz], [NameEng], [Icon], [Photo], [DesAz], [DesEng]) VALUES (1, N'Kardiologiya', N'Cardiology', N'fas fa-heartbeat', N'20190725011818908dep1.jpg', N'Ürək problemlərinin həll edilməsi , müayinəsi və müalicəsi.', N'Inspection of heart problems, solution of much tiringness')
INSERT [dbo].[Departments] ([Id], [NameAz], [NameEng], [Icon], [Photo], [DesAz], [DesEng]) VALUES (3, N'Stomotologiya', N'Dental', N'fas fa-teeth-open', N'20190725012553755dep2.jpg', N'Uşaqları qorxutmadan dişlərini müalicə etmək bizim vəzifəmizdir.', N'Healing childrens'' teeth without scaring them is our duty.')
INSERT [dbo].[Departments] ([Id], [NameAz], [NameEng], [Icon], [Photo], [DesAz], [DesEng]) VALUES (4, N'Oftalmologiya', N'Ophthalmology', N'far fa-eye', N'20190810043441245dep4.jpg', N'Göz problemlərinin həll edilməsi , müayinəsi və müalicəsi.', N'Inspection of eye problems,eye blur.')
INSERT [dbo].[Departments] ([Id], [NameAz], [NameEng], [Icon], [Photo], [DesAz], [DesEng]) VALUES (6, N'Nevrologiya', N'Neurology', N'fas fa-brain ', N'20190810033529654dep3.jpg', N'Sinir problemlərinin həll edilməsi , müayinəsi və müalicəsi.', N'Inspection of nerve problems, solution of much tiringness')
SET IDENTITY_INSERT [dbo].[Departments] OFF
SET IDENTITY_INSERT [dbo].[Doctors] ON 

INSERT [dbo].[Doctors] ([Id], [Name], [Surname], [Phone], [Address], [WorkHours], [Salary], [DepartmentId], [DesAz], [DesEng], [Photo]) VALUES (1, N'Veronica', N'Didone', N'+1 (530) 900-0009', N'NYC Fifth Avenue', N'Mon-Sat: 11:00 - 18:00', 13000, 3, N'Dr. Veronica Didone hamının üstünlük verdiyi həkimlərdəndir.', N'Dr. Veronica Didone is a doctor that everyone prefers.', N'20190730011504223doctor1.jpg')
INSERT [dbo].[Doctors] ([Id], [Name], [Surname], [Phone], [Address], [WorkHours], [Salary], [DepartmentId], [DesAz], [DesEng], [Photo]) VALUES (2, N'Hooman', N'Azimi', N'+1 (530) 100-0000', N'Brooklyn', N'Mon-Sat: 11:00 - 18:00', 10000, 1, N'Dr. Hooman Azimi hamının üstünlük verdiyi həkimlərdəndir.', N'Dr. Hooman Azimi is a doctor that everyone prefers.', N'20190730011430062doctor2.jpg')
INSERT [dbo].[Doctors] ([Id], [Name], [Surname], [Phone], [Address], [WorkHours], [Salary], [DepartmentId], [DesAz], [DesEng], [Photo]) VALUES (3, N'Lisa', N'Sanders', N'+1 (530) 300-0000', N'Santa Monica', N'Mon-Sat: 11:00 - 18:00', 8000, 4, N'Dr. Lisa Sanders hamının üstünlük verdiyi həkimlərdəndir.', N'Dr. Lisa Sanders is a doctor that everyone prefers.', N'20190730011720798doctor3.jpg')
SET IDENTITY_INSERT [dbo].[Doctors] OFF
SET IDENTITY_INSERT [dbo].[Gallery] ON 

INSERT [dbo].[Gallery] ([Id], [NameAz], [NameEng], [Photo]) VALUES (3, N'Xəstə otağı', N'Patient Room', N'20190724032906940facility-stay.jpg')
INSERT [dbo].[Gallery] ([Id], [NameAz], [NameEng], [Photo]) VALUES (4, N'Neyro Cərrahiyyə otağı', N'Neurology Room', N'20190724033305518Nephrologist-Care.jpg')
SET IDENTITY_INSERT [dbo].[Gallery] OFF
SET IDENTITY_INSERT [dbo].[Messages] ON 

INSERT [dbo].[Messages] ([Id], [Name], [Email], [Phone], [Message]) VALUES (1, N'Rauf Allahverdiyev', N'raufsa@code.edu.az', N'+994 50 850 75 75', N'<h1><strong>I am very satisfied with your service !</strong></h1>
')
INSERT [dbo].[Messages] ([Id], [Name], [Email], [Phone], [Message]) VALUES (2, N'Nihad Teymurlu', N'nihad@code.edu.az', N'+994 51 491 38 00 ', N'<p>I am Nihad</p>
')
INSERT [dbo].[Messages] ([Id], [Name], [Email], [Phone], [Message]) VALUES (3, N'Rauf Allahverdiyev', N'raufsa@code.edu.az', N'+994 50 850 75 75', N'<p>asdadsds</p>
')
INSERT [dbo].[Messages] ([Id], [Name], [Email], [Phone], [Message]) VALUES (4, N'sdfsdfsdf', N'raufsa@code.edu.az', N'+123123132', N'<p>asdassd</p>
')
SET IDENTITY_INSERT [dbo].[Messages] OFF
SET IDENTITY_INSERT [dbo].[Nurses] ON 

INSERT [dbo].[Nurses] ([Id], [Name], [Surname], [Phone], [Address], [WorkHours], [Salary], [DoctorId], [DepartmentId]) VALUES (2, N'Adam ', N'Smith', N'+1 (530) 100-0000', N'9400 Santa Monica Blvd Suite 102, Beverly Hills, CA 90210, USA', N'Mon-Sat: 11:00 - 18:00', 4000, 1, 3)
SET IDENTITY_INSERT [dbo].[Nurses] OFF
SET IDENTITY_INSERT [dbo].[Settings] ON 

INSERT [dbo].[Settings] ([Id], [Address], [Email], [Phone], [WorkHours]) VALUES (1, N'9400 Santa Monica Blvd Suite 102, Beverly Hills, CA 90210, USA', N'Hospital@Hospital.com', N'+333 444 55 66', N'Mon-Fri 9:00 - 00:00 / Sat-Sun  11:00 - 10:00')
SET IDENTITY_INSERT [dbo].[Settings] OFF
SET IDENTITY_INSERT [dbo].[Vaccines] ON 

INSERT [dbo].[Vaccines] ([Id], [Name]) VALUES (2, N'Vaccine 1')
SET IDENTITY_INSERT [dbo].[Vaccines] OFF
ALTER TABLE [dbo].[Appointments]  WITH CHECK ADD FOREIGN KEY([DepartmentId])
REFERENCES [dbo].[Departments] ([Id])
GO
ALTER TABLE [dbo].[Appointments]  WITH CHECK ADD FOREIGN KEY([DoctorId])
REFERENCES [dbo].[Doctors] ([Id])
GO
ALTER TABLE [dbo].[Doctors]  WITH CHECK ADD FOREIGN KEY([DepartmentId])
REFERENCES [dbo].[Departments] ([Id])
GO
ALTER TABLE [dbo].[Nurses]  WITH CHECK ADD FOREIGN KEY([DepartmentId])
REFERENCES [dbo].[Departments] ([Id])
GO
ALTER TABLE [dbo].[Nurses]  WITH CHECK ADD FOREIGN KEY([DoctorId])
REFERENCES [dbo].[Doctors] ([Id])
GO
USE [master]
GO
ALTER DATABASE [Hospital] SET  READ_WRITE 
GO
