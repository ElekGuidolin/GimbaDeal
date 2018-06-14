If Exists (Select * From sys.objects Where object_id = OBJECT_ID(N'dbo.prRetornarSociosPorCliente') And type in (N'P', N'PC'))
	Drop Procedure prRetornarSociosPorCliente
Go
Create Procedure prRetornarSociosPorCliente
	@IdCliente	Int
As
Begin
	Select	S.Id,
			S.Nome,
			S.Cpf
	From Socios S
	Where	S.Ativo = 'true'
	And		S.IdCliente = @IdCliente
End