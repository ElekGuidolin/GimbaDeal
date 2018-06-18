If Exists (Select * From sys.objects Where object_id = OBJECT_ID(N'dbo.prIncluirComplementoDeEnderecoPorCliente') And type in (N'P', N'PC'))
	Drop Procedure prIncluirComplementoDeEnderecoPorCliente
Go
Create Procedure prIncluirComplementoDeEnderecoPorCliente
	@IdCliente		int,
	@IdEndereco		int,
	@Numero			int,
	@Complemento	nvarchar(50)
As
Begin
	Insert Into ComplementosEndereco(IdCliente, IdEndereco, Numero, Complemento, Ativo)
	Values(@IdCliente, @IdEndereco, @Numero, @Complemento,'true')

	Select Id, IdCliente, IdEndereco, Numero, Complemento, Ativo From ComplementosEndereco Where Id = @@IDENTITY
End