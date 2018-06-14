If Exists (Select * From sys.objects Where object_id = OBJECT_ID(N'dbo.prExcluirComplementosEnderecoPorCliente') And type in (N'P', N'PC'))
	Drop Procedure prExcluirComplementosEnderecoPorCliente
Go
Create Procedure prExcluirComplementosEnderecoPorCliente
	@IdCliente		int
As
Begin
	Update ComplementosEndereco
		Set Ativo = 'false'
			Where IdCliente = @IdCliente
End