If Exists (Select * From sys.objects Where object_id = OBJECT_ID(N'dbo.prAtualizarComplementosEnderecoPorId') And type in (N'P', N'PC'))
	Drop Procedure prAtualizarComplementosEnderecoPorId
Go
Create Procedure prAtualizarComplementosEnderecoPorId
	@Id				int,
	@IdCliente		int				= NULL,
	@IdEndereco		int				= NULL,
	@Numero			int				= NULL,
	@Complemento	nvarchar(50)	= NULL,
	@Ativo			bit				= NULL
As
Begin
	Update ComplementosEndereco
		Set	IdCliente = ISNULL(@IdCliente, IdCliente),
			IdEndereco = ISNULL(@IdEndereco, IdEndereco),
			Numero = ISNULL(@Numero, Numero),
			Complemento = ISNULL(@Complemento, Complemento),
			Ativo = ISNULL(@Ativo, 'true')
				Where Id = @Id

	Select @Id
End