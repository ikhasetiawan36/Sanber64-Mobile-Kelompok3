*** Settings ***
Library                AppiumLibrary

*** Variables ***


*** Keywords ***
Open Flight Application
    Open Application        remote_url=http://127.0.0.1:4723    
    ...    platformName=Android     
    ...    platformVersion=12.0    
    ...    deviceName=emulator-5554    
    ...    appPackage=com.example.myapplication    
    ...    appActivity=com.example.myapplication.MainActivity    
    ...    automationName=uiautomator2

Verify HomeScreen Appears
    Wait Until Element Is Visible    locator=//android.widget.ImageView[@resource-id="com.example.myapplication:id/imageView"]
    
Click Signin button on HomePage
    Click Element    locator=//android.widget.Button[@resource-id="com.example.myapplication:id/login"]

Verify Signin Screen Appears
    Wait Until Element Is Visible    locator=//android.widget.EditText[@resource-id="com.example.myapplication:id/username"]

Input Username
    Input Text    locator=//android.widget.EditText[@resource-id="com.example.myapplication:id/username"]    text=support@ngendigital.com
Input Password
    Input Text    locator=//android.widget.EditText[@resource-id="com.example.myapplication:id/password"]    text=abc123

Click Button login on LoginPage
    Click Element    locator=//android.widget.Button[@resource-id="com.example.myapplication:id/signIn"]

Verify Success Login and User Appears
    Wait Until Element Is Visible    locator=//android.widget.TextView[@resource-id="com.example.myapplication:id/textView"]

Click Book on HomePage
    Click Element    locator=//android.widget.Button[@resource-id="com.example.myapplication:id/book"]

Verify On BookPage
    Wait Until Element Is Visible    locator=//android.widget.TextView[@resource-id="com.example.myapplication:id/textView3"]

Click City From
    Click Element    locator=//android.widget.Spinner[@resource-id="com.example.myapplication:id/spinnerFrom"]

Choose City From
    Click Element    locator=//android.widget.TextView[@resource-id="android:id/text1" and @text="Toronto"]

Click City To
    Click Element    locator=//android.widget.Spinner[@resource-id="com.example.myapplication:id/spinnerTo"]

Choose City To
    Click Element    locator=//android.widget.TextView[@resource-id="android:id/text1" and @text="Paris"]

Click Class Dropdown
    Click Element    locator=//android.widget.Spinner[@resource-id="com.example.myapplication:id/spinnerClass"]

Choose Class
    Click Element    locator=//android.widget.TextView[@resource-id="android:id/text1" and @text="Business"]

Click Start Date
    Click Element    locator=//android.widget.TextView[@resource-id="com.example.myapplication:id/textStartDate"]

Verify Date Appears
    Wait Until Element Is Visible    locator=/hierarchy/android.widget.FrameLayout

Choose Start Date
    Click Element    locator=//android.view.View[@content-desc="02 August 2019"]

Click OK on Start Date
    Click Element    locator=//android.widget.Button[@resource-id="android:id/button1"]

Click End Date
    Click Element    locator=//android.widget.TextView[@resource-id="com.example.myapplication:id/textEndDate"]

Choose End Date
    Click Element    locator=//android.view.View[@content-desc="05 August 2019"]

Click OK on End Date
    Click Element    locator=//android.widget.Button[@resource-id="android:id/button1"]

Click Option Flight
    Click Element    locator=//android.widget.RadioButton[@resource-id="com.example.myapplication:id/radioButtonFlightHotel"]

CLick Button Book
    Click Element    locator=//android.widget.Button[@resource-id="com.example.myapplication:id/book_flight"]

Verify On PricePage
        Wait Until Element Is Visible    locator=//android.widget.FrameLayout[@resource-id="android:id/content"]/android.view.ViewGroup

Choose Price
    Click Element    locator=//android.widget.Button[@resource-id="com.example.myapplication:id/price8"]

Click Confirm Button
    Click Element    locator=//android.widget.Button[@resource-id="com.example.myapplication:id/confirm_order"]
    
Verify Success Booking
        Wait Until Element Is Visible    locator=//android.widget.CheckedTextView[@resource-id="com.example.myapplication:id/checkedTextView"]

Close Flight Application
    Close Application 

*** Test Cases ***
User Can Book Flight
    Open Flight Application
    Verify HomeScreen Appears
    Click Signin button on HomePage
    Verify Signin Screen Appears
    Input Username
    Input Password
    Click Button login on LoginPage
    Verify Success Login and User Appears
    Click Book on HomePage
    Click City From
    Verify Date Appears
    Choose City From
    Click City To
    Verify Date Appears
    Choose City To
    Click Class Dropdown
    Choose Class
    Click Start Date
    Choose Start Date
    Click OK on Start Date
    Click End Date
    Choose End Date
    Click OK on End Date
    Click Option Flight
    CLick Button Book
    Verify On PricePage
    Choose Price
    Click Confirm Button
    Verify Success Booking
    Close Flight Application


    