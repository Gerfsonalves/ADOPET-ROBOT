*** Settings ***
Documentation  Ver pets disponíveis para adoção 
Resource   ../resources/resource.robot

*** Test Cases ***
Falar com responsável de um pet
  Acessar site
  Falar com responsável
  Fechar pagina