If Exists (Select * From sys.objects Where object_id = OBJECT_ID(N'dbo.prIncluirTelefonePorCliente') And type in (N'P', N'PC'))
	Drop Procedure prIncluirTelefonePorCliente
Go
Create Procedure prIncluirTelefonePorCliente
	@IdTipoTelefone	int,
	@Ddd			int,
	@Numero			nvarchar(9),
	@IdCliente		int
As
Begin
	Insert Into Telefones(IdTipoTelefone, Ddd, Numero, IdCliente, Ativo)
	Values (@IdTipoTelefone, @Ddd, @Numero, @IdCliente, 'true')

	Select	T.Id As Id
	,		T.IdTipoTelefone As IdTipoTelefone
	,		TT.Nome As 'NomeTipoTelefone'
	,		T.Ddd As Ddd
	,		T.Numero As Numero
	,		T.IdCliente As IdCliente
	,		T.Ativo As Ativo
		From Telefones T
			Inner Join TiposTelefone TT On
				TT.Id = T.IdTipoTelefone
			Where T.Id = @@IDENTITY
End