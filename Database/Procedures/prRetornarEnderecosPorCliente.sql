If Exists (Select * From sys.objects Where object_id = OBJECT_ID(N'dbo.prRetornarEnderecosPorCliente') And type in (N'P', N'PC'))
	Drop Procedure prRetornarEnderecosPorCliente
Go
Create Procedure prRetornarEnderecosPorCliente
	@IdCliente	int,
	@IdEndereco	int
As
Begin
	Select	E.Logradouro,
			E.Complemento,
			E.Bairro,
			E.Localidade,
			E.Uf,
			CE.Numero,
			CE.Complemento
	From ComplementosEndereco CE
	Inner Join Enderecos E On
		E.Id = CE.IdEndereco
	Inner Join Clientes C On
		C.Id = CE.IdCliente
	Where	CE.Ativo = 'true'
	And		C.Ativo = 'true'
	And		CE.IdCliente = @IdCliente
	And		CE.IdEndereco = @IdEndereco
End