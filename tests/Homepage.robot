*** Settings ***
Documentation  Verificação na Home page
Resource   ../resources/resource.robot

*** Test Cases ***
Home page
  Acessar site
  Verificar home
  Fechar pagina