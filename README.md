# Entrevista Gimba Deal

Criado utilizando Visual Studio 2017, ASP.NET Core 2.0, Angular 4, Bootstrap, entre outros componentes.

## Pendências

Devem ser preenchidos todos os campos no formulário de Incluir Cliente, senão irá incluir apenas os campos preenchidos!

Falta colocar a validação no formulário de Inclusão para todos os campos.

Incluir um component para editar-cliente.

Criar diretivas para a validação dos campos críticos, como CPF, CNPJ, etc., e implementar nos componentes conforme necessário.

## Publicação

Foram publicados no Azure tanto o banco como a aplicação. [Azure](http://entrevistadealgimba.azurewebsites.net)

## Descrição
Criei um projeto utilizando o template "Angular" do Visual Studio 2017.

Foi criada uma lista dos clientes cadastrados, e um botão que faz a exclusão lógica deste cliente utilizando uma prcedure que seta todos os campos "Ativo" para false, utilizando o Id do Cliente.

Quando o botão "Excluir" é clicado, o sistema exibe uma mensagem de confirmação, questionando o usuário se deseja realmente excluir o registro. Lembrando que o registro nunca é excluído fisicamente.

Criei também uma página para inclusão de clientes, onde todos os campos são obrigatórios, e os campos são validados no client pelo Angular.

Ao digitar um CEP, o sistema faz a busca no banco de dados local, se não retornar nenhum registro, faz uma busca no site [ViaCep](https://viacep.com.br/) para preencher automaticamente os campos referentes ao endereço, ficando a cargo do usuário apenas o número e complemento.

Se o CEP não existir no banco de dados, ao salvar o cliente, o endereço é incluído no banco local para futuras buscas.

## Authors

* **Elek Guidolin** - *Lista de projetos* - [ElekGuidolin](https://github.com/ElekGuidolin)

See also the list of guys who helped this project to come true.

[Igor Geshoski](https://www.toptal.com/angular-js/angular-4-forms-validation)

[ViaCep](https://viacep.com.br/)

[Bootstrap 3.3.7](http://getbootstrap.com/docs/3.3/)

## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details

