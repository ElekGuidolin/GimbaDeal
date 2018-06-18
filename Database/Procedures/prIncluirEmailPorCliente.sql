If Exists (Select * From sys.objects Where object_id = OBJECT_ID(N'dbo.prIncluirEmailPorCliente') And type in (N'P', N'PC'))
	Drop Procedure prIncluirEmailPorCliente
Go
Create Procedure prIncluirEmailPorCliente
	@IdCliente	int,
	@Email		nvarchar(150)
As
Begin
	Insert Into Emails(Email, IdCliente, Ativo)
	Values (@Email, @IdCliente, 'true')

	Select Id, Email, IdCliente, Ativo From Emails Where Id = @@IDENTITY
End