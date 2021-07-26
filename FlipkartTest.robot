*** Settings ***
Library  SeleniumLibrary


*** Variables ***
${Browser}    chrome
${URL}    https://www.flipkart.com/


*** Test Cases ***
Login Flipkart
    Open browser    ${URL}    ${Browser}
    Maximize Browser Window
    Open Flipkart
    GoTo Electronics
    Scroll Page
    Click Category  
    Search for Items  
    



*** Keywords ***
Open Flipkart
    input text  xpath://input[@class='_2IX_2- VJZDxU']  9334113534
    input text  xpath://input[@class='_2IX_2- _3mctLh VJZDxU']  Flipkart@12
    click element    xpath://button[@class='_2KpZ6l _2HKlqd _3AWRsL']
    sleep     5
GoTo Electronics
    #Wait Until Element Is Visible    xpath=//div[contains(text(),'Electronics')]

    click element    xpath://img[@alt='Electronics']
    sleep    5
    
Scroll Page
    #execute javascript    window.scrollTo(0,1500)
    scroll element into view    xpath://div[@id='container']/div[1]/div[3]/div[12]/div[1]/div[1]/a[1]/div[1]/img[2]
    sleep   3
Click Category        
    click element    xpath://div[@id='container']/div[1]/div[3]/div[12]/div[1]/div[1]/a[1]/div[1]/img[2]
    sleep    2
Search for Items
    scroll element into view    xpath://div[@id='container']/div[1]/div[3]/div[1]/div[2]/div[5]/div[1]/div[2]/div[1]/a[1]/div[1]/div[1]/div[1]/img[1]
    click element    xpath://div[@id='container']/div[1]/div[3]/div[1]/div[2]/div[5]/div[1]/div[2]/div[1]/a[1]/div[1]/div[1]/div[1]/img[1]
     sleep    2
#Add to Cart
   
   # Click Element    xpath://button[normalize-space()='ADD TO CART']








*** Keywords ***
