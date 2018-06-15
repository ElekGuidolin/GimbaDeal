If Exists (Select * From sys.objects Where object_id = OBJECT_ID(N'dbo.prAtualizarEmailPorId') And type in (N'P', N'PC'))
	Drop Procedure prAtualizarEmailPorId
Go
Create Procedure prAtualizarEmailPorId
	@Id			int,
	@IdCliente	int				= NULL,
	@Email		nvarchar(150)	= NULL,
	@Ativo		bit				= NULL
As
Begin
	Update Emails
		Set Email = ISNULL(@Email, Email),
			IdCliente = ISNULL(@IdCliente, IdCliente),
			Ativo = ISNULL(@Ativo, 'true')
				Where Id = @Id

	Select @Id
End