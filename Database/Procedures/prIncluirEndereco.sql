If Exists (Select * From sys.objects Where object_id = OBJECT_ID(N'dbo.prIncluirEndereco') And type in (N'P', N'PC'))
	Drop Procedure prIncluirEndereco
Go
Create Procedure prIncluirEndereco
	@Cep			nchar(8),
	@Logradouro		nvarchar(200),
	@Complemento	nvarchar(20),
	@Bairro			nvarchar(100),
	@Localidade		nvarchar(100),
	@Uf				nchar(2)
As
Begin
	Insert Into Enderecos (Cep, Logradouro, Complemento, Bairro, Localidade, Uf)
	Values (@Cep, @Logradouro, @Complemento, @Bairro, @Localidade, @Uf)

	Select Id, Cep, Logradouro, Complemento, Bairro, Localidade, Uf From Enderecos Where Id = @@IDENTITY
End