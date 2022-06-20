USE [master]
GO

-- University bazasını yaratmaq
Drop database if exists  [University];

CREATE DATABASE [University]
GO 

-- University bazasına keçid etmək
USE [University]
GO

-- University bazasında Students cədvəlini yaratmaq
go
CREATE TABLE [dbo].[Students]
(
	[id] int,
	[name] nvarchar(20),
	[surname] nvarchar(30),
	[class] varchar(3),
	[gender] varchar(1),
	[birth_year] int
)
GO

-- Students cədvəlinə verilənləri daxil etmək
INSERT INTO [dbo].[Students](
[id],[name],[surname],[class],[gender],[birth_year])
VALUES
(1,N'Kamran',N'Qasımov','10A','K',1989),
(2,N'Nigar',N'İsmayılova','10A','Q',1989),
(3,N'Qismət',N'Səmədzadə','10A','K',1990),
(4,N'Şöhrət',N'Nəzərov','10A','K',1990),
(5,N'Sevinc',N'Mustafayeva','10A','Q',1989),
(6,N'İsmayıl',N'Əliyev','10A','K',1990),
(7,N'Ülkər',N'İsmayılzadə','10A','Q',1991),
(8,N'Murad',N'Qəniyev','10B','K',1989),
(9,N'Turkel',N'Zeynalov','10B','K',1990),
(10,N'Nofəl',N'Şahmurov','10B','K',1990),
(11,N'Gunay',N'Əzizova','10B','Q',1990),
(12,N'Əhməd',N'Cavadov','10B','K',1989),
(13,N'Leyal',N'Əlizdə','10B','Q',1991),
(14,N'Nizami',N'Məmmədzadə','10B','K',1991),
(15,N'Mahmud',N'Qafarlı','9A','K',1991),
(16,N'Aysel',N'Qafarova','9A','Q',1991),
(17,N'İlqar',N'Mustafayev','9A','K',1990),
(18,N'Zamiq',N'Ağayev','9A','K',1991),
(19,N'Nərmin',N'Qocayeva','9A','Q',1992),
(20,N'Xəyalə',N'Ömərova','9A','Q',1991),
(21,N'Sərxan',N'Musayev','9A','K',1993),
(22,N'Tünzalə',N'Qarayeva','9B','Q',1990),
(23,N'Ümid',N'Zahidov','9B','K',1991),
(24,N'Jalə',N'Göycəyeva','9B','Q',1992),
(25,N'Ricay',N'Ağayev','9B','K',1990),
(26,N'Aynur',N'Qarayeva','9B','Q',1990),
(27,N'Nurlan',N'Əhmədov','9B','K',1993),
(28,N'Ülkər',N'Əsədova','9B','Q',1990);



--10A, 10B, 9A, 9B
--1989, 1990, 1991, 1992, 1993


