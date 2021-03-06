USE [master]
GO
/****** Object:  Database [Projet]    Script Date: 06/02/2018 08:42:31 ******/
CREATE DATABASE [Projet]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Projet', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\Projet.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'Projet_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\Projet_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [Projet] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Projet].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Projet] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Projet] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Projet] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Projet] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Projet] SET ARITHABORT OFF 
GO
ALTER DATABASE [Projet] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Projet] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Projet] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Projet] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Projet] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Projet] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Projet] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Projet] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Projet] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Projet] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Projet] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Projet] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Projet] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Projet] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Projet] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Projet] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Projet] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Projet] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [Projet] SET  MULTI_USER 
GO
ALTER DATABASE [Projet] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Projet] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Projet] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Projet] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [Projet] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [Projet] SET QUERY_STORE = OFF
GO
USE [Projet]
GO
ALTER DATABASE SCOPED CONFIGURATION SET IDENTITY_CACHE = ON;
GO
ALTER DATABASE SCOPED CONFIGURATION SET LEGACY_CARDINALITY_ESTIMATION = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET LEGACY_CARDINALITY_ESTIMATION = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET MAXDOP = 0;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET MAXDOP = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET PARAMETER_SNIFFING = ON;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET PARAMETER_SNIFFING = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET QUERY_OPTIMIZER_HOTFIXES = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET QUERY_OPTIMIZER_HOTFIXES = PRIMARY;
GO
USE [Projet]
GO
/****** Object:  Table [dbo].[Contact]    Script Date: 06/02/2018 08:42:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Contact](
	[nomContact] [varchar](50) NULL,
	[prenomContact] [varchar](50) NULL,
	[emailContact] [varchar](50) NULL,
	[messageContact] [varchar](250) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TChoix]    Script Date: 06/02/2018 08:42:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TChoix](
	[idChoix] [int] IDENTITY(1,1) NOT NULL,
	[nomChoix] [nvarchar](50) NULL,
	[idSondage] [int] NULL,
	[nbVoteChoix] [int] NULL,
 CONSTRAINT [PK_Choix] PRIMARY KEY CLUSTERED 
(
	[idChoix] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TSondage]    Script Date: 06/02/2018 08:42:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TSondage](
	[idSondage] [int] IDENTITY(1,1) NOT NULL,
	[nbVote] [int] NULL,
	[nomQuestion] [nvarchar](100) NULL,
	[lienResult] [varchar](50) NULL,
	[lienPartage] [varchar](50) NULL,
	[lienSuppr] [varchar](50) NULL,
	[choixMultiple] [bit] NULL,
	[actif] [bit] NULL,
	[dateSondage] [datetime] NULL,
 CONSTRAINT [PK_TSondage] PRIMARY KEY CLUSTERED 
(
	[idSondage] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Contact] ([nomContact], [prenomContact], [emailContact], [messageContact]) VALUES (N'Graf', N'Tim', N'cezfazef@azerfaz.ty', N'dfsgdfgsdfg')
INSERT [dbo].[Contact] ([nomContact], [prenomContact], [emailContact], [messageContact]) VALUES (N'Bonjour', N'Salut', N'cestmoi@lul.com', N'Coucou')
SET IDENTITY_INSERT [dbo].[TChoix] ON 

INSERT [dbo].[TChoix] ([idChoix], [nomChoix], [idSondage], [nbVoteChoix]) VALUES (268, N'Allemand', 78, 0)
INSERT [dbo].[TChoix] ([idChoix], [nomChoix], [idSondage], [nbVoteChoix]) VALUES (269, N'Anglais', 78, 0)
INSERT [dbo].[TChoix] ([idChoix], [nomChoix], [idSondage], [nbVoteChoix]) VALUES (270, N'Français', 78, 1)
INSERT [dbo].[TChoix] ([idChoix], [nomChoix], [idSondage], [nbVoteChoix]) VALUES (271, N'Polonais', 78, 0)
INSERT [dbo].[TChoix] ([idChoix], [nomChoix], [idSondage], [nbVoteChoix]) VALUES (272, N'Jupiter', 79, 0)
INSERT [dbo].[TChoix] ([idChoix], [nomChoix], [idSondage], [nbVoteChoix]) VALUES (273, N'Uranus', 79, 0)
INSERT [dbo].[TChoix] ([idChoix], [nomChoix], [idSondage], [nbVoteChoix]) VALUES (274, N'Venus', 79, 0)
INSERT [dbo].[TChoix] ([idChoix], [nomChoix], [idSondage], [nbVoteChoix]) VALUES (275, N'Saturne', 79, 0)
INSERT [dbo].[TChoix] ([idChoix], [nomChoix], [idSondage], [nbVoteChoix]) VALUES (276, N'Sond-ageDePierre', 80, 12)
INSERT [dbo].[TChoix] ([idChoix], [nomChoix], [idSondage], [nbVoteChoix]) VALUES (277, N'Sond-ageDePierre', 80, 2)
INSERT [dbo].[TChoix] ([idChoix], [nomChoix], [idSondage], [nbVoteChoix]) VALUES (278, N'Sond-ageDePierre', 80, 0)
INSERT [dbo].[TChoix] ([idChoix], [nomChoix], [idSondage], [nbVoteChoix]) VALUES (279, N'Sond-ageDePierre', 80, 0)
INSERT [dbo].[TChoix] ([idChoix], [nomChoix], [idSondage], [nbVoteChoix]) VALUES (280, N'Trop long', 81, 1)
INSERT [dbo].[TChoix] ([idChoix], [nomChoix], [idSondage], [nbVoteChoix]) VALUES (281, N'30cm', 81, 0)
INSERT [dbo].[TChoix] ([idChoix], [nomChoix], [idSondage], [nbVoteChoix]) VALUES (282, N'Terrain de foot', 81, 0)
INSERT [dbo].[TChoix] ([idChoix], [nomChoix], [idSondage], [nbVoteChoix]) VALUES (283, N'2mm', 81, 0)
INSERT [dbo].[TChoix] ([idChoix], [nomChoix], [idSondage], [nbVoteChoix]) VALUES (284, N'Vladimir Poutine', 82, 0)
INSERT [dbo].[TChoix] ([idChoix], [nomChoix], [idSondage], [nbVoteChoix]) VALUES (285, N'Vladimir Poutine', 82, 1)
INSERT [dbo].[TChoix] ([idChoix], [nomChoix], [idSondage], [nbVoteChoix]) VALUES (286, N'Vladimir Poutine', 82, 0)
INSERT [dbo].[TChoix] ([idChoix], [nomChoix], [idSondage], [nbVoteChoix]) VALUES (287, N'Vladimir Poutine', 82, 0)
INSERT [dbo].[TChoix] ([idChoix], [nomChoix], [idSondage], [nbVoteChoix]) VALUES (288, N'Eau', 83, 0)
INSERT [dbo].[TChoix] ([idChoix], [nomChoix], [idSondage], [nbVoteChoix]) VALUES (289, N'Coca', 83, 1)
INSERT [dbo].[TChoix] ([idChoix], [nomChoix], [idSondage], [nbVoteChoix]) VALUES (290, N'Jus d''orange', 83, 0)
INSERT [dbo].[TChoix] ([idChoix], [nomChoix], [idSondage], [nbVoteChoix]) VALUES (291, N'Jus de pomme', 83, 0)
INSERT [dbo].[TChoix] ([idChoix], [nomChoix], [idSondage], [nbVoteChoix]) VALUES (292, N'Superman', 84, 0)
INSERT [dbo].[TChoix] ([idChoix], [nomChoix], [idSondage], [nbVoteChoix]) VALUES (293, N'Batman', 84, 0)
INSERT [dbo].[TChoix] ([idChoix], [nomChoix], [idSondage], [nbVoteChoix]) VALUES (294, N'Deadpool', 84, 0)
INSERT [dbo].[TChoix] ([idChoix], [nomChoix], [idSondage], [nbVoteChoix]) VALUES (295, N'Spiderman', 84, 0)
INSERT [dbo].[TChoix] ([idChoix], [nomChoix], [idSondage], [nbVoteChoix]) VALUES (296, N'Game of Thrones', 85, 1)
INSERT [dbo].[TChoix] ([idChoix], [nomChoix], [idSondage], [nbVoteChoix]) VALUES (297, N'Black Mirror', 85, 0)
INSERT [dbo].[TChoix] ([idChoix], [nomChoix], [idSondage], [nbVoteChoix]) VALUES (298, N'Vikings', 85, 0)
INSERT [dbo].[TChoix] ([idChoix], [nomChoix], [idSondage], [nbVoteChoix]) VALUES (299, N'Malcolm in the middle', 85, 0)
INSERT [dbo].[TChoix] ([idChoix], [nomChoix], [idSondage], [nbVoteChoix]) VALUES (300, N'Qui veut gagner des millions ?', 86, 0)
INSERT [dbo].[TChoix] ([idChoix], [nomChoix], [idSondage], [nbVoteChoix]) VALUES (301, N'La France a un incroyable talent', 86, 1)
INSERT [dbo].[TChoix] ([idChoix], [nomChoix], [idSondage], [nbVoteChoix]) VALUES (302, N'The Voice', 86, 0)
INSERT [dbo].[TChoix] ([idChoix], [nomChoix], [idSondage], [nbVoteChoix]) VALUES (303, N'Koh Lanta', 86, 1)
INSERT [dbo].[TChoix] ([idChoix], [nomChoix], [idSondage], [nbVoteChoix]) VALUES (304, N'Le Rouge et Noir', 87, 0)
INSERT [dbo].[TChoix] ([idChoix], [nomChoix], [idSondage], [nbVoteChoix]) VALUES (305, N'American Psycho', 87, 0)
INSERT [dbo].[TChoix] ([idChoix], [nomChoix], [idSondage], [nbVoteChoix]) VALUES (306, N'Ça', 87, 0)
INSERT [dbo].[TChoix] ([idChoix], [nomChoix], [idSondage], [nbVoteChoix]) VALUES (307, N'Le Seigneur des Anneaux', 87, 0)
INSERT [dbo].[TChoix] ([idChoix], [nomChoix], [idSondage], [nbVoteChoix]) VALUES (308, N'un carreau à la fois', 88, 0)
INSERT [dbo].[TChoix] ([idChoix], [nomChoix], [idSondage], [nbVoteChoix]) VALUES (309, N'tablette entière', 88, 1)
INSERT [dbo].[TChoix] ([idChoix], [nomChoix], [idSondage], [nbVoteChoix]) VALUES (310, N'juste les noisettes', 88, 0)
INSERT [dbo].[TChoix] ([idChoix], [nomChoix], [idSondage], [nbVoteChoix]) VALUES (311, N'par lignes', 88, 0)
INSERT [dbo].[TChoix] ([idChoix], [nomChoix], [idSondage], [nbVoteChoix]) VALUES (312, N'Fraise', 89, 0)
INSERT [dbo].[TChoix] ([idChoix], [nomChoix], [idSondage], [nbVoteChoix]) VALUES (313, N'Framboise', 89, 0)
INSERT [dbo].[TChoix] ([idChoix], [nomChoix], [idSondage], [nbVoteChoix]) VALUES (314, N'Cerise', 89, 0)
INSERT [dbo].[TChoix] ([idChoix], [nomChoix], [idSondage], [nbVoteChoix]) VALUES (315, N'Coing', 89, 0)
INSERT [dbo].[TChoix] ([idChoix], [nomChoix], [idSondage], [nbVoteChoix]) VALUES (316, N'Nord', 90, 0)
INSERT [dbo].[TChoix] ([idChoix], [nomChoix], [idSondage], [nbVoteChoix]) VALUES (317, N'Normandie', 90, 1)
INSERT [dbo].[TChoix] ([idChoix], [nomChoix], [idSondage], [nbVoteChoix]) VALUES (318, N'Bretagne', 90, 0)
INSERT [dbo].[TChoix] ([idChoix], [nomChoix], [idSondage], [nbVoteChoix]) VALUES (319, N'Auvergne', 90, 0)
INSERT [dbo].[TChoix] ([idChoix], [nomChoix], [idSondage], [nbVoteChoix]) VALUES (320, N'Travailler', 91, 1)
INSERT [dbo].[TChoix] ([idChoix], [nomChoix], [idSondage], [nbVoteChoix]) VALUES (321, N'Jouer', 91, 0)
INSERT [dbo].[TChoix] ([idChoix], [nomChoix], [idSondage], [nbVoteChoix]) VALUES (322, N'Coder', 91, 0)
INSERT [dbo].[TChoix] ([idChoix], [nomChoix], [idSondage], [nbVoteChoix]) VALUES (323, N'Dormir', 91, 0)
INSERT [dbo].[TChoix] ([idChoix], [nomChoix], [idSondage], [nbVoteChoix]) VALUES (324, N'Boxe', 92, 0)
INSERT [dbo].[TChoix] ([idChoix], [nomChoix], [idSondage], [nbVoteChoix]) VALUES (325, N'Natation', 92, 0)
INSERT [dbo].[TChoix] ([idChoix], [nomChoix], [idSondage], [nbVoteChoix]) VALUES (326, N'Tai chi', 92, 0)
INSERT [dbo].[TChoix] ([idChoix], [nomChoix], [idSondage], [nbVoteChoix]) VALUES (327, N'Equitation', 92, 0)
INSERT [dbo].[TChoix] ([idChoix], [nomChoix], [idSondage], [nbVoteChoix]) VALUES (328, N'Superbe', 93, 0)
INSERT [dbo].[TChoix] ([idChoix], [nomChoix], [idSondage], [nbVoteChoix]) VALUES (329, N'Nulle à chier', 93, 0)
INSERT [dbo].[TChoix] ([idChoix], [nomChoix], [idSondage], [nbVoteChoix]) VALUES (330, N'Illisible', 93, 0)
INSERT [dbo].[TChoix] ([idChoix], [nomChoix], [idSondage], [nbVoteChoix]) VALUES (331, N'A jeter', 93, 0)
INSERT [dbo].[TChoix] ([idChoix], [nomChoix], [idSondage], [nbVoteChoix]) VALUES (438, N'Test', 115, 0)
INSERT [dbo].[TChoix] ([idChoix], [nomChoix], [idSondage], [nbVoteChoix]) VALUES (439, N'Test', 115, 0)
INSERT [dbo].[TChoix] ([idChoix], [nomChoix], [idSondage], [nbVoteChoix]) VALUES (440, N'Test', 115, 0)
INSERT [dbo].[TChoix] ([idChoix], [nomChoix], [idSondage], [nbVoteChoix]) VALUES (441, N'Test', 115, 0)
INSERT [dbo].[TChoix] ([idChoix], [nomChoix], [idSondage], [nbVoteChoix]) VALUES (442, N'aaa', 116, 45)
INSERT [dbo].[TChoix] ([idChoix], [nomChoix], [idSondage], [nbVoteChoix]) VALUES (443, N'aaa', 116, 73)
INSERT [dbo].[TChoix] ([idChoix], [nomChoix], [idSondage], [nbVoteChoix]) VALUES (444, N'Rihanna', 117, 0)
INSERT [dbo].[TChoix] ([idChoix], [nomChoix], [idSondage], [nbVoteChoix]) VALUES (445, N'Olivia Wilde', 117, 1)
INSERT [dbo].[TChoix] ([idChoix], [nomChoix], [idSondage], [nbVoteChoix]) VALUES (446, N'Jennifer Lawrence', 117, 0)
INSERT [dbo].[TChoix] ([idChoix], [nomChoix], [idSondage], [nbVoteChoix]) VALUES (447, N'Shakira', 117, 0)
INSERT [dbo].[TChoix] ([idChoix], [nomChoix], [idSondage], [nbVoteChoix]) VALUES (448, N'France', 118, 1)
INSERT [dbo].[TChoix] ([idChoix], [nomChoix], [idSondage], [nbVoteChoix]) VALUES (449, N'Italie', 118, 0)
INSERT [dbo].[TChoix] ([idChoix], [nomChoix], [idSondage], [nbVoteChoix]) VALUES (450, N'Japon', 118, 0)
INSERT [dbo].[TChoix] ([idChoix], [nomChoix], [idSondage], [nbVoteChoix]) VALUES (451, N'Russie', 118, 0)
INSERT [dbo].[TChoix] ([idChoix], [nomChoix], [idSondage], [nbVoteChoix]) VALUES (452, N'Compote', 119, 0)
INSERT [dbo].[TChoix] ([idChoix], [nomChoix], [idSondage], [nbVoteChoix]) VALUES (453, N'Au four', 119, 0)
INSERT [dbo].[TChoix] ([idChoix], [nomChoix], [idSondage], [nbVoteChoix]) VALUES (454, N'En tarte', 119, 1)
INSERT [dbo].[TChoix] ([idChoix], [nomChoix], [idSondage], [nbVoteChoix]) VALUES (455, N'En jus', 119, 0)
SET IDENTITY_INSERT [dbo].[TChoix] OFF
SET IDENTITY_INSERT [dbo].[TSondage] ON 

INSERT [dbo].[TSondage] ([idSondage], [nbVote], [nomQuestion], [lienResult], [lienPartage], [lienSuppr], [choixMultiple], [actif], [dateSondage]) VALUES (78, 1, N'Quel est votre langage préféré ?', N'localhost:1093/Sondage/Resultat?id=78', N'localhost:1093/Sondage/Vote?id=78', N'7857943', 0, 1, CAST(N'2018-01-31T00:00:00.000' AS DateTime))
INSERT [dbo].[TSondage] ([idSondage], [nbVote], [nomQuestion], [lienResult], [lienPartage], [lienSuppr], [choixMultiple], [actif], [dateSondage]) VALUES (79, 0, N'Quelle est la septième planète du système solaire ?', N'localhost:1093/Sondage/Resultat?id=79', N'localhost:1093/Sondage/Vote?id=79', N'7953326', 0, 1, CAST(N'2018-01-31T00:00:00.000' AS DateTime))
INSERT [dbo].[TSondage] ([idSondage], [nbVote], [nomQuestion], [lienResult], [lienPartage], [lienSuppr], [choixMultiple], [actif], [dateSondage]) VALUES (80, 4, N'Quel est le meilleur site de sondage ?', N'localhost:1093/Sondage/Resultat?id=80', N'localhost:1093/Sondage/Vote?id=80', N'8032', 1, 1, CAST(N'2018-01-31T00:00:00.000' AS DateTime))
INSERT [dbo].[TSondage] ([idSondage], [nbVote], [nomQuestion], [lienResult], [lienPartage], [lienSuppr], [choixMultiple], [actif], [dateSondage]) VALUES (81, 1, N'Quelle est la longueur de mon ver solitaire ?', N'localhost:1093/Sondage/Resultat?id=81', N'localhost:1093/Sondage/Vote?id=81', N'8115967', 0, 1, CAST(N'2018-01-31T00:00:00.000' AS DateTime))
INSERT [dbo].[TSondage] ([idSondage], [nbVote], [nomQuestion], [lienResult], [lienPartage], [lienSuppr], [choixMultiple], [actif], [dateSondage]) VALUES (82, 1, N'Qui sera le prochain président de la fédération de Russie ?', N'localhost:1093/Sondage/Resultat?id=82', N'localhost:1093/Sondage/Vote?id=82', N'8256646', 0, 0, CAST(N'2018-01-31T00:00:00.000' AS DateTime))
INSERT [dbo].[TSondage] ([idSondage], [nbVote], [nomQuestion], [lienResult], [lienPartage], [lienSuppr], [choixMultiple], [actif], [dateSondage]) VALUES (83, 1, N'Quelle est votre boisson préférée ?', N'localhost:1093/Sondage/Resultat?id=83', N'localhost:1093/Sondage/Vote?id=83', N'8321129', 0, 1, CAST(N'2018-01-31T00:00:00.000' AS DateTime))
INSERT [dbo].[TSondage] ([idSondage], [nbVote], [nomQuestion], [lienResult], [lienPartage], [lienSuppr], [choixMultiple], [actif], [dateSondage]) VALUES (84, 0, N'Qui est votre super-héros préféré ?', N'localhost:1093/Sondage/Resultat?id=84', N'localhost:1093/Sondage/Vote?id=84', N'8416662', 0, 1, CAST(N'2018-01-31T00:00:00.000' AS DateTime))
INSERT [dbo].[TSondage] ([idSondage], [nbVote], [nomQuestion], [lienResult], [lienPartage], [lienSuppr], [choixMultiple], [actif], [dateSondage]) VALUES (85, 1, N'Quelles sont les séries que vous regardez ?', N'localhost:1093/Sondage/Resultat?id=85', N'localhost:1093/Sondage/Vote?id=85', N'8514946', 1, 1, CAST(N'2018-01-31T00:00:00.000' AS DateTime))
INSERT [dbo].[TSondage] ([idSondage], [nbVote], [nomQuestion], [lienResult], [lienPartage], [lienSuppr], [choixMultiple], [actif], [dateSondage]) VALUES (86, 1, N'A quelle(s) emission(s) de télévision souhaiteriez vous participer ?', N'localhost:1093/Sondage/Resultat?id=86', N'localhost:1093/Sondage/Vote?id=86', N'8630493', 1, 1, CAST(N'2018-01-31T00:00:00.000' AS DateTime))
INSERT [dbo].[TSondage] ([idSondage], [nbVote], [nomQuestion], [lienResult], [lienPartage], [lienSuppr], [choixMultiple], [actif], [dateSondage]) VALUES (87, 0, N'Quel est votre livre préféré ?', N'localhost:1093/Sondage/Resultat?id=87', N'localhost:1093/Sondage/Vote?id=87', N'879273', 0, 1, CAST(N'2018-01-31T00:00:00.000' AS DateTime))
INSERT [dbo].[TSondage] ([idSondage], [nbVote], [nomQuestion], [lienResult], [lienPartage], [lienSuppr], [choixMultiple], [actif], [dateSondage]) VALUES (88, 1, N'Comment manger du chocolat ?', N'localhost:1093/Sondage/Resultat?id=88', N'localhost:1093/Sondage/Vote?id=88', N'8844024', 0, 1, CAST(N'2018-01-31T00:00:00.000' AS DateTime))
INSERT [dbo].[TSondage] ([idSondage], [nbVote], [nomQuestion], [lienResult], [lienPartage], [lienSuppr], [choixMultiple], [actif], [dateSondage]) VALUES (89, 0, N'Confiture préférée ?', N'localhost:1093/Sondage/Resultat?id=89', N'localhost:1093/Sondage/Vote?id=89', N'8917153', 0, 1, CAST(N'2018-01-31T00:00:00.000' AS DateTime))
INSERT [dbo].[TSondage] ([idSondage], [nbVote], [nomQuestion], [lienResult], [lienPartage], [lienSuppr], [choixMultiple], [actif], [dateSondage]) VALUES (90, 1, N'Quel est la région la plus nulle ?', N'localhost:1093/Sondage/Resultat?id=90', N'localhost:1093/Sondage/Vote?id=90', N'9057361', 0, 1, CAST(N'2018-01-31T00:00:00.000' AS DateTime))
INSERT [dbo].[TSondage] ([idSondage], [nbVote], [nomQuestion], [lienResult], [lienPartage], [lienSuppr], [choixMultiple], [actif], [dateSondage]) VALUES (91, 1, N'Que faire ?', N'localhost:1093/Sondage/Resultat?id=91', N'localhost:1093/Sondage/Vote?id=91', N'9134618', 0, 1, CAST(N'2018-01-31T00:00:00.000' AS DateTime))
INSERT [dbo].[TSondage] ([idSondage], [nbVote], [nomQuestion], [lienResult], [lienPartage], [lienSuppr], [choixMultiple], [actif], [dateSondage]) VALUES (92, 0, N'Sport préféré ?', N'localhost:1093/Sondage/Resultat?id=92', N'localhost:1093/Sondage/Vote?id=92', N'9236935', 0, 1, CAST(N'2018-01-31T00:00:00.000' AS DateTime))
INSERT [dbo].[TSondage] ([idSondage], [nbVote], [nomQuestion], [lienResult], [lienPartage], [lienSuppr], [choixMultiple], [actif], [dateSondage]) VALUES (93, 0, N'Comment trouvez vous la propreté du code ?', N'localhost:1093/Sondage/Resultat?id=93', N'localhost:1093/Sondage/Vote?id=93', N'9331852', 0, 1, CAST(N'2018-02-01T00:00:00.000' AS DateTime))
INSERT [dbo].[TSondage] ([idSondage], [nbVote], [nomQuestion], [lienResult], [lienPartage], [lienSuppr], [choixMultiple], [actif], [dateSondage]) VALUES (115, 0, N'Test', N'localhost:1093/Sondage/Resultat?id=115', N'localhost:1093/Sondage/Vote?id=115', N'11535349', 0, 1, CAST(N'2018-02-05T09:04:19.380' AS DateTime))
INSERT [dbo].[TSondage] ([idSondage], [nbVote], [nomQuestion], [lienResult], [lienPartage], [lienSuppr], [choixMultiple], [actif], [dateSondage]) VALUES (116, 118, N'aaaa', N'localhost:1093/Sondage/Resultat?id=116', N'localhost:1093/Sondage/Vote?id=116', N'11652027', 0, 1, CAST(N'2018-02-05T09:05:32.953' AS DateTime))
INSERT [dbo].[TSondage] ([idSondage], [nbVote], [nomQuestion], [lienResult], [lienPartage], [lienSuppr], [choixMultiple], [actif], [dateSondage]) VALUES (117, 1, N'Qui est la plus jolie ?', N'localhost:1093/Sondage/Resultat?id=117', N'localhost:1093/Sondage/Vote?id=117', N'11743392', 0, 0, CAST(N'2018-02-05T09:36:52.597' AS DateTime))
INSERT [dbo].[TSondage] ([idSondage], [nbVote], [nomQuestion], [lienResult], [lienPartage], [lienSuppr], [choixMultiple], [actif], [dateSondage]) VALUES (118, 1, N'Pays préféré ?', N'localhost:1093/Sondage/Resultat?id=118', N'localhost:1093/Sondage/Vote?id=118', N'11842111', 0, 0, CAST(N'2018-02-05T09:41:32.497' AS DateTime))
INSERT [dbo].[TSondage] ([idSondage], [nbVote], [nomQuestion], [lienResult], [lienPartage], [lienSuppr], [choixMultiple], [actif], [dateSondage]) VALUES (119, 1, N'Meilleure façon de manger des pommes ?', N'localhost:1093/Sondage/Resultat?id=119', N'localhost:1093/Sondage/Vote?id=119', N'11934369', 0, 0, CAST(N'2018-02-05T09:45:26.853' AS DateTime))
SET IDENTITY_INSERT [dbo].[TSondage] OFF
USE [master]
GO
ALTER DATABASE [Projet] SET  READ_WRITE 
GO
