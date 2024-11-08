*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${BROWSER}          chrome
${URL}              https://adopet-tau.vercel.app/
${EMAIL}            gebrialves@gmail.com
${CPF}              11122233344
${NOME}             Gebri Alves
${DATANASCIMENTO}   10101990
${PASSWORD}         1234Teste
${CEP}              06852590

${EMAILINVALID}     gebrialves.gmail.com
${PASSWORDINVALID}  1234


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

Cadastro Inválido
  Execute JavaScript             document.querySelector("a[href='/cadastro']").click();
  Input Text                     id:name  text=Joãozinho Silvaaaaaaaaaaaaaaaaaaaaaaaaa
  Input Text                     id:email  ${EMAILINVALID}
  Input Text                     id:pass-create  ${PASSWORDINVALID}
  Input Text                     id:pass-confirm  text=4567
  Scroll Element Into View       xpath=//button[@type='submit' and text()='Cadastrar']
  Click Element                  xpath=//button[@type='submit' and text()='Cadastrar']

  Element Should Be Visible      xpath://p[@class='error' and text()='O número máximo de caracteres é 25']
  Element Should Be Visible      xpath://p[@class='error' and text()='Por favor, verifique o email digitado']
  Element Should Be Visible      xpath://p[@class='error' and text()='A senha deve conter pelo menos uma letra maiúscula, um número e ter entre 6 e 15 caracteres']
  Element Should Be Visible      xpath://p[@class='error' and text()='As senhas não batem']

Login inválido
  Execute JavaScript             document.querySelector("a[href='/login']").click();
  Input Text                     id:email  ${EMAILINVALID}
  Input Text                     id:pass  ${PASSWORDINVALID}
  Click Element                  xpath=//button[@type='submit' and text()='Entrar']
  Element Should Be Visible      xpath://p[@class='error' and text()='Por favor, verifique o email digitado']
  Element Should Be Visible      xpath://p[@class='error' and text()='A senha deve conter pelo menos uma letra maiúscula, um número e ter entre 6 e 15 caracteres']

Botão de adoção
  Execute JavaScript             document.querySelector("a[href='/home']").click();

Falar com responsável
  Execute JavaScript               document.querySelector("a[href='/home']").click();
  Wait Until Element Is Visible    xpath:(//a[@class='card__contact'])[2]
  Click Element                    xpath:(//a[@class='card__contact'])[2]