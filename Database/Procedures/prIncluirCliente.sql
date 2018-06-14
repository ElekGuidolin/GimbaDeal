If Exists (Select * From sys.objects Where object_id = OBJECT_ID(N'dbo.prIncluirCliente') And type in (N'P', N'PC'))
	Drop Procedure prIncluirCliente
Go
Create Procedure prIncluirCliente
	@Nome	nvarchar(200),
	@Cnpj	nchar(14)
As
Begin
	Insert Into Clientes(Nome, Cnpj, Ativo)
	Values (@Nome, @Cnpj, 'true')

	Select @@IDENTITY
End