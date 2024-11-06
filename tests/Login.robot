*** Settings ***
Documentation  Login de usuário
Resource   ../resources/resource.robot

*** Test Cases ***
Login
  Acessar site
  Login
  Fechar pagina