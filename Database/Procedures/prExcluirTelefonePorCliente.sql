If Exists (Select * From sys.objects Where object_id = OBJECT_ID(N'dbo.prExcluirTelefonePorCliente') And type in (N'P', N'PC'))
	Drop Procedure prExcluirTelefonePorCliente
Go
Create Procedure prExcluirTelefonePorCliente
	@IdCliente		int
As
Begin
	Update Telefones
		Set Ativo = 'false'
			Where IdCliente = @IdCliente
End