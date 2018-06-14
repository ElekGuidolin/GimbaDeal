USE [TesteGimba]
GO
/****** Object:  StoredProcedure [dbo].[prRetornarTodosClientes]    Script Date: 14/06/2018 02:51:13 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[prRetornarTodosClientes]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[prRetornarTodosClientes]
GO
/****** Object:  StoredProcedure [dbo].[prRetornarTelefonesPorCliente]    Script Date: 14/06/2018 02:51:13 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[prRetornarTelefonesPorCliente]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[prRetornarTelefonesPorCliente]
GO
/****** Object:  StoredProcedure [dbo].[prRetornarSociosPorCliente]    Script Date: 14/06/2018 02:51:13 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[prRetornarSociosPorCliente]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[prRetornarSociosPorCliente]
GO
/****** Object:  StoredProcedure [dbo].[prRetornarEnderecosPorCliente]    Script Date: 14/06/2018 02:51:13 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[prRetornarEnderecosPorCliente]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[prRetornarEnderecosPorCliente]
GO
/****** Object:  StoredProcedure [dbo].[prRetornarEnderecosCadastradosPorCep]    Script Date: 14/06/2018 02:51:13 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[prRetornarEnderecosCadastradosPorCep]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[prRetornarEnderecosCadastradosPorCep]
GO
/****** Object:  StoredProcedure [dbo].[prRetornarEmailsPorCliente]    Script Date: 14/06/2018 02:51:13 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[prRetornarEmailsPorCliente]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[prRetornarEmailsPorCliente]
GO
/****** Object:  StoredProcedure [dbo].[prRetornarCliente]    Script Date: 14/06/2018 02:51:13 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[prRetornarCliente]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[prRetornarCliente]
GO
/****** Object:  StoredProcedure [dbo].[prIncluirTelefonePorCliente]    Script Date: 14/06/2018 02:51:13 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[prIncluirTelefonePorCliente]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[prIncluirTelefonePorCliente]
GO
/****** Object:  StoredProcedure [dbo].[prIncluirSocioPorCliente]    Script Date: 14/06/2018 02:51:13 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[prIncluirSocioPorCliente]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[prIncluirSocioPorCliente]
GO
/****** Object:  StoredProcedure [dbo].[prIncluirEndereco]    Script Date: 14/06/2018 02:51:13 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[prIncluirEndereco]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[prIncluirEndereco]
GO
/****** Object:  StoredProcedure [dbo].[prIncluirEmailPorCliente]    Script Date: 14/06/2018 02:51:13 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[prIncluirEmailPorCliente]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[prIncluirEmailPorCliente]
GO
/****** Object:  StoredProcedure [dbo].[prIncluirComplementoDeEnderecoPorCliente]    Script Date: 14/06/2018 02:51:13 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[prIncluirComplementoDeEnderecoPorCliente]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[prIncluirComplementoDeEnderecoPorCliente]
GO
/****** Object:  StoredProcedure [dbo].[prIncluirCliente]    Script Date: 14/06/2018 02:51:13 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[prIncluirCliente]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[prIncluirCliente]
GO
/****** Object:  StoredProcedure [dbo].[prExcluirTelefonePorCliente]    Script Date: 14/06/2018 02:51:13 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[prExcluirTelefonePorCliente]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[prExcluirTelefonePorCliente]
GO
/****** Object:  StoredProcedure [dbo].[prExcluirSocioPorCliente]    Script Date: 14/06/2018 02:51:13 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[prExcluirSocioPorCliente]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[prExcluirSocioPorCliente]
GO
/****** Object:  StoredProcedure [dbo].[prExcluirEmailPorCliente]    Script Date: 14/06/2018 02:51:13 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[prExcluirEmailPorCliente]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[prExcluirEmailPorCliente]
GO
/****** Object:  StoredProcedure [dbo].[prExcluirComplementosEnderecoPorCliente]    Script Date: 14/06/2018 02:51:13 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[prExcluirComplementosEnderecoPorCliente]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[prExcluirComplementosEnderecoPorCliente]
GO
/****** Object:  StoredProcedure [dbo].[prExcluirCliente]    Script Date: 14/06/2018 02:51:13 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[prExcluirCliente]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[prExcluirCliente]
GO
/****** Object:  StoredProcedure [dbo].[prAtualizarTelefonesPorId]    Script Date: 14/06/2018 02:51:13 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[prAtualizarTelefonesPorId]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[prAtualizarTelefonesPorId]
GO
/****** Object:  StoredProcedure [dbo].[prAtualizarSocioPorId]    Script Date: 14/06/2018 02:51:13 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[prAtualizarSocioPorId]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[prAtualizarSocioPorId]
GO
/****** Object:  StoredProcedure [dbo].[prAtualizarEmailPorId]    Script Date: 14/06/2018 02:51:13 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[prAtualizarEmailPorId]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[prAtualizarEmailPorId]
GO
/****** Object:  StoredProcedure [dbo].[prAtualizarComplementosEnderecoPorId]    Script Date: 14/06/2018 02:51:13 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[prAtualizarComplementosEnderecoPorId]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[prAtualizarComplementosEnderecoPorId]
GO
/****** Object:  StoredProcedure [dbo].[prAtualizarCliente]    Script Date: 14/06/2018 02:51:13 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[prAtualizarCliente]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[prAtualizarCliente]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Telefones_TiposTelefone]') AND parent_object_id = OBJECT_ID(N'[dbo].[Telefones]'))
ALTER TABLE [dbo].[Telefones] DROP CONSTRAINT [FK_Telefones_TiposTelefone]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Telefones_Clientes]') AND parent_object_id = OBJECT_ID(N'[dbo].[Telefones]'))
ALTER TABLE [dbo].[Telefones] DROP CONSTRAINT [FK_Telefones_Clientes]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Socios_Clientes]') AND parent_object_id = OBJECT_ID(N'[dbo].[Socios]'))
ALTER TABLE [dbo].[Socios] DROP CONSTRAINT [FK_Socios_Clientes]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Emails_Clientes]') AND parent_object_id = OBJECT_ID(N'[dbo].[Emails]'))
ALTER TABLE [dbo].[Emails] DROP CONSTRAINT [FK_Emails_Clientes]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_ComplementosEndereco_Enderecos]') AND parent_object_id = OBJECT_ID(N'[dbo].[ComplementosEndereco]'))
ALTER TABLE [dbo].[ComplementosEndereco] DROP CONSTRAINT [FK_ComplementosEndereco_Enderecos]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_ComplementosEndereco_Clientes]') AND parent_object_id = OBJECT_ID(N'[dbo].[ComplementosEndereco]'))
ALTER TABLE [dbo].[ComplementosEndereco] DROP CONSTRAINT [FK_ComplementosEndereco_Clientes]
GO
/****** Object:  Index [IX_Cep]    Script Date: 14/06/2018 02:51:13 ******/
IF  EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[Enderecos]') AND name = N'IX_Cep')
DROP INDEX [IX_Cep] ON [dbo].[Enderecos]
GO
/****** Object:  Table [dbo].[TiposTelefone]    Script Date: 14/06/2018 02:51:13 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[TiposTelefone]') AND type in (N'U'))
DROP TABLE [dbo].[TiposTelefone]
GO
/****** Object:  Table [dbo].[Telefones]    Script Date: 14/06/2018 02:51:13 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Telefones]') AND type in (N'U'))
DROP TABLE [dbo].[Telefones]
GO
/****** Object:  Table [dbo].[Socios]    Script Date: 14/06/2018 02:51:13 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Socios]') AND type in (N'U'))
DROP TABLE [dbo].[Socios]
GO
/****** Object:  Table [dbo].[Enderecos]    Script Date: 14/06/2018 02:51:13 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Enderecos]') AND type in (N'U'))
DROP TABLE [dbo].[Enderecos]
GO
/****** Object:  Table [dbo].[Emails]    Script Date: 14/06/2018 02:51:13 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Emails]') AND type in (N'U'))
DROP TABLE [dbo].[Emails]
GO
/****** Object:  Table [dbo].[ComplementosEndereco]    Script Date: 14/06/2018 02:51:13 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ComplementosEndereco]') AND type in (N'U'))
DROP TABLE [dbo].[ComplementosEndereco]
GO
/****** Object:  Table [dbo].[Clientes]    Script Date: 14/06/2018 02:51:13 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Clientes]') AND type in (N'U'))
DROP TABLE [dbo].[Clientes]
GO
USE [master]
GO
/****** Object:  Database [TesteGimba]    Script Date: 14/06/2018 02:51:13 ******/
IF  EXISTS (SELECT name FROM sys.databases WHERE name = N'TesteGimba')
DROP DATABASE [TesteGimba]
GO
/****** Object:  Database [TesteGimba]    Script Date: 14/06/2018 02:51:13 ******/
IF NOT EXISTS (SELECT name FROM sys.databases WHERE name = N'TesteGimba')
BEGIN
CREATE DATABASE [TesteGimba]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'TesteGimba', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.SQLEXPRESS\MSSQL\DATA\TesteGimba.mdf' , SIZE = 5120KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'TesteGimba_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.SQLEXPRESS\MSSQL\DATA\TesteGimba_log.ldf' , SIZE = 2048KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
END

GO
ALTER DATABASE [TesteGimba] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [TesteGimba].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [TesteGimba] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [TesteGimba] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [TesteGimba] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [TesteGimba] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [TesteGimba] SET ARITHABORT OFF 
GO
ALTER DATABASE [TesteGimba] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [TesteGimba] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [TesteGimba] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [TesteGimba] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [TesteGimba] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [TesteGimba] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [TesteGimba] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [TesteGimba] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [TesteGimba] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [TesteGimba] SET  DISABLE_BROKER 
GO
ALTER DATABASE [TesteGimba] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [TesteGimba] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [TesteGimba] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [TesteGimba] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [TesteGimba] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [TesteGimba] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [TesteGimba] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [TesteGimba] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [TesteGimba] SET  MULTI_USER 
GO
ALTER DATABASE [TesteGimba] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [TesteGimba] SET DB_CHAINING OFF 
GO
ALTER DATABASE [TesteGimba] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [TesteGimba] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [TesteGimba] SET DELAYED_DURABILITY = DISABLED 
GO
USE [TesteGimba]
GO
/****** Object:  Table [dbo].[Clientes]    Script Date: 14/06/2018 02:51:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Clientes]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Clientes](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Nome] [nvarchar](200) NOT NULL,
	[Cnpj] [nchar](14) NOT NULL,
	[Ativo] [bit] NOT NULL,
 CONSTRAINT [PK_Cliente] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[ComplementosEndereco]    Script Date: 14/06/2018 02:51:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ComplementosEndereco]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[ComplementosEndereco](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[IdCliente] [int] NOT NULL,
	[IdEndereco] [int] NOT NULL,
	[Numero] [int] NOT NULL,
	[Complemento] [nvarchar](50) NOT NULL,
	[Ativo] [bit] NOT NULL,
 CONSTRAINT [PK_ComplementoEndereco] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[Emails]    Script Date: 14/06/2018 02:51:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Emails]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Emails](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Email] [nvarchar](150) NOT NULL,
	[IdCliente] [int] NOT NULL,
	[Ativo] [bit] NOT NULL,
 CONSTRAINT [PK_Emails] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[Enderecos]    Script Date: 14/06/2018 02:51:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Enderecos]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Enderecos](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Cep] [nchar](8) NOT NULL,
	[Logradouro] [nvarchar](200) NOT NULL,
	[Complemento] [nvarchar](20) NOT NULL,
	[Bairro] [nvarchar](100) NOT NULL,
	[Localidade] [nvarchar](100) NOT NULL,
	[Uf] [nchar](2) NOT NULL,
 CONSTRAINT [PK_Endereco] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[Socios]    Script Date: 14/06/2018 02:51:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Socios]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Socios](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Nome] [nvarchar](150) NOT NULL,
	[Cpf] [nchar](11) NOT NULL,
	[IdCliente] [int] NOT NULL,
	[Ativo] [bit] NOT NULL,
 CONSTRAINT [PK_Socios] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[Telefones]    Script Date: 14/06/2018 02:51:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Telefones]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Telefones](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[IdTipoTelefone] [tinyint] NOT NULL,
	[IdCliente] [int] NOT NULL,
	[Ddd] [nchar](2) NOT NULL,
	[Numero] [nvarchar](9) NOT NULL,
	[Ativo] [bit] NOT NULL,
 CONSTRAINT [PK_Telefone] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[TiposTelefone]    Script Date: 14/06/2018 02:51:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[TiposTelefone]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[TiposTelefone](
	[Id] [tinyint] IDENTITY(1,1) NOT NULL,
	[Nome] [nvarchar](20) NOT NULL,
 CONSTRAINT [PK_TipoTelefone] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET IDENTITY_INSERT [dbo].[Clientes] ON 

INSERT [dbo].[Clientes] ([Id], [Nome], [Cnpj], [Ativo]) VALUES (1, N'SmartDev Tecnologia em Informática LTDA', N'08185754000175', 1)
INSERT [dbo].[Clientes] ([Id], [Nome], [Cnpj], [Ativo]) VALUES (2, N'Deal Consultoria', N'12654987000178', 1)
INSERT [dbo].[Clientes] ([Id], [Nome], [Cnpj], [Ativo]) VALUES (3, N'Gimba', N'98654321011174', 1)
SET IDENTITY_INSERT [dbo].[Clientes] OFF
SET IDENTITY_INSERT [dbo].[ComplementosEndereco] ON 

INSERT [dbo].[ComplementosEndereco] ([Id], [IdCliente], [IdEndereco], [Numero], [Complemento], [Ativo]) VALUES (1, 1, 2, 291, N'Casa', 1)
INSERT [dbo].[ComplementosEndereco] ([Id], [IdCliente], [IdEndereco], [Numero], [Complemento], [Ativo]) VALUES (2, 2, 3, 171, N'7° Andar', 1)
INSERT [dbo].[ComplementosEndereco] ([Id], [IdCliente], [IdEndereco], [Numero], [Complemento], [Ativo]) VALUES (3, 3, 4, 307, N'Loja', 1)
SET IDENTITY_INSERT [dbo].[ComplementosEndereco] OFF
SET IDENTITY_INSERT [dbo].[Emails] ON 

INSERT [dbo].[Emails] ([Id], [Email], [IdCliente], [Ativo]) VALUES (1, N'elekguidolin@gmail.com', 1, 1)
INSERT [dbo].[Emails] ([Id], [Email], [IdCliente], [Ativo]) VALUES (2, N'teste@guidolin.com', 1, 1)
INSERT [dbo].[Emails] ([Id], [Email], [IdCliente], [Ativo]) VALUES (3, N'deal@deal.com', 2, 1)
INSERT [dbo].[Emails] ([Id], [Email], [IdCliente], [Ativo]) VALUES (4, N'rh@deal.com', 2, 1)
INSERT [dbo].[Emails] ([Id], [Email], [IdCliente], [Ativo]) VALUES (5, N'gimba@gimba.com', 3, 1)
INSERT [dbo].[Emails] ([Id], [Email], [IdCliente], [Ativo]) VALUES (6, N'rh@gimba.com', 3, 1)
SET IDENTITY_INSERT [dbo].[Emails] OFF
SET IDENTITY_INSERT [dbo].[Enderecos] ON 

INSERT [dbo].[Enderecos] ([Id], [Cep], [Logradouro], [Complemento], [Bairro], [Localidade], [Uf]) VALUES (1, N'04632010', N'Rua Vapabussu', N'Lado Par', N'Jardim Aeroporto', N'São Paulo', N'SP')
INSERT [dbo].[Enderecos] ([Id], [Cep], [Logradouro], [Complemento], [Bairro], [Localidade], [Uf]) VALUES (2, N'02514060', N'Rua Dobrada', N'Lado Ímpar', N'Casa Verde', N'São Paulo', N'SP')
INSERT [dbo].[Enderecos] ([Id], [Cep], [Logradouro], [Complemento], [Bairro], [Localidade], [Uf]) VALUES (3, N'01311904', N'Avenida Paulista', N'Lado Ímpar', N'Bela Vista', N'São Paulo', N'SP')
INSERT [dbo].[Enderecos] ([Id], [Cep], [Logradouro], [Complemento], [Bairro], [Localidade], [Uf]) VALUES (4, N'04524030', N'Avenida Bem-Te-Vi', N'Lado Ímpar', N'Moema', N'São Paulo', N'SP')
SET IDENTITY_INSERT [dbo].[Enderecos] OFF
SET IDENTITY_INSERT [dbo].[Socios] ON 

INSERT [dbo].[Socios] ([Id], [Nome], [Cpf], [IdCliente], [Ativo]) VALUES (1, N'Elek Guidolin', N'28871925823', 1, 1)
INSERT [dbo].[Socios] ([Id], [Nome], [Cpf], [IdCliente], [Ativo]) VALUES (2, N'Elaine Puche', N'12345678909', 1, 1)
INSERT [dbo].[Socios] ([Id], [Nome], [Cpf], [IdCliente], [Ativo]) VALUES (3, N'Teste1', N'12345678909', 2, 1)
INSERT [dbo].[Socios] ([Id], [Nome], [Cpf], [IdCliente], [Ativo]) VALUES (4, N'Teste2', N'98765432108', 2, 1)
INSERT [dbo].[Socios] ([Id], [Nome], [Cpf], [IdCliente], [Ativo]) VALUES (5, N'Teste3', N'45678912312', 3, 1)
INSERT [dbo].[Socios] ([Id], [Nome], [Cpf], [IdCliente], [Ativo]) VALUES (6, N'Teste4', N'78945612332', 3, 1)
SET IDENTITY_INSERT [dbo].[Socios] OFF
SET IDENTITY_INSERT [dbo].[Telefones] ON 

INSERT [dbo].[Telefones] ([Id], [IdTipoTelefone], [IdCliente], [Ddd], [Numero], [Ativo]) VALUES (1, 1, 1, N'11', N'43217894', 1)
INSERT [dbo].[Telefones] ([Id], [IdTipoTelefone], [IdCliente], [Ddd], [Numero], [Ativo]) VALUES (2, 3, 1, N'11', N'987654321', 1)
INSERT [dbo].[Telefones] ([Id], [IdTipoTelefone], [IdCliente], [Ddd], [Numero], [Ativo]) VALUES (3, 1, 2, N'21', N'45619874', 1)
INSERT [dbo].[Telefones] ([Id], [IdTipoTelefone], [IdCliente], [Ddd], [Numero], [Ativo]) VALUES (4, 3, 2, N'21', N'789456123', 1)
INSERT [dbo].[Telefones] ([Id], [IdTipoTelefone], [IdCliente], [Ddd], [Numero], [Ativo]) VALUES (5, 1, 3, N'11', N'32149874', 1)
INSERT [dbo].[Telefones] ([Id], [IdTipoTelefone], [IdCliente], [Ddd], [Numero], [Ativo]) VALUES (6, 2, 3, N'11', N'65417894', 1)
SET IDENTITY_INSERT [dbo].[Telefones] OFF
SET IDENTITY_INSERT [dbo].[TiposTelefone] ON 

INSERT [dbo].[TiposTelefone] ([Id], [Nome]) VALUES (1, N'Fixo')
INSERT [dbo].[TiposTelefone] ([Id], [Nome]) VALUES (2, N'Residencial')
INSERT [dbo].[TiposTelefone] ([Id], [Nome]) VALUES (3, N'Celular')
SET IDENTITY_INSERT [dbo].[TiposTelefone] OFF
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_Cep]    Script Date: 14/06/2018 02:51:14 ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[Enderecos]') AND name = N'IX_Cep')
CREATE UNIQUE NONCLUSTERED INDEX [IX_Cep] ON [dbo].[Enderecos]
(
	[Cep] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_ComplementosEndereco_Clientes]') AND parent_object_id = OBJECT_ID(N'[dbo].[ComplementosEndereco]'))
ALTER TABLE [dbo].[ComplementosEndereco]  WITH CHECK ADD  CONSTRAINT [FK_ComplementosEndereco_Clientes] FOREIGN KEY([IdCliente])
REFERENCES [dbo].[Clientes] ([Id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_ComplementosEndereco_Clientes]') AND parent_object_id = OBJECT_ID(N'[dbo].[ComplementosEndereco]'))
ALTER TABLE [dbo].[ComplementosEndereco] CHECK CONSTRAINT [FK_ComplementosEndereco_Clientes]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_ComplementosEndereco_Enderecos]') AND parent_object_id = OBJECT_ID(N'[dbo].[ComplementosEndereco]'))
ALTER TABLE [dbo].[ComplementosEndereco]  WITH CHECK ADD  CONSTRAINT [FK_ComplementosEndereco_Enderecos] FOREIGN KEY([IdEndereco])
REFERENCES [dbo].[Enderecos] ([Id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_ComplementosEndereco_Enderecos]') AND parent_object_id = OBJECT_ID(N'[dbo].[ComplementosEndereco]'))
ALTER TABLE [dbo].[ComplementosEndereco] CHECK CONSTRAINT [FK_ComplementosEndereco_Enderecos]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Emails_Clientes]') AND parent_object_id = OBJECT_ID(N'[dbo].[Emails]'))
ALTER TABLE [dbo].[Emails]  WITH CHECK ADD  CONSTRAINT [FK_Emails_Clientes] FOREIGN KEY([IdCliente])
REFERENCES [dbo].[Clientes] ([Id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Emails_Clientes]') AND parent_object_id = OBJECT_ID(N'[dbo].[Emails]'))
ALTER TABLE [dbo].[Emails] CHECK CONSTRAINT [FK_Emails_Clientes]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Socios_Clientes]') AND parent_object_id = OBJECT_ID(N'[dbo].[Socios]'))
ALTER TABLE [dbo].[Socios]  WITH CHECK ADD  CONSTRAINT [FK_Socios_Clientes] FOREIGN KEY([IdCliente])
REFERENCES [dbo].[Clientes] ([Id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Socios_Clientes]') AND parent_object_id = OBJECT_ID(N'[dbo].[Socios]'))
ALTER TABLE [dbo].[Socios] CHECK CONSTRAINT [FK_Socios_Clientes]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Telefones_Clientes]') AND parent_object_id = OBJECT_ID(N'[dbo].[Telefones]'))
ALTER TABLE [dbo].[Telefones]  WITH CHECK ADD  CONSTRAINT [FK_Telefones_Clientes] FOREIGN KEY([IdCliente])
REFERENCES [dbo].[Clientes] ([Id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Telefones_Clientes]') AND parent_object_id = OBJECT_ID(N'[dbo].[Telefones]'))
ALTER TABLE [dbo].[Telefones] CHECK CONSTRAINT [FK_Telefones_Clientes]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Telefones_TiposTelefone]') AND parent_object_id = OBJECT_ID(N'[dbo].[Telefones]'))
ALTER TABLE [dbo].[Telefones]  WITH CHECK ADD  CONSTRAINT [FK_Telefones_TiposTelefone] FOREIGN KEY([IdTipoTelefone])
REFERENCES [dbo].[TiposTelefone] ([Id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Telefones_TiposTelefone]') AND parent_object_id = OBJECT_ID(N'[dbo].[Telefones]'))
ALTER TABLE [dbo].[Telefones] CHECK CONSTRAINT [FK_Telefones_TiposTelefone]
GO
/****** Object:  StoredProcedure [dbo].[prAtualizarCliente]    Script Date: 14/06/2018 02:51:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[prAtualizarCliente]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[prAtualizarCliente] AS' 
END
GO
ALTER Procedure [dbo].[prAtualizarCliente]
	@Id			int,
	@Nome		nvarchar(150)	= NULL,
	@Cnpj		nchar(14)		= NULL
As
Begin
	Update Clientes
		Set Nome = ISNULL(@Nome, Nome),
			Cnpj = ISNULL(@Cnpj, Cnpj),
			Ativo = 'true'
				Where Id = @Id
End
GO
/****** Object:  StoredProcedure [dbo].[prAtualizarComplementosEnderecoPorId]    Script Date: 14/06/2018 02:51:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[prAtualizarComplementosEnderecoPorId]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[prAtualizarComplementosEnderecoPorId] AS' 
END
GO
ALTER Procedure [dbo].[prAtualizarComplementosEnderecoPorId]
	@Id				int,
	@IdCliente		int				= NULL,
	@IdEndereco		int				= NULL,
	@Numero			int				= NULL,
	@Complemento	nvarchar(50)	= NULL
As
Begin
	Update ComplementosEndereco
		Set	IdCliente = ISNULL(@IdCliente, IdCliente),
			IdEndereco = ISNULL(@IdEndereco, IdEndereco),
			Numero = ISNULL(@Numero, Numero),
			Complemento = ISNULL(@Complemento, Complemento),
			Ativo = 'true'
				Where Id = @Id
End
GO
/****** Object:  StoredProcedure [dbo].[prAtualizarEmailPorId]    Script Date: 14/06/2018 02:51:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[prAtualizarEmailPorId]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[prAtualizarEmailPorId] AS' 
END
GO
ALTER Procedure [dbo].[prAtualizarEmailPorId]
	@Id			int,
	@IdCliente	int				= NULL,
	@Email		nvarchar(150)	= NULL
As
Begin
	Update Emails
		Set Email = ISNULL(@Email, Email),
			IdCliente = ISNULL(@IdCliente, IdCliente),
			Ativo = 'true'
				Where Id = @Id
End
GO
/****** Object:  StoredProcedure [dbo].[prAtualizarSocioPorId]    Script Date: 14/06/2018 02:51:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[prAtualizarSocioPorId]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[prAtualizarSocioPorId] AS' 
END
GO
ALTER Procedure [dbo].[prAtualizarSocioPorId]
	@Id			int,
	@IdCliente	int				= NULL,
	@Nome		nvarchar(150)	= NULL,
	@Cpf		nchar(11)		= NULL
As
Begin
	Update Socios
		Set Nome = ISNULL(@Nome, Nome),
			Cpf = ISNULL(@Cpf, Cpf),
			IdCliente = ISNULL(@IdCliente, IdCliente),
			Ativo = 'true'
				Where Id = @Id
End
GO
/****** Object:  StoredProcedure [dbo].[prAtualizarTelefonesPorId]    Script Date: 14/06/2018 02:51:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[prAtualizarTelefonesPorId]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[prAtualizarTelefonesPorId] AS' 
END
GO
ALTER Procedure [dbo].[prAtualizarTelefonesPorId]
	@Id				int,
	@IdTipoTelefone	tinyint			= NULL,
	@IdCliente		int				= NULL,
	@Ddd			nchar(2)		= NULL,
	@Numero			nvarchar(9)		= NULL
As
Begin
	Update Telefones
		Set	IdTipoTelefone = ISNULL(@IdTipoTelefone, IdTipoTelefone),
			IdCliente = ISNULL(@IdCliente, IdCliente),
			Ddd = ISNULL(@Ddd, Ddd),
			Numero = ISNULL(@Numero, Numero),
			Ativo = 'true'
				Where Id = @Id
End
GO
/****** Object:  StoredProcedure [dbo].[prExcluirCliente]    Script Date: 14/06/2018 02:51:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[prExcluirCliente]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[prExcluirCliente] AS' 
END
GO
ALTER Procedure [dbo].[prExcluirCliente]
	@IdCliente		int
As
Begin
	Begin Transaction

	EXEC prExcluirSocioPorCliente @IdCliente

	EXEC prExcluirEmailPorCliente @IdCliente

	EXEC prExcluirTelefonePorCliente @IdCliente

	EXEC prExcluirComplementosEnderecoPorCliente @IdCliente

	Update Clientes
		Set Ativo = 'false'
			Where Id = @IdCliente

	If(@@ERROR = 0)
		Commit Transaction
	Else
		Rollback Transaction

End
GO
/****** Object:  StoredProcedure [dbo].[prExcluirComplementosEnderecoPorCliente]    Script Date: 14/06/2018 02:51:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[prExcluirComplementosEnderecoPorCliente]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[prExcluirComplementosEnderecoPorCliente] AS' 
END
GO
ALTER Procedure [dbo].[prExcluirComplementosEnderecoPorCliente]
	@IdCliente		int
As
Begin
	Update ComplementosEndereco
		Set Ativo = 'false'
			Where IdCliente = @IdCliente
End
GO
/****** Object:  StoredProcedure [dbo].[prExcluirEmailPorCliente]    Script Date: 14/06/2018 02:51:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[prExcluirEmailPorCliente]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[prExcluirEmailPorCliente] AS' 
END
GO
ALTER Procedure [dbo].[prExcluirEmailPorCliente]
	@IdCliente		int
As
Begin
	Update Emails
		Set Ativo = 'false'
			Where IdCliente = @IdCliente
End
GO
/****** Object:  StoredProcedure [dbo].[prExcluirSocioPorCliente]    Script Date: 14/06/2018 02:51:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[prExcluirSocioPorCliente]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[prExcluirSocioPorCliente] AS' 
END
GO
ALTER Procedure [dbo].[prExcluirSocioPorCliente]
	@IdCliente		int
As
Begin
	Update Socios
		Set Ativo = 'false'
			Where IdCliente = @IdCliente
End
GO
/****** Object:  StoredProcedure [dbo].[prExcluirTelefonePorCliente]    Script Date: 14/06/2018 02:51:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[prExcluirTelefonePorCliente]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[prExcluirTelefonePorCliente] AS' 
END
GO
ALTER Procedure [dbo].[prExcluirTelefonePorCliente]
	@IdCliente		int
As
Begin
	Update Telefones
		Set Ativo = 'false'
			Where IdCliente = @IdCliente
End
GO
/****** Object:  StoredProcedure [dbo].[prIncluirCliente]    Script Date: 14/06/2018 02:51:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[prIncluirCliente]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[prIncluirCliente] AS' 
END
GO
ALTER Procedure [dbo].[prIncluirCliente]
	@Nome	nvarchar(200),
	@Cnpj	nchar(14)
As
Begin
	Insert Into Clientes(Nome, Cnpj, Ativo)
	Values (@Nome, @Cnpj, 'true')

	Select @@IDENTITY
End
GO
/****** Object:  StoredProcedure [dbo].[prIncluirComplementoDeEnderecoPorCliente]    Script Date: 14/06/2018 02:51:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[prIncluirComplementoDeEnderecoPorCliente]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[prIncluirComplementoDeEnderecoPorCliente] AS' 
END
GO
ALTER Procedure [dbo].[prIncluirComplementoDeEnderecoPorCliente]
	@IdCliente		int,
	@IdEndereco		int,
	@Numero			int,
	@Complemento	nvarchar(50)
As
Begin
	Insert Into ComplementosEndereco(IdCliente, IdEndereco, Numero, Complemento, Ativo)
	Values(@IdCliente, @IdEndereco, @Numero, @Complemento,'true')
End
GO
/****** Object:  StoredProcedure [dbo].[prIncluirEmailPorCliente]    Script Date: 14/06/2018 02:51:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[prIncluirEmailPorCliente]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[prIncluirEmailPorCliente] AS' 
END
GO
ALTER Procedure [dbo].[prIncluirEmailPorCliente]
	@IdCliente	int,
	@Email		nvarchar(150)
As
Begin
	Insert Into Emails(Email, IdCliente, Ativo)
	Values (@Email, @IdCliente, 'true')
End
GO
/****** Object:  StoredProcedure [dbo].[prIncluirEndereco]    Script Date: 14/06/2018 02:51:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[prIncluirEndereco]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[prIncluirEndereco] AS' 
END
GO
ALTER Procedure [dbo].[prIncluirEndereco]
	@Cep			nchar(8),
	@Logradouro		nvarchar(200),
	@Complemento	nvarchar(20),
	@Bairro			nvarchar(100),
	@Localidade		nvarchar(100),
	@Uf				nchar(2)
As
Begin
	Insert Into Enderecos (Cep, Logradouro, Complemento, Bairro, Localidade, Uf)
	Values (@Cep, @Logradouro, @Complemento, @Bairro, @Localidade, @Uf)

	Select @@IDENTITY
End
GO
/****** Object:  StoredProcedure [dbo].[prIncluirSocioPorCliente]    Script Date: 14/06/2018 02:51:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[prIncluirSocioPorCliente]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[prIncluirSocioPorCliente] AS' 
END
GO
ALTER Procedure [dbo].[prIncluirSocioPorCliente]
	@IdCliente	int,
	@Nome		nvarchar(150),
	@Cpf		nchar(11)
As
Begin
	Insert Into Socios
	Values(@Nome, @Cpf, @IdCliente, 'true')
End
GO
/****** Object:  StoredProcedure [dbo].[prIncluirTelefonePorCliente]    Script Date: 14/06/2018 02:51:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[prIncluirTelefonePorCliente]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[prIncluirTelefonePorCliente] AS' 
END
GO
ALTER Procedure [dbo].[prIncluirTelefonePorCliente]
	@IdTipoTelefone	tinyint,
	@Ddd			int,
	@Numero			nvarchar(9),
	@IdCliente		int
As
Begin
	Insert Into Telefones(IdTipoTelefone, Ddd, Numero, IdCliente, Ativo)
	Values (@IdTipoTelefone, @Ddd, @Numero, @IdCliente, 'true')
End
GO
/****** Object:  StoredProcedure [dbo].[prRetornarCliente]    Script Date: 14/06/2018 02:51:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[prRetornarCliente]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[prRetornarCliente] AS' 
END
GO
ALTER Procedure [dbo].[prRetornarCliente]
	@Id			int
As
Begin
	Select	Nome,
			Cnpj
	From Clientes
	Where	Id = @Id
	And		Ativo = 'true'
End
GO
/****** Object:  StoredProcedure [dbo].[prRetornarEmailsPorCliente]    Script Date: 14/06/2018 02:51:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[prRetornarEmailsPorCliente]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[prRetornarEmailsPorCliente] AS' 
END
GO
ALTER Procedure [dbo].[prRetornarEmailsPorCliente]
	@IdCliente	int
As
Begin
Select	E.Id,
		E.Email
	From Emails E
	Inner Join Clientes C On
		C.Id = E.IdCliente
	Where	E.Ativo = 'true'
	And		E.IdCliente = @IdCliente
	And		C.Ativo = 'true'
End
GO
/****** Object:  StoredProcedure [dbo].[prRetornarEnderecosCadastradosPorCep]    Script Date: 14/06/2018 02:51:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[prRetornarEnderecosCadastradosPorCep]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[prRetornarEnderecosCadastradosPorCep] AS' 
END
GO
ALTER Procedure [dbo].[prRetornarEnderecosCadastradosPorCep]
	@Cep	nchar(8)
As
Begin
	Select	E.Logradouro,
			E.Complemento,
			E.Bairro,
			E.Localidade,
			E.Uf
	From Enderecos E
	Where E.Cep Like @Cep
End
GO
/****** Object:  StoredProcedure [dbo].[prRetornarEnderecosPorCliente]    Script Date: 14/06/2018 02:51:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[prRetornarEnderecosPorCliente]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[prRetornarEnderecosPorCliente] AS' 
END
GO
ALTER Procedure [dbo].[prRetornarEnderecosPorCliente]
	@IdCliente	int,
	@IdEndereco	int
As
Begin
	Select	E.Logradouro,
			E.Complemento,
			E.Bairro,
			E.Localidade,
			E.Uf,
			CE.Numero,
			CE.Complemento
	From ComplementosEndereco CE
	Inner Join Enderecos E On
		E.Id = CE.IdEndereco
	Inner Join Clientes C On
		C.Id = CE.IdCliente
	Where	CE.Ativo = 'true'
	And		C.Ativo = 'true'
	And		CE.IdCliente = @IdCliente
	And		CE.IdEndereco = @IdEndereco
End
GO
/****** Object:  StoredProcedure [dbo].[prRetornarSociosPorCliente]    Script Date: 14/06/2018 02:51:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[prRetornarSociosPorCliente]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[prRetornarSociosPorCliente] AS' 
END
GO
ALTER Procedure [dbo].[prRetornarSociosPorCliente]
	@IdCliente	Int
As
Begin
	Select	S.Id,
			S.Nome,
			S.Cpf
	From Socios S
	Where	S.Ativo = 'true'
	And		S.IdCliente = @IdCliente
End
GO
/****** Object:  StoredProcedure [dbo].[prRetornarTelefonesPorCliente]    Script Date: 14/06/2018 02:51:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[prRetornarTelefonesPorCliente]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[prRetornarTelefonesPorCliente] AS' 
END
GO
ALTER Procedure [dbo].[prRetornarTelefonesPorCliente]
	@IdCliente	int
As
Begin
	Select	TT.Id As 'TipoId',
			TT.Nome As 'TipoName',
			T.Id,
			T.Ddd,
			T.Numero
	From Telefones T
	Inner Join TiposTelefone TT On
		TT.Id = T.IdTipoTelefone
	Inner Join Clientes C On
		C.id = T.IdCliente
	Where	T.Ativo = 'true'
	And		C.Ativo = 'true'
	And		T.IdCliente = @IdCliente
End
GO
/****** Object:  StoredProcedure [dbo].[prRetornarTodosClientes]    Script Date: 14/06/2018 02:51:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[prRetornarTodosClientes]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[prRetornarTodosClientes] AS' 
END
GO
ALTER Procedure [dbo].[prRetornarTodosClientes]
As
Begin
	Select
		C.Id,
		C.Cnpj,
		C.Nome
	From Clientes As C
	Where C.Ativo = 'true'
End
GO
USE [master]
GO
ALTER DATABASE [TesteGimba] SET  READ_WRITE 
GO
