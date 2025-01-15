*** Settings ***
Library       SeleniumLibrary


*** Variables ***
${Login_URL}       http://192.168.0.162:9696/Login.aspx
${Browser}         chrome

*** test cases ***
Administrative Approval Creation
   [documentation]  This test case verify creation of AA Details
   [tags]  Regression
   Open Browser     ${Login_URL}      ${Browser}
   Maximize Browser Window
   Login with Maker
   Create AA Details

*** Keywords ***
Login with Maker
   Wait Until Element Is Visible  id:txtUser        timeout=10
   input text              id:txtUser                Dbchavan
   Wait Until Element Is Visible  id:txtPass        timeout=10
   input text              id:txtPass              Pass@123
   Wait Until Element Is Visible  xpath://*[@id="btnLogin"]       timeout=10
   Click Element              xpath://*[@id="btnLogin"]
Create AA Details
    Click Element             xpath://*[@id="ctl01"]/div[5]/div[3]/div/div/ul/li[1]/a
    Click Element             xpath://*[@id="ctl01"]/div[5]/div[3]/div/div/ul/li[1]/ul/li[1]/ul/li[1]/a
