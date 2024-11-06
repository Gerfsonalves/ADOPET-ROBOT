*** Settings ***
Documentation  Login de usuário inválido
Resource   ../resources/resource.robot

*** Test Cases ***
Login inválido
  Acessar site
  Login inválido
  Fechar pagina