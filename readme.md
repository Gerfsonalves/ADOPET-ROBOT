<div align="center"><h1>
Projeto de Testes Automatizados - Adopet

<h2>Este projeto utiliza Robot Framework e SeleniumLibrary para realizar testes automatizados na plataforma Adopet. O objetivo é validar o funcionamento de funcionalidades críticas como cadastro, login, e navegação na aplicação.</h2>

<h3><b>Casos de Teste</h3></b>
</div align="center">
<b>1. Acessar Site e Verificar Elementos da Home</b><br>
Este teste abre o navegador e acessa a URL especificada, verificando a visibilidade dos elementos principais da página inicial, incluindo a barra de navegação e a seção de boas-vindas.<br><br>

<b>2. Cadastro</b><br>
Realiza um cadastro com informações válidas, preenchendo os campos de nome, e-mail e senha, e confirmando o cadastro.<br>

<b>3. Login</b><br>
Executa o fluxo de login com e-mail e senha válidos e valida se o usuário consegue acessar a área interna da aplicação.<br>

<b>4. Cadastro Inválido</b><br>
Tenta realizar um cadastro com dados incorretos para validar as mensagens de erro de validação.<br>
<b>Esse teste verifica:</b><br>
Limite de caracteres no campo de nome<br>
E-mail em formato inválido<br>
Senha que não atende aos requisitos de complexidade<br>
Senhas que não correspondem<br>

<b>5. Login Inválido</b><br>
Realiza uma tentativa de login com e-mail e senha incorretos para validar as mensagens de erro na tela de login.<br>

<b>6. Botão de Adoção</b><br>
Verifica o redirecionamento da página inicial para a seção de pets disponíveis para adoção ao clicar no botão "Ver pets disponíveis para adoção".<br>

<b>7. Falar com Responsável</b><br>
Clica no segundo card na seção de adoção para acionar a funcionalidade "Falar com responsável" e verifica se a interação ocorre conforme esperado.