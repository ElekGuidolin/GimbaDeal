If Exists (Select * From sys.objects Where object_id = OBJECT_ID(N'dbo.prIncluirTelefonePorCliente') And type in (N'P', N'PC'))
	Drop Procedure prIncluirTelefonePorCliente
Go
Create Procedure prIncluirTelefonePorCliente
	@IdTipoTelefone	tinyint,
	@Ddd			int,
	@Numero			nvarchar(9),
	@IdCliente		int
As
Begin
	Insert Into Telefones(IdTipoTelefone, Ddd, Numero, IdCliente, Ativo)
	Values (@IdTipoTelefone, @Ddd, @Numero, @IdCliente, 'true')
End