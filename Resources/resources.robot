*** Settings ***
Resource               importer.robot

*** Keywords ***
Open Android Apps
    [Documentation]                 Fill in udid and deviceName parameter in data.robot with your udid
    Open Application                ${appiumServer}
    ...                             udid=${udid}
    ...                             platformName=${platformName}
    ...                             automationName=${automationName}
    ...                             deviceName=${udid}
    ...                             appPackage=${appPackage}
    ...                             appActivity=${appPackageActivity}
    ...                             autoGrantPermissions=${True}
    Sleep                           3

Close Apps
    Close Application