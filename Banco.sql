
CREATE DATABASE [Serviços] 
GO

Use Serviços

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

USE Serviços
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

USE Serviços
GO

/*INSERINDO INSFORMAÇOES A TABELA LIMITE CLIENTE*/
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
           ,'Marcos Vinicius Gonçalves'
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
           ,'Cléo Miada'
           ,11)
GO

SELECT*FROM LimiteCliente



