*** Settings ***
Documentation  Cadastro com credenciais inválidas
Resource   ../resources/resource.robot

*** Test Cases ***
Cadastro Inválido
  Acessar site
  Cadastro Inválido
  Fechar pagina