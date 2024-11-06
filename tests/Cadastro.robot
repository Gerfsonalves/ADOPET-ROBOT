*** Settings ***
Documentation  Cadastro de usuário 
Resource   ../resources/resource.robot

*** Test Cases ***
Cadastro
  Acessar site
  Cadastro
  Fechar pagina