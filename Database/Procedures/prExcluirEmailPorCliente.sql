If Exists (Select * From sys.objects Where object_id = OBJECT_ID(N'dbo.prExcluirEmailPorCliente') And type in (N'P', N'PC'))
	Drop Procedure prExcluirEmailPorCliente
Go
Create Procedure prExcluirEmailPorCliente
	@IdCliente		int
As
Begin
	Update Emails
		Set Ativo = 'false'
			Where IdCliente = @IdCliente
End