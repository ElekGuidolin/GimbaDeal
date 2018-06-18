If Exists (Select * From sys.objects Where object_id = OBJECT_ID(N'dbo.prIncluirSocioPorCliente') And type in (N'P', N'PC'))
	Drop Procedure prIncluirSocioPorCliente
Go
Create Procedure prIncluirSocioPorCliente
	@IdCliente	int,
	@Nome		nvarchar(150),
	@Cpf		nchar(11)
As
Begin
	Insert Into Socios
	Values(@Nome, @Cpf, @IdCliente, 'true')

	Select Id, Nome, Cpf, IdCliente, Ativo From Socios Where Id = @@IDENTITY
End