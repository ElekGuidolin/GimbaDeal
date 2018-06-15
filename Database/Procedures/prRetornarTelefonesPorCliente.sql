If Exists (Select * From sys.objects Where object_id = OBJECT_ID(N'dbo.prRetornarTelefonesPorCliente') And type in (N'P', N'PC'))
	Drop Procedure prRetornarTelefonesPorCliente
Go
Create Procedure prRetornarTelefonesPorCliente
	@IdCliente	int
As
Begin
	Select	TT.Id As 'IdTipoTelefone',
			TT.Nome As 'NomeTipoTelefone',
			T.Id,
			T.Ddd,
			T.Numero
	From Telefones T
	Inner Join TiposTelefone TT On
		TT.Id = T.IdTipoTelefone
	Inner Join Clientes C On
		C.id = T.IdCliente
	Where	T.Ativo = 'true'
	And		C.Ativo = 'true'
	And		T.IdCliente = @IdCliente
End