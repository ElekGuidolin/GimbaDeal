If Exists (Select * From sys.objects Where object_id = OBJECT_ID(N'dbo.prRetornarEnderecosCadastradosPorCep') And type in (N'P', N'PC'))
	Drop Procedure prRetornarEnderecosCadastradosPorCep
Go
Create Procedure prRetornarEnderecosCadastradosPorCep
	@Cep	nchar(8)
As
Begin
	Select	E.Logradouro,
			E.Complemento,
			E.Bairro,
			E.Localidade,
			E.Uf
	From Enderecos E
	Where E.Cep Like @Cep
End