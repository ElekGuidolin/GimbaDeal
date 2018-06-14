If Exists (Select * From sys.objects Where object_id = OBJECT_ID(N'dbo.prRetornarCliente') And type in (N'P', N'PC'))
	Drop Procedure prRetornarCliente
Go
Create Procedure prRetornarCliente
	@Id			int
As
Begin
	Select	Nome,
			Cnpj
	From Clientes
	Where	Id = @Id
	And		Ativo = 'true'
End