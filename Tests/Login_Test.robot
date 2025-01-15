*** Settings ***
Library              SeleniumLibrary


*** Variables ***
${Login_URL}              http://192.168.0.162:9696/
${Browser}                chrome

*** test cases ***
Verify Successful Login to ZPFMS
    [documentation]  This test case verifies that user is able to successfully Login to ZPFMS
    [tags]  Smoke
    Open Browser    ${LOGIN_URL}    ${BROWSER}
    Maximize Browser Window
    Login to ZPFMS
Click on Rejected Bill
Create AA Details
*** Keywords ***
Login to ZPFMS
    Wait Until Element Is Visible  id:txtUser        timeout=10
    input text              id:txtUser                Dbchavan
    Wait Until Element Is Visible  id:txtPass        timeout=10
    input text              id:txtPass              Pass@123
    Wait Until Element Is Visible  xpath://*[@id="btnLogin"]       timeout=10
    Click Element              xpath://*[@id="btnLogin"]
Click on Rejected Bill
    Click Element              xpath://*[@id="ctl01"]/div[5]/div[3]/div/div/ul/li[2]/a
    Click Element              xpath://*[@id="ctl01"]/div[5]/div[3]/div/div/ul/li[2]/ul/li[4]/a
    Wait Until Element Is Visible  xpath://*[@id="tblOutbox"]/tbody/tr[1]/td[1]/a/div      timeout=10
    Click Element              xpath://*[@id="tblOutbox"]/tbody/tr[1]/td[1]/a/div
    Wait Until Element Is Visible  xpath://*[@id="body_btnBack"]      timeout=10
    Click Element              xpath://*[@id="body_btnBack"]
    Wait Until Element Is Visible  xpath://*[@id="body_Button2"]     timeout=10
    Click Element              xpath://*[@id="body_Button2"]
Create AA Details
    Click Element             xpath://*[@id="ctl01"]/div[5]/div[3]/div/div/ul/li[1]
    Close Browser
