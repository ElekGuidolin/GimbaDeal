If Exists (Select * From sys.objects Where object_id = OBJECT_ID(N'dbo.prExcluirSocioPorCliente') And type in (N'P', N'PC'))
	Drop Procedure prExcluirSocioPorCliente
Go
Create Procedure prExcluirSocioPorCliente
	@IdCliente		int
As
Begin
	Update Socios
		Set Ativo = 'false'
			Where IdCliente = @IdCliente
End