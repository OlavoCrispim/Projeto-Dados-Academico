USE [master]
GO

/****** Object:  Database [Projeto_Dados_Academicos]    Script Date: 26/10/2023 19:41:42 ******/
CREATE DATABASE [Projeto_Dados_Academicos]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Projeto_Dados_Academicos', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.MSSQLSERVER\MSSQL\DATA\Projeto_Dados_Academicos.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'Projeto_Dados_Academicos_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.MSSQLSERVER\MSSQL\DATA\Projeto_Dados_Academicos_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT, LEDGER = OFF
GO

IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Projeto_Dados_Academicos].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO

ALTER DATABASE [Projeto_Dados_Academicos] SET ANSI_NULL_DEFAULT OFF 
GO

ALTER DATABASE [Projeto_Dados_Academicos] SET ANSI_NULLS OFF 
GO

ALTER DATABASE [Projeto_Dados_Academicos] SET ANSI_PADDING OFF 
GO

ALTER DATABASE [Projeto_Dados_Academicos] SET ANSI_WARNINGS OFF 
GO

ALTER DATABASE [Projeto_Dados_Academicos] SET ARITHABORT OFF 
GO

ALTER DATABASE [Projeto_Dados_Academicos] SET AUTO_CLOSE OFF 
GO

ALTER DATABASE [Projeto_Dados_Academicos] SET AUTO_SHRINK OFF 
GO

ALTER DATABASE [Projeto_Dados_Academicos] SET AUTO_UPDATE_STATISTICS ON 
GO

ALTER DATABASE [Projeto_Dados_Academicos] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO

ALTER DATABASE [Projeto_Dados_Academicos] SET CURSOR_DEFAULT  GLOBAL 
GO

ALTER DATABASE [Projeto_Dados_Academicos] SET CONCAT_NULL_YIELDS_NULL OFF 
GO

ALTER DATABASE [Projeto_Dados_Academicos] SET NUMERIC_ROUNDABORT OFF 
GO

ALTER DATABASE [Projeto_Dados_Academicos] SET QUOTED_IDENTIFIER OFF 
GO

ALTER DATABASE [Projeto_Dados_Academicos] SET RECURSIVE_TRIGGERS OFF 
GO

ALTER DATABASE [Projeto_Dados_Academicos] SET  DISABLE_BROKER 
GO

ALTER DATABASE [Projeto_Dados_Academicos] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO

ALTER DATABASE [Projeto_Dados_Academicos] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO

ALTER DATABASE [Projeto_Dados_Academicos] SET TRUSTWORTHY OFF 
GO

ALTER DATABASE [Projeto_Dados_Academicos] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO

ALTER DATABASE [Projeto_Dados_Academicos] SET PARAMETERIZATION SIMPLE 
GO

ALTER DATABASE [Projeto_Dados_Academicos] SET READ_COMMITTED_SNAPSHOT OFF 
GO

ALTER DATABASE [Projeto_Dados_Academicos] SET HONOR_BROKER_PRIORITY OFF 
GO

ALTER DATABASE [Projeto_Dados_Academicos] SET RECOVERY FULL 
GO

ALTER DATABASE [Projeto_Dados_Academicos] SET  MULTI_USER 
GO

ALTER DATABASE [Projeto_Dados_Academicos] SET PAGE_VERIFY CHECKSUM  
GO

ALTER DATABASE [Projeto_Dados_Academicos] SET DB_CHAINING OFF 
GO

ALTER DATABASE [Projeto_Dados_Academicos] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO

ALTER DATABASE [Projeto_Dados_Academicos] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO

ALTER DATABASE [Projeto_Dados_Academicos] SET DELAYED_DURABILITY = DISABLED 
GO

ALTER DATABASE [Projeto_Dados_Academicos] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO

ALTER DATABASE [Projeto_Dados_Academicos] SET QUERY_STORE = ON
GO

ALTER DATABASE [Projeto_Dados_Academicos] SET QUERY_STORE (OPERATION_MODE = READ_WRITE, CLEANUP_POLICY = (STALE_QUERY_THRESHOLD_DAYS = 30), DATA_FLUSH_INTERVAL_SECONDS = 900, INTERVAL_LENGTH_MINUTES = 60, MAX_STORAGE_SIZE_MB = 1000, QUERY_CAPTURE_MODE = AUTO, SIZE_BASED_CLEANUP_MODE = AUTO, MAX_PLANS_PER_QUERY = 200, WAIT_STATS_CAPTURE_MODE = ON)
GO

ALTER DATABASE [Projeto_Dados_Academicos] SET  READ_WRITE 
GO

USE Projeto_Dados_Academicos;

CREATE TABLE Academico(
idAcademico INT PRIMARY KEY,
Curso VARCHAR(50),
Aluno VARCHAR(50),
Professor VARCHAR(50)
);

CREATE TABLE Curso(
idCurso INT PRIMARY KEY,
NomeCurso VARCHAR(50),
NivelEscolaridade VARCHAR(50)
);

CREATE TABLE Aluno(
idAluno INT PRIMARY KEY,
NomeCompleto VARCHAR(80),
RA INT,
DtNascimento DATE
);

CREATE TABLE Professor(
idProfessor INT PRIMARY KEY,
NomeProfessor VARCHAR(50),
emailProfessor VARCHAR(60)
);

CREATE TABLE Endereco(
idEndereco INT PRIMARY KEY,
numeroCasa INT,
cidade VARCHAR(50),
cep INT,
estado VARCHAR(50),
logradouro VARCHAR(50)
);

CREATE TABLE Telefone(
idTelefone INT PRIMARY KEY,
telcelular INT,
telfixo INT
);