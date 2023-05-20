Este repositório contém um projeto de controle escolar desenvolvido durante o curso Programador Web do Senac Catalão Goiás, e contém a API desenvolvida em Node.js para o front em https://github.com/guilhermegf/Front-Vue.Js-Curso-Programador-Web-Senac. A API utiliza o banco de dados MySQL e é construída com o framework Express. Além disso, conta com a implementação do JWT (JSON Web Token) para autenticação de usuários.

Recursos principais:

Manipulação de tabelas: A API permite a criação, leitura, atualização e exclusão de informações nas tabelas de alunos, cursos, matrículas e usuários. Essas operações são realizadas através de endpoints bem definidos e seguros.
Autenticação: O sistema de autenticação da API utiliza o JWT, que gera tokens de acesso para os usuários autenticados. Esses tokens são armazenados na tabela "token" e são utilizados para autorizar o acesso a recursos protegidos da API.
Integração com MySQL: A API estabelece conexão com um banco de dados MySQL, onde são armazenados os dados relacionados aos alunos, cursos, matrículas e usuários. As operações de consulta e manipulação dos dados são realizadas de forma eficiente e segura.
Tecnologias utilizadas:

Node.js: Plataforma de desenvolvimento para a execução de código JavaScript no servidor.
Express: Framework Node.js utilizado para criar APIs RESTful de forma simples e eficiente.
MySQL: Sistema de gerenciamento de banco de dados relacional.
JWT: Biblioteca para geração e validação de tokens de autenticação baseados em JSON.
Instruções de instalação:

Clone o repositório para o seu ambiente local.
Certifique-se de ter o Node.js e o MySQL instalados em sua máquina.
Execute o comando "npm install" para instalar as dependências do projeto.
Configure as informações de conexão com o banco de dados no arquivo de configuração correspondente.
Execute o comando "npm start" para iniciar a API.
Acesse os endpoints definidos para interagir com a API e utilizar os recursos disponíveis.
Esse projeto oferece uma API robusta e segura para o controle escolar, permitindo a manipulação e consulta de dados relacionados a alunos, cursos, matrículas e usuários. Sinta-se à vontade para explorar, contribuir e personalizar de acordo com suas necessidades. Entre em contato com o desenvolvedor para obter mais informações ou esclarecer dúvidas adicionais.
