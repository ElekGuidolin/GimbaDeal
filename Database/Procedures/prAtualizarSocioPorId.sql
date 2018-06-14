If Exists (Select * From sys.objects Where object_id = OBJECT_ID(N'dbo.prAtualizarSocioPorId') And type in (N'P', N'PC'))
	Drop Procedure prAtualizarSocioPorId
Go
Create Procedure prAtualizarSocioPorId
	@Id			int,
	@IdCliente	int				= NULL,
	@Nome		nvarchar(150)	= NULL,
	@Cpf		nchar(11)		= NULL
As
Begin
	Update Socios
		Set Nome = ISNULL(@Nome, Nome),
			Cpf = ISNULL(@Cpf, Cpf),
			IdCliente = ISNULL(@IdCliente, IdCliente),
			Ativo = 'true'
				Where Id = @Id
End