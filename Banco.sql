
CREATE DATABASE [Servi�os] 
GO

Use Servi�os

CREATE TABLE [dbo].[LimiteCliente](
	[Codigo] [int] IDENTITY(1,1) NOT NULL,
	[LimiteCredito] [decimal](9, 2) NOT NULL,
	[Nome] [varchar](max) NOT NULL,
	[IsActive] [bit] NOT NULL,
 CONSTRAINT [PK_LimiteCliente] PRIMARY KEY CLUSTERED 
(
	[Codigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO

USE Servi�os
GO


CREATE TABLE [dbo].[Log](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Observacao] [varchar](max) NULL,
	[NomeEntidade] [varchar](max) NULL,
	[IdEntitade] [int] NULL,
	[Usuario] [varchar](max) NULL,
 CONSTRAINT [PK_Log] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO

USE Servi�os
GO

/*INSERINDO INSFORMA�OES A TABELA LIMITE CLIENTE*/
INSERT INTO [dbo].[LimiteCliente]
           ([LimiteCredito]
           ,[Nome]
           ,[IsActive])
     VALUES
           (2300.00
           ,'Lucas Borges'
           ,1)
GO
INSERT INTO [dbo].[LimiteCliente]
           ([LimiteCredito]
           ,[Nome]
           ,[IsActive])
     VALUES
           (5000.00
           ,'Julia Abravanel'
           ,2)
GO
INSERT INTO [dbo].[LimiteCliente]
           ([LimiteCredito]
           ,[Nome]
           ,[IsActive])
     VALUES
           (7.500.00
           ,'Rodrigo Dantes'
           ,3)
GO
INSERT INTO [dbo].[LimiteCliente]
           ([LimiteCredito]
           ,[Nome]
           ,[IsActive])
     VALUES
           (400.00
           ,'Ana Clara Santos'
           ,4)
GO
INSERT INTO [dbo].[LimiteCliente]
           ([LimiteCredito]
           ,[Nome]
           ,[IsActive])
     VALUES
           (5000.00
           ,'Marcos Vinicius Gon�alves'
           ,5)
GO
INSERT INTO [dbo].[LimiteCliente]
           ([LimiteCredito]
           ,[Nome]
           ,[IsActive])
     VALUES
           (8300.00
           ,'Julia Freitas'
           ,6)
GO
INSERT INTO [dbo].[LimiteCliente]
           ([LimiteCredito]
           ,[Nome]
           ,[IsActive])
     VALUES
           (4928.00
           ,'Kaique Nardini'
           ,7)
GO
INSERT INTO [dbo].[LimiteCliente]
           ([LimiteCredito]
           ,[Nome]
           ,[IsActive])
     VALUES
           (12600.00
           ,'Marcia Almeida'
           ,8)
GO
INSERT INTO [dbo].[LimiteCliente]
           ([LimiteCredito]
           ,[Nome]
           ,[IsActive])
     VALUES
           (133200.00
           ,'Pietro Junior'
           ,9)
GO
INSERT INTO [dbo].[LimiteCliente]
           ([LimiteCredito]
           ,[Nome]
           ,[IsActive])
     VALUES
           (13000.00
           ,'Maria Julia'
           ,10)
GO
INSERT INTO [dbo].[LimiteCliente]
           ([LimiteCredito]
           ,[Nome]
           ,[IsActive])
     VALUES
           (13700.00
           ,'Cl�o Miada'
           ,11)
GO

SELECT*FROM LimiteCliente

USE [BDServico]
GO

INSERT INTO [dbo].[Log]
           ([Observacao]
           ,[NomeEntidade]
           ,[IdEntitade]
           ,[Usuario])
     VALUES
           ('Foi Criado um novo Cliente em: 13/03/2022 as 23:50 Com um Limite de R$1200.00'
           ,'Cliente'
           ,1
           ,'Administrador Rafael')
GO

INSERT INTO [dbo].[Log]
           ([Observacao]
           ,[NomeEntidade]
           ,[IdEntitade]
           ,[Usuario])
     VALUES
           ('Foi Criado um novo Cliente em: 13/03/2022 as 23:50 Com um Limite de R$2200.00'
           ,'Cliente'
           ,2
           ,'Administrador Rafael')
GO

INSERT INTO [dbo].[Log]
           ([Observacao]
           ,[NomeEntidade]
           ,[IdEntitade]
           ,[Usuario])
     VALUES
           ('Foi Criado um novo Cliente em: 13/03/2022 as 23:50 Com um Limite de R$3200.00'
           ,'Cliente'
           ,3
           ,'Administrador Rafael')
GO

INSERT INTO [dbo].[Log]
           ([Observacao]
           ,[NomeEntidade]
           ,[IdEntitade]
           ,[Usuario])
     VALUES
           ('Foi Criado um novo Cliente em: 13/03/2022 as 23:50 Com um Limite de R$1500.00'
           ,'Cliente'
           ,4
           ,'Administrador Rafael')
GO

INSERT INTO [dbo].[Log]
           ([Observacao]
           ,[NomeEntidade]
           ,[IdEntitade]
           ,[Usuario])
     VALUES
           ('Foi Criado um novo Cliente em: 13/03/2022 as 23:50 Com um Limite de R$22200.00'
           ,'Cliente'
           ,5
           ,'Administrador Rafael')
GO

INSERT INTO [dbo].[Log]
           ([Observacao]
           ,[NomeEntidade]
           ,[IdEntitade]
           ,[Usuario])
     VALUES
           ('Foi Criado um novo Cliente em: 13/03/2022 as 23:50 Com um Limite de R$6700.00'
           ,'Cliente'
           ,6
           ,'Administrador Rafael')
GO

INSERT INTO [dbo].[Log]
           ([Observacao]
           ,[NomeEntidade]
           ,[IdEntitade]
           ,[Usuario])
     VALUES
           ('Foi Criado um novo Cliente em: 13/03/2022 as 23:50 Com um Limite de R$55200.00'
           ,'Cliente'
           ,7
           ,'Administrador Rafael')
GO

INSERT INTO [dbo].[Log]
           ([Observacao]
           ,[NomeEntidade]
           ,[IdEntitade]
           ,[Usuario])
     VALUES
           ('Foi Criado um novo Cliente em: 13/03/2022 as 23:50 Com um Limite de R$155200.00'
           ,'Cliente'
           ,8
           ,'Administrador Rafael')
GO

INSERT INTO [dbo].[Log]
           ([Observacao]
           ,[NomeEntidade]
           ,[IdEntitade]
           ,[Usuario])
     VALUES
           ('Foi Criado um novo Cliente em: 13/03/2022 as 23:50 Com um Limite de R$133200.00'
           ,'Cliente'
           ,9
           ,'Administrador Rafael')
GO

INSERT INTO [dbo].[Log]
           ([Observacao]
           ,[NomeEntidade]
           ,[IdEntitade]
           ,[Usuario])
     VALUES
           ('Foi Criado um novo Cliente em: 13/03/2022 as 23:50 Com um Limite de R$126600.00'
           ,'Cliente'
           ,10
           ,'Administrador Rafael')
GO

INSERT INTO [dbo].[Log]
           ([Observacao]
           ,[NomeEntidade]
           ,[IdEntitade]
           ,[Usuario])
     VALUES
           ('Foi Criado um novo Cliente em: 13/03/2022 as 23:50 Com um Limite de R$122200.00'
           ,'Cliente'
           ,11
           ,'Administrador Rafael')
GO