If Exists (Select * From sys.objects Where object_id = OBJECT_ID(N'dbo.prRetornarEmailsPorCliente') And type in (N'P', N'PC'))
	Drop Procedure prRetornarEmailsPorCliente
Go
Create Procedure prRetornarEmailsPorCliente
	@IdCliente	int
As
Begin
Select	E.Id,
		E.Email
	From Emails E
	Inner Join Clientes C On
		C.Id = E.IdCliente
	Where	E.Ativo = 'true'
	And		E.IdCliente = @IdCliente
	And		C.Ativo = 'true'
End