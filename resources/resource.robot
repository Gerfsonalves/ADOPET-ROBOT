*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${BROWSER}         chrome
${URL}             https://adopet-tau.vercel.app/
${EMAIL}           gebrialves@gmail.com
${CPF}             11122233344
${NOME}            Gebri Alves
${DATANASCIMENTO}  10101990
${PASSWORD}        1234Teste
${CEP}             06852590

*** Keywords ***
Acessar site
  Open Browser  url=${URL}  browser=${BROWSER}
  Maximize Browser Window

Verificar home
  Element Should Be Visible  css:.header__home
  Element Should Be Visible  css:.header__message
  Element Should Be Visible  xpath=//h3[text()='Boas-vindas!']
  Element Should Be Visible  xpath=//a[text()='Ver pets disponíveis para adoção']

Fechar pagina
  Close Browser

Cadastro
  Execute JavaScript             document.querySelector("a[href='/cadastro']").click();

  Input Text                     id:name  ${NOME}
  Input Text                     id:email  ${EMAIL}
  Input Text                     id:pass-create  ${PASSWORD}
  Input Text                     id:pass-confirm  ${PASSWORD}
  Scroll Element Into View       xpath=//button[@type='submit' and text()='Cadastrar']
  Click Element                  xpath=//button[@type='submit' and text()='Cadastrar']

Login
  Execute JavaScript             document.querySelector("a[href='/login']").click();
  Input Text                     id:email  ${EMAIL}
  Input Text                     id:pass  ${PASSWORD}
  Click Element                  xpath=//button[@type='submit' and text()='Entrar']