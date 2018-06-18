If Exists (Select * From sys.objects Where object_id = OBJECT_ID(N'dbo.prExcluirCliente') And type in (N'P', N'PC'))
	Drop Procedure prExcluirCliente
Go
Create Procedure prExcluirCliente
	@IdCliente		int
As
Begin

	Declare @Erro int
	Begin Transaction

	EXEC prExcluirSocioPorCliente @IdCliente

	EXEC prExcluirEmailPorCliente @IdCliente

	EXEC prExcluirTelefonePorCliente @IdCliente

	EXEC prExcluirComplementosEnderecoPorCliente @IdCliente

	Update Clientes
		Set Ativo = 'false'
			Where Id = @IdCliente
	
	Set @Erro = @@ERROR

	If(@Erro = 0)
		Commit Transaction
	Else
		Rollback Transaction

	Select Id, Nome, Cnpj, Ativo From Clientes Where Id = @IdCliente
End