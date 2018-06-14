If Exists (Select * From sys.objects Where object_id = OBJECT_ID(N'dbo.prRetornarTodosClientes') And type in (N'P', N'PC'))
	Drop Procedure prRetornarTodosClientes
Go
Create Procedure prRetornarTodosClientes
As
Begin
	Select
		C.Id,
		C.Cnpj,
		C.Nome
	From Clientes As C
	Where C.Ativo = 'true'
End