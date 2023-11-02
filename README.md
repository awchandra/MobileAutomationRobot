Pre-req: 
- Install Python
- Install pip
- Install robotframework
- Install Java
- Install Node.js
- Install appium 
- Install Sample Android Login Test apk in your test device

If run this on Windows env:

Fill in udid and deviceName parameter in data.robot with your udid

Run appium server by typing this in command prompt:

appium -p 4723 --base-path /wd/hub

Open and run automation in IDE terminal by typing:

robot -d .\Results .\Tests\loginTest.robot .\Tests\registerTest.robot
