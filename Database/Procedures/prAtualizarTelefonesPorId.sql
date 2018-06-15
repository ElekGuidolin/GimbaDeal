If Exists (Select * From sys.objects Where object_id = OBJECT_ID(N'dbo.prAtualizarTelefonesPorId') And type in (N'P', N'PC'))
	Drop Procedure prAtualizarTelefonesPorId
Go
Create Procedure prAtualizarTelefonesPorId
	@Id				int,
	@IdTipoTelefone	tinyint			= NULL,
	@IdCliente		int				= NULL,
	@Ddd			nchar(2)		= NULL,
	@Numero			nvarchar(9)		= NULL,
	@Ativo			bit				= NULL
As
Begin
	Update Telefones
		Set	IdTipoTelefone = ISNULL(@IdTipoTelefone, IdTipoTelefone),
			IdCliente = ISNULL(@IdCliente, IdCliente),
			Ddd = ISNULL(@Ddd, Ddd),
			Numero = ISNULL(@Numero, Numero),
			Ativo = ISNULL(@Ativo, 'true')
				Where Id = @Id

	Select @Id
End