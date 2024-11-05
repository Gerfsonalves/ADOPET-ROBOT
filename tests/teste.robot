*** Settings ***
Documentation  Teste exemplo
Resource   ../resources/resource.robot

*** Test Cases ***
Home page
  Acessar site
  Verificar home
  Fechar pagina

Cadastro
  Acessar site
  Cadastro
  Fechar pagina