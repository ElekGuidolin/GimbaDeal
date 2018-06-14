If Exists (Select * From sys.objects Where object_id = OBJECT_ID(N'dbo.prAtualizarCliente') And type in (N'P', N'PC'))
	Drop Procedure prAtualizarCliente
Go
Create Procedure prAtualizarCliente
	@Id			int,
	@Nome		nvarchar(150)	= NULL,
	@Cnpj		nchar(14)		= NULL
As
Begin
	Update Clientes
		Set Nome = ISNULL(@Nome, Nome),
			Cnpj = ISNULL(@Cnpj, Cnpj),
			Ativo = 'true'
				Where Id = @Id
End