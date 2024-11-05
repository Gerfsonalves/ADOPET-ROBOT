*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${BROWSER}         chrome
${URL}             https://adopet-tau.vercel.app/
${EMAIL}           gebrialves@gmail.com
${CPF}             11122233344
${NOME}            Gebri Alves
${DATANASCIMENTO}  10101990
${PASSWORD}        1234teste
${CEP}             06852590

*** Keywords ***
Acessar site
  Open Browser  url=${URL}  browser=${BROWSER}